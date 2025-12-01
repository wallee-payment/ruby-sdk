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

# wallee refunds service tests
class RefundsServiceTest < Test::Unit::TestCase

  def setup
    @transactions_service = WalleeRubySdk::TransactionsService.new()
    @refunds_service = WalleeRubySdk::RefundsService.new()
  end

  # Refund of fulfilled transaction should be created successfully.
  def test_refund_of_completed_transaction_should_work
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processed_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    transaction_completion = @transactions_service.post_payment_transactions_id_complete_online(
      transaction.id, SPACE_ID
    )

    assert_equal(
      WalleeRubySdk::TransactionCompletionState::SUCCESSFUL,
      transaction_completion.state,
      'Transaction completion state must be SUCCESSFUL'
    )

    read_transaction = @transactions_service.get_payment_transactions_id(transaction.id, SPACE_ID)

    assert_equal(
      WalleeRubySdk::TransactionState::FULFILL,
      read_transaction.state,
      'Transaction state must be FULFILL'
    )

    refund_create = build_refund_create(transaction)

    refund = @refunds_service.post_payment_refunds(SPACE_ID, refund_create)

    assert_equal(
      WalleeRubySdk::RefundState::SUCCESSFUL,
      refund.state,
      'Refund state must be SUCCESSFUL'
    )
  end

  # Refund read should return valid data.
  def test_read_should_return_refund_data
    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    @transactions_service.post_payment_transactions_id_complete_online(
      transaction.id, SPACE_ID
    )

    refund_create = build_refund_create(transaction)

    refund = @refunds_service.post_payment_refunds(SPACE_ID, refund_create)

    assert_equal(
      WalleeRubySdk::RefundState::SUCCESSFUL,
      refund.state,
      'Refund state must be SUCCESSFUL'
    )

    read_refund = @refunds_service.get_payment_refunds_id(refund.id, SPACE_ID)

    assert_equal(
      refund.id,
      read_refund.id,
      'Refund ids should match'
    )
  end


  private
  def build_refund_create(transaction)
    WalleeRubySdk::RefundCreate.new(
      transaction: transaction.id,
      type: WalleeRubySdk::RefundType::MERCHANT_INITIATED_ONLINE,
      external_id: SecureRandom.uuid,
      amount: 29.95
    )
  end

  def create_transaction(transaction_create)
    @transactions_service.post_payment_transactions(SPACE_ID, transaction_create)
  end
end