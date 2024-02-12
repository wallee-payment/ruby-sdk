require "test/unit"
require 'wallee-ruby-sdk'

require_relative "constants.rb"

class TestTransactionIframeService < Test::Unit::TestCase

  class << self
    def startup
      @@transaction_service = Wallee::TransactionService.new
      
      @@transaction_iframe_service = Wallee::TransactionIframeService.new
    end
  end

  description "javascript_url() should create URL for use in Iframe checkout flow javascript"
  def test_javascript_url
    transaction_create = @@transaction_service.create(SPACE_ID, get_transaction_create)

    url = @@transaction_iframe_service.javascript_url(SPACE_ID, transaction_create.id)

    assert_true(url.include?("securityToken"), "URL must have proper format")
  end

end
