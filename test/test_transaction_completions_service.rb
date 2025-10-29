# frozen_string_literal: true

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

require 'test/unit'
require 'wallee-ruby-sdk'

require_relative 'constants.rb'
require_relative 'utils.rb'

# wallee transaction completions service tests
class TransactionCompletionsServiceTest < Test::Unit::TestCase

  def setup
    @transactions_service = WalleeRubySdk::TransactionsService.new()
    @transaction_completions_service = WalleeRubySdk::TransactionCompletionsService.new()
  end

  def test_read_should_return_completed_transaction_data
    # Transaction completion read should return valid data.
    # IDs of transaction linked to transaction completion and initial transaction should match.

    transaction = create_transaction(TestUtils.get_transaction_create_payload)

    processed_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction.id, SPACE_ID, MOCK_CARD_DATA
    )

    assert_equal(
      WalleeRubySdk::TransactionState::FULFILL,
      processed_transaction.state,
      'State must be FULFILL'
    )

    transaction_completion = @transactions_service.post_payment_transactions_id_complete_offline(
      transaction.id, SPACE_ID
    )

    read_transaction = @transactions_service.get_payment_transactions_id(
      transaction.id, SPACE_ID
    )

    assert_equal(
      transaction_completion.linked_transaction,
      read_transaction.id,
      'Transaction IDs must match'
    )
  end

  private
  def create_transaction(transaction_create)
    @transactions_service.post_payment_transactions(SPACE_ID, transaction_create)
  end
end