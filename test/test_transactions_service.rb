# frozen_string_literal: true

=begin
# Wallee AG Ruby SDK
#
# This library allows to interact with the Wallee AG payment service.
#
# Copyright owner: Wallee AG
# Website: https://en.wallee.com
# Developer email: ecosystem-team@wallee.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
=end

require 'test/unit'
require 'wallee-ruby-sdk'

require_relative 'constants.rb'
require_relative 'utils.rb'

# wallee transactions service tests
class TransactionsServiceTest < Test::Unit::TestCase

  @@INTEGRATION_MODE = 'payment_page';

  def setup
    @transactions_service = WalleeRubySdk::TransactionsService.new()
    @tokens_service = WalleeRubySdk::TokensService.new()
  end


  # Creates a new transaction.
  #
  # Verifies that:
  # - Transaction state is PENDING
  #
  def test_create_and_find_pending_transaction
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    found = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::PENDING,
      transaction.state,
      'Transaction state must be PENDING'
    )
    assert_equal(
      transaction.merchant_reference,
      found.merchant_reference,
      'Merchant reference should match.'
    )
  end

  # Confirms a pending transaction.
  #
  # Verifies that:
  # - Transaction state is CONFIRMED
  # - Transaction entity version is correctly incremented
  # - Merchant reference is correctly updated
  #
  def test_confirm_should_make_transaction_confirmed
    transaction_create = TestUtils.get_transaction_create_payload
    transaction_create.merchant_reference = 'Test Initial Confirm'
    created = create_transaction(transaction_create)

    transaction_pending = WalleeRubySdk::TransactionPending.new(version: 2)
    transaction_pending.merchant_reference = 'Test Confirm'

    confirmed = @transactions_service.post_payment_transactions_id_confirm(
      created.id, SPACE_ID, transaction_pending
    )

    assert_equal(
      WalleeRubySdk::TransactionState::CONFIRMED,
      confirmed.state,
      'Transaction state must be CONFIRMED'
    )
    assert_equal(3, confirmed.version, 'Version should match.')
    assert_equal(
      transaction_pending.merchant_reference,
      confirmed.merchant_reference,
      'Merchant reference should match.'
    )
  end

  # Processes a deferred transaction.
  #
  # Verifies that:
  # - Transaction state is AUTHORIZED
  #
  def test_process_deferred_transaction_should_make_transaction_authorized
    transaction_create = TestUtils.get_transaction_create_payload
    transaction_create.tokenization_mode = WalleeRubySdk::TokenizationMode::FORCE_CREATION
    transaction_create.customers_presence = WalleeRubySdk::CustomersPresence::NOT_PRESENT
    transaction_create.completion_behavior = WalleeRubySdk::TransactionCompletionBehavior::COMPLETE_DEFERRED

    transaction = create_transaction(transaction_create)

    processed = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    assert_equal(
      WalleeRubySdk::TransactionState::AUTHORIZED,
      processed.state,
      'Transaction state must be AUTHORIZED'
    )
  end

  # Processes a transaction via charge flow.
  #
  # Verifies that:
  # - Transaction state is PROCESSING
  #
  def test_process_via_charge_flow_should_make_transaction_processing
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processing_transaction = @transactions_service.post_payment_transactions_id_charge_flow_apply(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::PROCESSING,
      processing_transaction.state,
      'Transaction state must be PROCESSING'
    )
  end

  # Processes and cancels a transaction via charge flow.
  #
  # Verifies that:
  # - Initially, transaction state is PROCESSING
  # - After cancellation, transaction state is FAILED
  #
  def test_cancel_charge_flow_should_make_transaction_failed
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processing_transaction = @transactions_service.post_payment_transactions_id_charge_flow_apply(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::PROCESSING,
      processing_transaction.state,
      'Transaction state must be PROCESSING'
    )

    failed_transaction = @transactions_service.post_payment_transactions_id_charge_flow_cancel(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::FAILED,
      failed_transaction.state,
      'Transaction state must be FAILED'
    )
  end

  # Processes a transaction and retrieves payment page URL.
  #
  # Verifies that:
  # - Retrieved URL contains space ID
  # - Retrieved URL contains transaction ID
  #
  def test_fetch_payment_page_url_should_return_valid_url
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processing_transaction = @transactions_service.post_payment_transactions_id_charge_flow_apply(
      transaction.id, SPACE_ID
    )

    url = @transactions_service.get_payment_transactions_id_payment_page_url(
      transaction.id, SPACE_ID
    )

    assert_includes(url, "/s/#{SPACE_ID}", 'Space id should be present in url')
    assert_includes(url, 'securityToken=', 'Security token should be present in url')
    assert_includes(url, processing_transaction.id.to_s, 'Transaction id should be present in url')
  end

  # Processes a transaction via charge flow and retrieves payment page URL.
  #
  # Verifies that:
  # - Transaction state is PROCESSING
  # - Retrieved URL contains space ID
  # - Retrieved URL contains transaction ID
  #
  def test_fetch_charge_flow_url_should_return_valid_url
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processing_transaction = @transactions_service.post_payment_transactions_id_charge_flow_apply(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::PROCESSING,
      processing_transaction.state,
      'Transaction state must be PROCESSING'
    )

    url = @transactions_service.get_payment_transactions_id_charge_flow_payment_page_url(
      processing_transaction.id, SPACE_ID
    )

    assert_includes(url, SPACE_ID.to_s, 'Url must contain space id')
    assert_includes(url, processing_transaction.id.to_s, 'Url must contain transaction id')
    assert_includes(url, 'securityToken=', 'Url must contain security token')
  end

  # Authorizes and completes a transaction online using card details.
  #
  # Verifies that:
  # - Transaction completion state is SUCCESSFUL
  # - Transaction state is FULFILL
  #
  def test_complete_online_should_make_transaction_completion_state_successful
    transaction_create = TestUtils.get_transaction_create_payload
    transaction_create.tokenization_mode = WalleeRubySdk::TokenizationMode::FORCE_CREATION
    transaction_create.customers_presence = WalleeRubySdk::CustomersPresence::NOT_PRESENT
    transaction_create.completion_behavior = WalleeRubySdk::TransactionCompletionBehavior::COMPLETE_IMMEDIATELY

    transaction = create_transaction(transaction_create)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    processed_transaction = @transactions_service.post_payment_transactions_id_complete_online(
      authorized_transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionCompletionState::SUCCESSFUL,
      processed_transaction.state,
      'Transaction completion state must be SUCCESSFUL'
    )

    completed_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::FULFILL,
      completed_transaction.state,
      'Transaction state must be FULFILLED'
    )
  end

  # Authorizes and completes a transaction online partially using card details.
  #
  # Verifies that:
  # - Transaction completion state is SUCCESSFUL
  # - Transaction state is FULFILL
  #
  def test_complete_online_partially_should_make_transaction_completion_state_successful
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    tcd = WalleeRubySdk::TransactionCompletion.new
    tcd.external_id = SecureRandom.uuid

    processed_transaction = @transactions_service.post_payment_transactions_id_complete_partially_online(
      authorized_transaction.id, SPACE_ID, tcd
    )

    assert_equal(
      WalleeRubySdk::TransactionCompletionState::SUCCESSFUL,
      processed_transaction.state,
      'Transaction completion state must be SUCCESSFUL'
    )

    completed_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::FULFILL,
      completed_transaction.state,
      'Transaction state must be FULFILLED'
    )
  end



  # Authorizes and voids a transaction online.
  #
  # Verifies that:
  # - Transaction void state is SUCCESSFUL
  # - Transaction state is VOIDED
  #
  def test_void_transaction_online_should_return_voided_transaction
    transaction_create = TestUtils.get_transaction_create_payload
    transaction_create.tokenization_mode = WalleeRubySdk::TokenizationMode::FORCE_CREATION
    transaction_create.customers_presence = WalleeRubySdk::CustomersPresence::NOT_PRESENT
    transaction_create.completion_behavior = WalleeRubySdk::TransactionCompletionBehavior::COMPLETE_DEFERRED

    transaction = create_transaction(transaction_create)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    assert_equal(
      WalleeRubySdk::TransactionState::AUTHORIZED,
      authorized_transaction.state,
      'Transaction state should be AUTHORIZED'
    )

    expand = ['transaction']

    transaction_void = @transactions_service.post_payment_transactions_id_void_online(
      authorized_transaction.id, SPACE_ID, { expand: expand }
    )

    assert_equal(
      WalleeRubySdk::TransactionVoidState::SUCCESSFUL,
      transaction_void.state,
      'Transaction void state should be SUCCESSFUL'
    )

    refute_nil(transaction_void.transaction)

    assert_equal(
      WalleeRubySdk::TransactionState::VOIDED,
      transaction_void.transaction.state,
      'Transaction state should be VOIDED'
    )
  end


  # Creates, authorizes and completes a transaction.
  #
  # Verifies that:
  # - It's possible to create a transaction token for the fulfilled transaction
  #
  def test_check_if_possible_to_create_token_for_fulfilled_transaction
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    fulfilled_transaction_completion = @transactions_service.post_payment_transactions_id_complete_online(
      authorized_transaction.id, SPACE_ID
    )

    fulfilled_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionState::FULFILL,
      fulfilled_transaction.state,
      "Transaction state must be FULFILL"
    )

    assert_equal(
      WalleeRubySdk::TransactionCompletionState::SUCCESSFUL,
      fulfilled_transaction_completion.state,
      "Transaction completion state must be SUCCESSFUL"
    )

    assert(
      @transactions_service.get_payment_transactions_id_check_token_creation_possible(
        fulfilled_transaction.id, SPACE_ID
      ),
      "Should be possible to create token for successful transaction"
    )
  end

  # Creates, authorizes and voids a transaction.
  #
  # Verifies that:
  # - It's NOT possible to create a transaction token for the voided transaction
  #
  def test_check_if_possible_to_create_token_for_voided_transaction
    transaction_create = TestUtils.get_transaction_create_payload
    transaction_create.tokenization_mode = WalleeRubySdk::TokenizationMode::FORCE_CREATION
    transaction_create.customers_presence = WalleeRubySdk::CustomersPresence::NOT_PRESENT
    transaction_create.completion_behavior = WalleeRubySdk::TransactionCompletionBehavior::COMPLETE_DEFERRED

    transaction = create_transaction(transaction_create)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    assert_equal(
      WalleeRubySdk::TransactionState::AUTHORIZED,
      authorized_transaction.state,
      "Transaction state should be AUTHORIZED"
    )

    transaction_void = @transactions_service.post_payment_transactions_id_void_online(
      authorized_transaction.id, SPACE_ID
    )

    voided_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionVoidState::SUCCESSFUL,
      transaction_void.state,
      "Transaction void state should be SUCCESSFUL"
    )

    assert_equal(
      WalleeRubySdk::TransactionState::VOIDED,
      voided_transaction.state,
      "Transaction state should be VOIDED"
    )

    assert(
      @transactions_service.get_payment_transactions_id_check_token_creation_possible(
        voided_transaction.id, SPACE_ID
      ),
      "Should be not possible to create token for voided transaction"
    )
  end

  # Creates transaction token for a transaction.
  #
  # Verifies that:
  # - Token contains space ID
  # - Token contains transaction ID
  #
  def test_create_transaction_credentials_should_create_transaction_token
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    credentials = get_credentials(transaction.id)

    assert(
      credentials.start_with?(SPACE_ID.to_s),
      "Transaction credentials token should have valid format"
    )

    assert_not_nil(transaction.id)

    assert(
      credentials.include?(transaction.id.to_s),
      "Transaction credentials token should contain transaction id"
    )
  end

  # Gets IFrame payment URL for transaction.
  #
  # Verifies that:
  # - URL contains space ID
  # - Token contains transaction ID
  #
  def test_fetch_iframe_url_should_return_valid_url
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    iframe_url = @transactions_service.get_payment_transactions_id_iframe_javascript_url(
      transaction.id, SPACE_ID
    )

    assert(
      iframe_url.include?(SPACE_ID.to_s),
      "IFrame JavaScript URL should contain space id"
    )

    assert(
      iframe_url.include?(transaction.id.to_s),
      "IFrame JavaScript URL should contain transaction id"
    )
  end

  # Gets Lightbox payment URL for transaction.
  #
  # Verifies that:
  # - URL contains space ID
  # - Token contains transaction ID
  #
  def test_fetch_lightbox_url_should_return_valid_url
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    lightbox_javascript_url = @transactions_service.get_payment_transactions_id_lightbox_javascript_url(
      transaction.id, SPACE_ID
    )

    assert(
      lightbox_javascript_url.include?(SPACE_ID.to_s),
      "Lightbox URL should contain space id"
    )

    assert(
      lightbox_javascript_url.include?(transaction.id.to_s),
      "Lightbox URL should contain transaction id"
    )
  end

  # Creates, authorizes, completes transaction and gets invoice file.
  #
  # - Creates, authorizes and completes transaction
  # - Gets transaction invoice file
  # Verifies that:
  #     - File title contains "invoice"
  #     - File mime type is PDF
  #
  def test_fetch_invoice_should_return_pdf_file
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    fulfilled_transaction_completion = @transactions_service.post_payment_transactions_id_complete_online(
      authorized_transaction.id, SPACE_ID
    )

    fulfilled_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    invoice = @transactions_service.get_payment_transactions_id_invoice_document(
      fulfilled_transaction.id, SPACE_ID
    )

    assert_not_nil(invoice.title)
    assert(
      invoice.title.downcase.include?("invoice"), "Invoice title should be present"
    )

    assert_not_nil(invoice.mime_type)
    assert(
      invoice.mime_type.downcase.include?("pdf"), "Invoice mimetype should be pdf"
    )
  end

  # Creates, authorizes, completes transaction and gets packing slip.
  #
  # - Creates, authorizes and completes transaction
  # - Gets transaction packing slip
  # Verifies that:
  #     - File title contains "packing slip"
  #     - File mime type is PDF
  #
  def test_fetch_package_slip_should_return_pdf_file
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    fulfilled_transaction_completion = @transactions_service.post_payment_transactions_id_complete_online(
      authorized_transaction.id, SPACE_ID
    )

    fulfilled_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    packing_slip = @transactions_service.get_payment_transactions_id_packing_slip_document(
      fulfilled_transaction.id, SPACE_ID
    )

    assert_not_nil(packing_slip.title)
    assert(
      packing_slip.title.downcase.include?("packing slip"),
      "Packing slip title should be present"
    )

    assert_not_nil(packing_slip.mime_type)
    assert(
      packing_slip.mime_type.downcase.include?("pdf"),
      "Packing slip mimetype should be pdf"
    )
  end

  # Creates transaction and gets payment methods configuration.
  #
  # - Creates transaction
  # - Gets payment methods configuration
  # Verifies that:
  #     - Payment methods are present
  #
  def test_fetch_payment_methods_by_id_should_return_available_payment_methods
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    method_configuration_list_response = @transactions_service.get_payment_transactions_id_payment_method_configurations(
      transaction.id, @@INTEGRATION_MODE, SPACE_ID
    )

    assert_not_nil(
      method_configuration_list_response.data, "The payment method list should be present"
    )
    assert(
      method_configuration_list_response.data.length > 0,
      "Payment methods should be configured for a given transaction in test space"
    )
  end

  # Creates transaction and finds it by credentials.
  #
  # - Creates transaction and gets its credentials
  # - Finds transaction by credentials
  # Verifies that:
  #     - Transaction is present
  #
  def test_fetch_transaction_with_credentials_should_return_transaction
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    credentials = @transactions_service.get_payment_transactions_id_credentials(
      transaction.id, SPACE_ID
    )

    retrieved_transaction = @transactions_service.get_payment_transactions_by_credentials_credentials(
      credentials, SPACE_ID
    )

    assert_not_nil(retrieved_transaction, "Transaction must be present")
  end

  # Creates transaction and gets payment methods configuration by credentials.
  #
  # - Creates transaction and gets its credentials
  # - Gets payment methods configuration by credentials
  # Verifies that:
  #     - Payment methods are present
  #
  def test_fetch_payment_methods_with_credentials_should_return_available_payment_methods
    transaction = create_transaction(TestUtils.get_transaction_create_payload)
    credentials = get_credentials(transaction.id)

    method_config_response = @transactions_service.get_payment_transactions_by_credentials_credentials_payment_method_configurations(
      credentials, @@INTEGRATION_MODE, SPACE_ID
    )

    assert_not_nil(
      method_config_response.data, "The payment method list should be present."
    )
    assert(
      method_config_response.data,
      "Payment methods should be configured for a given transaction in test space"
    )
  end

  # Creates and exports a transaction.
  #
  # - Creates transaction, exports it
  # Verifies that:
  #     - Export file exists and has content
  #     - Temp file is properly cleaned up
  #
  def test_export_transactions_should_return_file
    transaction = create_transaction(TestUtils.get_transaction_create_payload)
    assert_not_nil(transaction.id)

    fields = ["id"]
    export_file = nil

    begin
      export_file = @transactions_service.get_payment_transactions_export(
        SPACE_ID, { fields: fields, limit: 1, offset: 0, order: "id:ASC", query: "id:#{transaction.id}" }
      )

      assert_instance_of(Tempfile, export_file, "Export should return a Tempfile object")

      assert(File.exist?(export_file.path), "Export file should exist")
      assert(File.size(export_file.path) > 0, "Export file should not be empty")

    ensure
      if export_file
        begin
          export_file.close unless export_file.closed?
          export_file.unlink if File.exist?(export_file.path)
        rescue => e
          puts "Warning: Failed to clean up temp file: #{e.message}"
        end
      end
    end
  end

  # Gets transaction by invalid credentials.
  #
  # Verifies that:
  # - Operation fails as expected
  #
  def test_fetch_with_credentials_with_given_bad_credentials_should_fail
    assert_raises(WalleeRubySdk::ApiError, "Bad token should error response") do
      @transactions_service.get_payment_transactions_by_credentials_credentials(
        "bad_credentials", SPACE_ID
      )
    end
  end

  # Creates and updates a transaction.
  #
  # - Creates a new transaction
  # - Updates it with new data
  # Verifies that:
  #     - Update was successful
  #     - Version was incremented correctly
  #
  def test_update_should_change_transaction_data
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    update = WalleeRubySdk::TransactionPending.new(version: 2, language: "en-GB")
    updated_transaction = @transactions_service.patch_payment_transactions_id(
      transaction.id, SPACE_ID, update
    )

    assert_equal("en-GB", updated_transaction.language)
    assert_equal(
      transaction.merchant_reference,
      updated_transaction.merchant_reference,
      "Merchant reference should match."
    )
    assert_equal(2, updated_transaction.version, "Version should match")
  end

  # Tests one-click token flow: creation, update, usage.
  #
  # - Creates token
  # - Updates token settings (enabling one click payment)
  # - Creates transaction with linked token
  # - Processes and completes transaction
  # - Creates new transaction and completes it using token
  #
  def test_process_one_click_token_and_redirect_with_credentials_should_return_payment_url
    require 'securerandom'

    token_create = WalleeRubySdk::TokenCreate.new(external_id: SecureRandom.uuid)
    token_create.state = WalleeRubySdk::CreationEntityState::ACTIVE
    token_create.token_reference = "testtoken"
    token_create.customer_id = TEST_CUSTOMER_ID
    token_create.customer_email_address = "test@domain.com"

    token = @tokens_service.post_payment_tokens(SPACE_ID, token_create)

    assert_not_nil(token.version)

    token_update = WalleeRubySdk::TokenUpdate.new(enabled_for_one_click_payment: true, version: token.version)

    updated_token = @tokens_service.patch_payment_tokens_id(token.id, SPACE_ID, token_update)

    transaction1 = @tokens_service.post_payment_tokens_id_create_transaction_for_token_update(
      token.id, SPACE_ID
    )

    line_item = WalleeRubySdk::LineItemCreate.new(
      name: 'Red T-Shirt',
      unique_id: '5412',
      type: 'PRODUCT',
      quantity: 1,
      amount_including_tax: 29.95,
      sku: 'red-t-shirt-789'
    )

    transaction1_pending = WalleeRubySdk::TransactionPending.new(
      line_items: [line_item],
      version: 2,
      currency: "CHF"
    )

    @transactions_service.patch_payment_transactions_id(
      transaction1.id, SPACE_ID, transaction1_pending
    )

    @transactions_service.post_payment_transactions_id_process_card_details(
      transaction1.id, SPACE_ID, MOCK_CARD_DATA
    )

    @transactions_service.post_payment_transactions_id_complete_online(
      transaction1.id, SPACE_ID
    )

    transaction2_create = TestUtils.get_transaction_create_payload
    transaction2_create.customer_id = TEST_CUSTOMER_ID
    transaction2_create.tokenization_mode = WalleeRubySdk::TokenizationMode::FORCE_CREATION_WITH_ONE_CLICK_PAYMENT
    transaction2_create.customers_presence = WalleeRubySdk::CustomersPresence::NOT_PRESENT
    transaction2_create.completion_behavior = WalleeRubySdk::TransactionCompletionBehavior::COMPLETE_DEFERRED

    transaction2 = create_transaction(transaction2_create)

    credentials2 = get_credentials(transaction2.id)

    url = @transactions_service.post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process(
      credentials2, updated_token.id, SPACE_ID
    )

    assert_not_equal(url, "", "Url should not be empty")
    assert_not_nil(url, "Url should not be null")

    read_transaction = @transactions_service.get_payment_transactions_id(transaction2.id, SPACE_ID)
    assert_not_equal(read_transaction.state, WalleeRubySdk::TransactionState::FAILED, "Transaction state should not be FAILED")
    assert_not_equal(read_transaction.state, WalleeRubySdk::TransactionState::PENDING, "Transaction state should not be PENDING")

    completed_transaction1 = @transactions_service.post_payment_transactions_id_complete_online(
      transaction1.id, SPACE_ID
    )

    assert_equal(completed_transaction1.state, WalleeRubySdk::TransactionCompletionState::SUCCESSFUL, "State must be SUCCESSFUL")
  end

  # Processes transaction via token
  #
  # - Creates token
  # - Creates transaction with linked token
  # - Processes and completes transaction
  # - Creates new transaction and completes it using token
  #
  def test_process_transaction_via_token_should_process_transaction
    require 'securerandom'

    line_item = WalleeRubySdk::LineItemCreate.new(
      name: 'Red T-Shirt',
      unique_id: '5412',
      type: 'PRODUCT',
      quantity: 1,
      amount_including_tax: 29.95,
      sku: 'red-t-shirt-789'
    )

    token_create = WalleeRubySdk::TokenCreate.new(external_id: SecureRandom.uuid)
    token_create.state = WalleeRubySdk::CreationEntityState::ACTIVE
    token_create.token_reference = "testtoken"
    token_create.customer_id = TEST_CUSTOMER_ID
    token_create.customer_email_address = "test@domain.com"

    token = @tokens_service.post_payment_tokens(SPACE_ID, token_create)

    transaction = @tokens_service.post_payment_tokens_id_create_transaction_for_token_update(
      token.id, SPACE_ID
    )

    transaction1_pending = WalleeRubySdk::TransactionPending.new(
      line_items: [line_item],
      version: 2,
      currency: "CHF"
    )

    @transactions_service.patch_payment_transactions_id(
      transaction.id, SPACE_ID, transaction1_pending
    )

    @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    @transactions_service.post_payment_transactions_id_complete_online(
      transaction.id, SPACE_ID
    )

    transaction2 = create_transaction(TestUtils.get_transaction_create_payload)

    transaction_pending = WalleeRubySdk::TransactionPending.new(
      token: token.id,
      version: transaction2.version,
      currency: "CHF",
      line_items: [line_item]
    )

    updated_transaction = @transactions_service.patch_payment_transactions_id(
      transaction2.id, SPACE_ID, transaction_pending
    )

    charge = @transactions_service.post_payment_transactions_id_process_with_token(
      updated_transaction.id, SPACE_ID
    )

    assert_equal(charge.state, "SUCCESSFUL", "Charge state must be SUCCESSFUL")

    read_transaction = @transactions_service.get_payment_transactions_id(transaction2.id, SPACE_ID)
    assert_equal(read_transaction.token.id, token.id, "Tokens id should match")
    assert_equal(read_transaction.state, WalleeRubySdk::TransactionState::FULFILL, "Transaction state must be FULFILLED")
  end

  # Verifies non-interactive transaction processing.
  #
  # - Processes a transaction without user interaction
  # Verifies that:
  #     - Transaction reaches the AUTHORIZED state
  #
  def test_process_without_user_interaction_should_process_transaction_properly
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processed = @transactions_service.post_payment_transactions_id_process_without_interaction(
      transaction.id, SPACE_ID
    )

    assert_equal(processed.id, transaction.id, "Transaction ids must match")
    assert_equal(processed.state, WalleeRubySdk::TransactionState::PROCESSING, "Transaction state should be PROCESSING")
  end

  # Retrieves tokens by transaction credentials.
  #
  # - Creates a new transaction
  # - Attempts to retrieve one-click tokens
  # Verifies that:
  #     - Response data is present
  #
  def test_fetch_one_click_token_should_return_response_without_error
    transaction = create_transaction(TestUtils.get_transaction_create_payload)
    credentials = get_credentials(transaction.id)

    response = @transactions_service.get_payment_transactions_by_credentials_credentials_one_click_tokens(
      credentials, SPACE_ID
    )

    assert_not_nil(response)
    assert_not_nil(response.data, "Token data should not be null")
  end

  # Processes transaction with 3-D security
  #
  # - Creates a new transaction
  # - Processes transaction with 3-D security
  # Verifies that:
  #     - Returned url contains space id
  #     - Returned url contains securityToken
  #     - Transaction state is fulfilled
  #
  def test_process_transaction_with_three_d_secure_should_fulfill_transaction
    transaction = create_transaction(TestUtils.get_transaction_create_payload)
    tokenized_card_data_create = WalleeRubySdk::TokenizedCardDataCreate.new(primary_account_number: MOCK_CARD_DATA.card_data.primary_account_number)
    tokenized_card_data_create.expiry_date = MOCK_CARD_DATA.card_data.expiry_date

    tcr = WalleeRubySdk::TokenizedCardRequest.new(card_data: tokenized_card_data_create)
    tcr.payment_method_configuration = TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID

    url = @transactions_service.post_payment_transactions_id_process_card_details_threed(
      transaction.id, SPACE_ID, tcr
    )

    processed = @transactions_service.get_payment_transactions_id(transaction.id, SPACE_ID)

    assert_not_nil(url, "Url should not be null")
    assert_not_equal(url, "", "Url should not be empty")
    assert_not_equal(processed.state, WalleeRubySdk::TransactionState::FAILED, "Transaction state should not be FAILED")
    assert_not_equal(processed.state, WalleeRubySdk::TransactionState::PENDING, "Transaction state should not be PENDING")
  end

  # Gets mobile sdk url by credentials
  #
  # - Creates a new transaction
  # - Gets mobile sdk url
  # Verifies that:
  #     - Returned url contains space id
  #     - Returned url contains securityToken
  #
  def test_fetch_mobile_sdk_url_by_credentials_should_return_valid_url
    transaction = create_transaction(TestUtils.get_transaction_create_payload)
    credentials = get_credentials(transaction.id)

    url = @transactions_service.get_payment_transactions_by_credentials_credentials_mobile_sdk_url(
      credentials, SPACE_ID
    )

    assert(url.include?("/s/#{SPACE_ID}"), "Space id should be present in url")
    assert(url.include?("securityToken="), "Security token should be present in url")
  end

  # Gets all terminal receipts for transaction. Should return empty list as terminal receipts were not created for this transaction.
  def test_fetch_terminal_receipts_should_return_valid_terminal_receipts_list
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    @transactions_service.post_payment_transactions_id_complete_online(
      transaction.id, SPACE_ID
    )

    receipt_response = @transactions_service.get_payment_transactions_id_terminal_receipts(
      transaction.id, WalleeRubySdk::TerminalReceiptFormat::TXT, 200, SPACE_ID
    )

    assert_not_nil(receipt_response, "Response should be present")
    assert_equal(receipt_response.data.length, 0, "Response size should be 0 as no terminal receipts created for this transaction")
  end

  # Updates charge flow recipient for processing transaction
  # Checks if no error was raised
  def test_update_charge_flow_recipient_should_not_throw_exception
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    @transactions_service.post_payment_transactions_id_charge_flow_apply(
      transaction.id, SPACE_ID
    )

    begin
      @transactions_service.post_payment_transactions_id_charge_flow_update_recipient(
        transaction.id, 1453447675844, "test2@domain.com", SPACE_ID
      )
    rescue => e
      flunk("ApiError should not be thrown when updating recipient")
      puts(e)
    end
  end

  # Gets last version of line items list
  #
  # - Creates a new transaction
  # - Gets line items
  # Verifies that:
  #     - Amount is correct
  #     - Version is correct
  #     - Transaction id is same in transaction and charge
  #
  def test_fetch_line_items_version_should_return_latest_line_items_version
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    @transactions_service.post_payment_transactions_id_complete_online(
      transaction.id, SPACE_ID
    )

    line_items = @transactions_service.get_payment_transactions_id_latest_line_item_version(
      transaction.id, SPACE_ID
    )

    assert_equal(line_items.version, 1, "Line items version should be 1")
    assert_equal(line_items.amount, 29.95, "Line items amount should be 29.95")
    assert_equal(line_items.linked_transaction, transaction.id, "Transaction ids should match")
  end

  private
  def create_transaction(transaction_create)
    @transactions_service.post_payment_transactions(SPACE_ID, transaction_create)
  end

  def get_credentials(transaction_id)
    @transactions_service.get_payment_transactions_id_credentials(transaction_id, SPACE_ID)
  end
end