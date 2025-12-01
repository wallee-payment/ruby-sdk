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

# wallee querying features test using transactions service
class QueryingTest < Test::Unit::TestCase

  def setup
    @transactions_service = WalleeRubySdk::TransactionsService.new()

    transaction_base = @transactions_service.post_payment_transactions(
      SPACE_ID, TestUtils.get_transaction_create_payload
    )

    authorized_transaction = @transactions_service.post_payment_transactions_id_process_card_details(
      transaction_base.id, SPACE_ID, MOCK_CARD_DATA
    )

    @transactions_service.post_payment_transactions_id_complete_online(
      authorized_transaction.id, SPACE_ID
    )

    @transaction1 = @transactions_service.get_payment_transactions_id(
      authorized_transaction.id, SPACE_ID
    )

    transaction_create = TestUtils.get_transaction_create_payload
    transaction_create.currency = 'USD'
    transaction_create.merchant_reference = 'Transaction for querying test'

    @transaction2 = @transactions_service.post_payment_transactions(
      SPACE_ID, transaction_create
    )
  end

  # Transaction search with limit parameter set to 2 items.
  def test_search_with_limit_should_return_correct_amount_of_items
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 2, offset: 0, order: '', query: '' }
    )

    assert_equal(2, response.data.length, 'Response should contain 2 items')
  end

  # Transaction search with offset parameter.
  # Response should contain 1 item with the higher transaction ID.
  def test_search_with_offset_should_return_correct_response
    assert_not_nil(@transaction1, 'First transaction should be present for this test')
    assert_not_nil(@transaction2, 'Second transaction should be present for this test')

    query = "id:#{@transaction1.id} OR id:#{@transaction2.id}"
    higher_id = [@transaction1.id, @transaction2.id].max

    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 2, offset: 1, order: 'id:ASC', query: query }
    )

    assert_equal(higher_id, response.data[0].id, 'Response offset should be correct')
  end

  # Transaction search using the 'before' parameter.
  def test_search_with_before_parameter_should_return_correct_responses
    upper_id = [@transaction1.id, @transaction2.id].max
    lower_id = [@transaction1.id, @transaction2.id].min

    response = @transactions_service.get_payment_transactions(
      SPACE_ID, before: upper_id, expand: [], limit: 10, order: 'ASC'
    )

    assert_not_nil(response.data, 'Response data should not be null')
    assert(response.data.any? { |t| t.id == lower_id }, "Response should contain transaction with ID: #{lower_id}")
  end

  # Transaction search made with query. Response should contain 2 items.
  def test_fetch_with_search_query_should_return_list_with_valid_items
    query = "id:#{@transaction1.id} OR id:#{@transaction2.id}"
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 4, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response)
    assert_not_nil(response.data)
    assert_equal(2, response.data.length, 'Response should contain only 2 items')
  end

  # Transaction search with a query containing quotes. Response should contain 1 item.
  def test_fetch_with_search_query_with_quotes_should_return_list_with_valid_items
    query = "merchantReference:\"Transaction for querying test\" AND id:#{@transaction2.id}"
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 4, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response)
    assert_not_nil(response.data)
    assert_not_equal(0, response.data.length, 'Response should contain more than 0 items')
    assert_equal(1, response.data.length, 'Response should contain 1 item')
  end

  # Transaction search using 'contains' clause in query.
  def test_fetch_with_query_with_contains_clause_should_return_list_with_valid_items
    query = 'merchantReference:~querying';
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 2, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response)
    assert_not_nil(response.data)
    assert(response.data.length > 0, 'Response should contain more than 0 items')
  end

  # Transaction search using a grouped query clause.
  def test_fetch_with_query_with_grouping_should_return_list_with_valid_items
    query = "id:#{@transaction1.id} AND (currency:EUR OR currency:CHF)"
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 4, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response)
    assert_not_nil(response.data)
    assert_equal(1, response.data.length, 'Response should contain only 1 item')
  end

  # Transaction search using range clause.
  def test_fetch_with_query_with_range_should_return_list_with_valid_items
    query = "id:>#{@transaction1.id - 2} id:<=#{@transaction1.id + 2}"
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 8, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response)
    assert_not_nil(response.data)
    assert(response.data.any? { |t| t.id == @transaction1.id }, 'Transaction with expected ID should be found')
  end

  # Transaction search using negation in query.
  def test_fetch_with_query_with_negation_should_return_list_with_valid_items
    query = "id:>#{@transaction1.id - 2} id:<=#{@transaction1.id + 2} AND -id:#{@transaction1.id}"
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 8, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response)
    assert_not_nil(response.data)
    assert(!response.data.any? { |t| t.id == @transaction1.id }, 'Transaction with excluded ID should not be present')
  end

  # Transaction search made with query which has isNull constraint.
  def test_query_with_is_null_constraint_should_return_valid_item
    query = "id:#{@transaction2.id} AND paymentConnectorConfiguration:*"
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 4, offset: 0, order: 'id:ASC', query: query }
    )
    assert_not_nil(response, 'Response should be present')
    assert_not_nil(response.data)
    assert_equal(1, response.data.length, 'Response should contain only 1 item')
  end

  # Transaction search made with order clause.
  def test_search_with_desc_sorting_should_return_sorted_response
    response = @transactions_service.get_payment_transactions_search(
      SPACE_ID,
      { expand: [], limit: 4, offset: 0, order: 'id:DESC', query: '' }
    )

    assert_not_nil(response, 'Response should not be nil')
    assert_not_nil(response.data, 'Response data should not be nil')
    assert_operator(response.data.length, :>=, 2, 'Response should contain at least two transactions')

    first_id = response.data.first.id
    last_id = response.data.last.id

    assert_not_nil(first_id, 'First transaction ID should not be nil')
    assert_not_nil(last_id, 'Last transaction ID should not be nil')

    difference = first_id - last_id

    assert_operator(difference, :>, 0, 'Response should be sorted descending. First ID should be greater than last ID.')
  end

  # Gets transaction with no expand parameters.
  def test_fetch_with_no_expanding_should_return_collapsed_response
    response = @transactions_service.get_payment_transactions_id(
      @transaction1.id, SPACE_ID, {}
    )
    assert_not_nil(response.group, 'Group always should be present')
    assert_not_nil(response.group.id, 'Id always should be present')
    assert_nil(response.group.state, 'Group state should be null when response collapsed')
    assert_nil(response.group.version, 'Group version should be null when response collapsed')
  end

  # Gets transaction with expand parameters.
  def test_fetch_with_expanding_should_return_expanded_response
    expand_set = ['group', 'paymentConnectorConfiguration']
    response = @transactions_service.get_payment_transactions_id(
      @transaction1.id, SPACE_ID, { expand: expand_set }
    )
    assert_not_nil(response.group, 'Group always should be present')
    assert_not_nil(response.group.id, 'Group id always should be present')
    assert_not_nil(response.group.state, 'Group state should be present when response expanded')
    assert_not_nil(response.group.version, 'Group version should be present when response expanded')
    assert_not_nil(response.payment_connector_configuration)
    assert_not_nil(response.payment_connector_configuration.processor_configuration, 'Both items in expand set should be expanded')
  end

  # Gets transaction with nested expand parameter.
  def test_fetch_with_nested_expanding_should_return_expanded_response
    expand_set = ['paymentConnectorConfiguration.processorConfiguration']
    response = @transactions_service.get_payment_transactions_id(
      @transaction1.id, SPACE_ID, { expand: expand_set }
    )
    assert_not_nil(response.payment_connector_configuration)
    assert_not_nil(response.payment_connector_configuration.processor_configuration)
    assert_not_nil(response.payment_connector_configuration.processor_configuration.linked_space_id, 'Items in nested response should be present')
  end
end