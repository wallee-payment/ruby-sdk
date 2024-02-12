require "test/unit"
require 'wallee-ruby-sdk'

require_relative "constants.rb"

class TestTransactionService < Test::Unit::TestCase

  class << self
    def startup
      @@transaction_service = Wallee::TransactionService.new
      
      @@card_processing_service = Wallee::CardProcessingService.new

      @@transaction_completion_service = Wallee::TransactionCompletionService.new

      @@token_service = Wallee::TokenService.new
    end
  end

  description "create() should create transaction"
  def test_create
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    assert_equal(35.2, transaction.authorization_amount)
    assert_equal(SPACE_ID, transaction.linked_space_id)
    assert_equal(Wallee::TransactionState::PENDING, transaction.state,
      "State must be PENDING")
  end

  description "confirm() should mark transaction as confirmed"
  def test_confirm
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    transaction_confirmed = @@transaction_service.confirm(SPACE_ID, transaction)

    assert_equal(Wallee::TransactionState::CONFIRMED, transaction_confirmed.state,
      "State must be CONFIRMED")
  end

  description "create() with COMPLETE_DEFERRED transaction behaviour should make transaction Authorized when we pay with card details"
  def test_create_complete_deferred
    transaction_create = get_transaction_create
    transaction_create.tokenization_mode = Wallee::TokenizationMode::FORCE_CREATION
    transaction_create.customers_presence = Wallee::CustomersPresence::NOT_PRESENT
    transaction_create.completion_behavior = Wallee::TransactionCompletionBehavior::COMPLETE_DEFERRED

    transaction = @@transaction_service.create(SPACE_ID, transaction_create)
    transaction_processed = @@card_processing_service.process(SPACE_ID, transaction.id, 
      TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)

    assert_equal(Wallee::TransactionState::AUTHORIZED, transaction_processed.state,
      "State must be AUTHORIZED")
  end

  description "create() with COMPLETE_IMMEDIATELY transaction behaviour should make transaction Fulfilled when we pay with card details"
  def test_create_complete_immediately
    transaction_create = get_transaction_create
    transaction_create.tokenization_mode = Wallee::TokenizationMode::FORCE_CREATION
    transaction_create.customers_presence = Wallee::CustomersPresence::NOT_PRESENT
    transaction_create.completion_behavior = Wallee::TransactionCompletionBehavior::COMPLETE_IMMEDIATELY

    transaction = @@transaction_service.create(SPACE_ID, transaction_create)
    transaction_processed = @@card_processing_service.process(SPACE_ID, transaction.id, 
      TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)

    assert_equal(Wallee::TransactionState::FULFILL, transaction_processed.state,
      "State must be FULFILL")
  end


  description "count() should count transactions matching given criteria"
  def test_count
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    entity_query_filter = {
      filter: Wallee::EntityQueryFilter.new({
          fieldName: "id",
          value: transaction.id,
          type: Wallee::EntityQueryFilterType::LEAF,
          operator: Wallee::CriteriaOperator::EQUALS
      })
    }

    transaction_count = @@transaction_service.count(SPACE_ID, entity_query_filter)
    assert_equal(1, transaction_count, "Transaction count should be 1")
  end

  description "create_transaction_credentials() should create valid transaction credentials token"
  def test_create_transaction_credentials
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    creds = @@transaction_service.create_transaction_credentials(SPACE_ID, transaction.id)

    assert_true(creds.start_with? SPACE_ID.to_s,
      "Transaction credentials token should have valid format")
  end

  description "fetch_payment_methods() should fetch payment methods available for the transaction"
  def test_fetch_payment_methods
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    payment_methods = @@transaction_service.fetch_payment_methods(SPACE_ID, transaction.id, "payment_page")

    assert_false(payment_methods.empty?,
      "Payment methods should be configured for a given transaction in test space")
  end

  description "read() should read transaction details"
  def test_read
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    transaction_read = @@transaction_service.read(SPACE_ID, transaction.id)

    assert_equal(transaction.id, transaction_read.id,
      "Transaction ids should match")
    assert_equal(Wallee::TransactionState::PENDING, transaction_read.state,
      "State must be PENDING")
  end

  description "read_with_credentials() should fail when credentials are bad"
  def test_read_with_credentials_for_bad_creds
    begin
      @@transaction_service.read_with_credentials("invalid_token")
    rescue => err
      assert_equal(442, err.code, "Bad token should produce 442 Unprocessable content HTTP status response")
    end
  end

  description "read_with_credentials() should read transaction when valid credentials token is provided"
  def test_read_with_credentials
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    creds = @@transaction_service.create_transaction_credentials(SPACE_ID, transaction.id)
    transaction_read = @@transaction_service.read_with_credentials(creds)

    assert_equal(transaction.id, transaction_read.id,
      "Transaction ids should match")
  end

  description "search() should find transaction by id"
  def test_search
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    entity_query = Wallee::EntityQuery.new({
      filter: Wallee::EntityQueryFilter.new({
        fieldName: "id",
        value: transaction.id,
        type: Wallee::EntityQueryFilterType::LEAF,
        operator: Wallee::CriteriaOperator::EQUALS
      })
    })

    transactions = @@transaction_service.search(SPACE_ID, entity_query)
    assert_equal(1, transactions.length, "Search should give single result")
    transactions.each { |tx| assert_equal(transaction.id, tx.id, "Transaction id must match")}
  end

  description "update() should successfully update existing transaction"
  def test_update
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    transaction.language = "en-GB"
    transaction_update = @@transaction_service.update(SPACE_ID, transaction)

    assert_equal("en-GB", transaction_update.language, "Language value must be updated")
  end

  description "process_without_user_interaction() should correctly process created transaction without need for user interaction"
  def test_process_without_user_interaction
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    transaction_processed = @@transaction_service.process_without_user_interaction(SPACE_ID, transaction.id)

    assert_equal(transaction.id, transaction_processed.id, "Transaction ids must match")
  end

  description "fetch_one_click_tokens_with_credentials() should return one-click payment tokens (if any) for provided transaction"
  def test_fetch_one_click_tokens_with_credentials_no_tokens
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)
    creds = @@transaction_service.create_transaction_credentials(SPACE_ID, transaction.id)
    tokens = @@transaction_service.fetch_one_click_tokens_with_credentials(creds)

    assert_true(tokens.size == 0, "Should be no tokens yet")
  end

  description "process_one_click_token_and_redirect_with_credentials() should create URL that can be used to authorize 2nd transaction after we have created token for 1st authorized transaction"
  def test_process_one_click_token_and_redirect_with_credentials
    transaction1_create = get_transaction_create
    transaction1_create.tokenization_mode = Wallee::TokenizationMode::FORCE_CREATION_WITH_ONE_CLICK_PAYMENT
    transaction1_create.customers_presence = Wallee::CustomersPresence::NOT_PRESENT
    transaction1_create.completion_behavior = Wallee::TransactionCompletionBehavior::COMPLETE_DEFERRED
    transaction1_create.customer_id = TEST_CUSTOMER_ID

    transaction1 = @@transaction_service.create(SPACE_ID, transaction1_create)
    transaction1_processed = @@card_processing_service.process(SPACE_ID, transaction1.id, 
      TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)


    token = @@token_service.create_token(SPACE_ID, transaction1_processed.id)
    token.enabled_for_one_click_payment = true
    updated_token = @@token_service.update(SPACE_ID, token)


    transaction2_create = get_transaction_create
    transaction2_create.tokenization_mode = Wallee::TokenizationMode::FORCE_CREATION_WITH_ONE_CLICK_PAYMENT
    transaction2_create.customers_presence = Wallee::CustomersPresence::NOT_PRESENT
    transaction2_create.completion_behavior = Wallee::TransactionCompletionBehavior::COMPLETE_DEFERRED
    transaction2_create.customer_id = TEST_CUSTOMER_ID

    transaction2 = @@transaction_service.create(SPACE_ID, transaction2_create)
    creds2 = @@transaction_service.create_transaction_credentials(SPACE_ID, transaction2.id)
    payment_url2 = @@transaction_service.process_one_click_token_and_redirect_with_credentials(creds2, updated_token.id)

    assert_true(payment_url2.include?("securityToken"), "URL must be of a proper format")

    transaction2_read = @@transaction_service.read(SPACE_ID, transaction2.id)

    assert_equal(Wallee::TransactionState::AUTHORIZED, transaction2_read.state, 
      "State must be AUTHORIZED")

    # cleanup - 2nd transaction
    transaction2_completed = @@transaction_completion_service.complete_online(SPACE_ID, transaction2.id)

    assert_equal(Wallee::TransactionCompletionState::SUCCESSFUL, transaction2_completed.state,
      "State must be SUCCESSFUL")

    # cleanup - 1st transaction
    transaction1_completed = @@transaction_completion_service.complete_online(SPACE_ID, transaction1.id)

    assert_equal(Wallee::TransactionCompletionState::SUCCESSFUL, transaction1_completed.state,
      "State must be SUCCESSFUL")

    # cleanup - token
    @@token_service.delete(SPACE_ID, token.id)
  end

end
