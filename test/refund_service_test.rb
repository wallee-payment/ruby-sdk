require "test/unit"
require 'wallee-ruby-sdk'

require_relative "constants.rb"

class TestRefundService < Test::Unit::TestCase

  class << self
    def startup
      @@transaction_service = Wallee::TransactionService.new
      
      @@card_processing_service = Wallee::CardProcessingService.new

      @@transaction_completion_service = Wallee::TransactionCompletionService.new

      @@refund_service = Wallee::RefundService.new
    end
  end

  description "refund() should create a refund for transaction"
  def test_refund
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    transaction_processed = @@card_processing_service.process(SPACE_ID, transaction.id, 
        TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)

    transaction_completion = @@transaction_completion_service.complete_offline(SPACE_ID, transaction_processed.id)

    assert_equal(Wallee::TransactionCompletionState::SUCCESSFUL, transaction_completion.state,
        "State must be SUCCESSFUL")

    transaction_read = @@transaction_service.read(SPACE_ID, transaction_processed.id)

    refund = @@refund_service.refund(SPACE_ID, get_refund_create(transaction_read))

    assert_equal(Wallee::RefundState::SUCCESSFUL, refund.state,
        "State must be SUCCESSFUL")
  end

  description "read() should should fetch refund details"
  def test_read
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    transaction_processed = @@card_processing_service.process(SPACE_ID, transaction.id, 
        TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)

    transaction_completion = @@transaction_completion_service.complete_offline(SPACE_ID, transaction_processed.id)

    transaction_read = @@transaction_service.read(SPACE_ID, transaction_processed.id)

    refund = @@refund_service.refund(SPACE_ID, get_refund_create(transaction_read))

    assert_equal(Wallee::RefundState::SUCCESSFUL, refund.state,
        "State must be SUCCESSFUL")

    read_refund = @@refund_service.read(SPACE_ID, refund.id)

    assert_equal(refund.id, read_refund.id, "Refund ids must match")
  end

  description "search() should find a refund for a given criteria"
  def test_search
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    transaction_processed = @@card_processing_service.process(SPACE_ID, transaction.id, 
        TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)

    transaction_completion = @@transaction_completion_service.complete_offline(SPACE_ID, transaction_processed.id)

    transaction_read = @@transaction_service.read(SPACE_ID, transaction_processed.id)

    refund = @@refund_service.refund(SPACE_ID, get_refund_create(transaction_read))

    assert_equal(Wallee::RefundState::SUCCESSFUL, refund.state,
        "State must be SUCCESSFUL")

    criteria = Wallee::EntityQuery.new({
        filter: Wallee::EntityQueryFilter.new({
            fieldName: "id",
            value: refund.id,
            type: Wallee::EntityQueryFilterType::LEAF,
            operator: Wallee::CriteriaOperator::EQUALS
        })
    })

    refunds_found = @@refund_service.search(SPACE_ID, criteria)
    
    assert_equal(1, refunds_found.length, "Search should give single result")
    refunds_found.each { |ref| assert_equal(refund.id, ref.id, "Refund ids must match") }
  end

  description "count() should count refunds for a given criteria"
  def test_count
    transaction = @@transaction_service.create(SPACE_ID, get_transaction_create)

    transaction_processed = @@card_processing_service.process(SPACE_ID, transaction.id, 
        TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID, FAKE_CARD_DATA)
    
    transaction_completion = @@transaction_completion_service.complete_offline(SPACE_ID, transaction_processed.id)

    transaction_read = @@transaction_service.read(SPACE_ID, transaction_processed.id)

    refund = @@refund_service.refund(SPACE_ID, get_refund_create(transaction_read))

    assert_equal(Wallee::RefundState::SUCCESSFUL, refund.state,
        "State must be SUCCESSFUL")

    criteria = {
        filter: Wallee::EntityQueryFilter.new({
            fieldName: "id",
            value: refund.id,
            type: Wallee::EntityQueryFilterType::LEAF,
            operator: Wallee::CriteriaOperator::EQUALS
        })
    }

    count = @@refund_service.count(SPACE_ID, criteria)
    assert_equal(1, count, "Should find 1 refund", )
  end

  private
  
  def get_refund_create(transaction)
    Wallee::RefundCreate.new({
        externalId: transaction.id.to_s,
        type: Wallee::RefundType::MERCHANT_INITIATED_ONLINE,
        amount: transaction.authorization_amount,
        transaction: transaction.id,
        merchantReference: transaction.merchant_reference
    })
  end

end
