require 'test/unit'
require 'wallee-ruby-sdk'
require 'uri'

class TestTransactionCreate < Test::Unit::TestCase

  def test_create
    
    space_id = ENV['APPLICATION_SPACE_ID'].to_i
    
    Wallee.configure do |config|
      config.user_id = ENV['APPLICATION_USER_ID']
      config.authentication_key = ENV['APPLICATION_USER_KEY']
      base_path = ENV['API_BASE_PATH']
      unless base_path.empty?
        base_url = URI(base_path)
        config.scheme = base_url.scheme
        config.host = base_url.host+":"+base_url.port.to_s
        config.base_path = base_url.path  
      end   
    end

    transaction_service = Wallee::TransactionService.new
    transaction = Wallee::TransactionCreate.new({
      billingAddress: Wallee::AddressCreate.new({
        city: "City",
        country: "US",
        emailAddress: "billing@address.com",
        familyName: "Family",
        givenName: "Given",
        postCode: "98100",
        postalState: "WA",
        street: "Street"
      }),
      currency: 'EUR',
      customerEmailAddress: "test@customweb.com",
      customerPresence: Wallee::CustomersPresence::VIRTUAL_PRESENT,
      failedUrl: "http://localhost/failure",
      invoiceMerchantReference: "order-1",
      language: "en_US",
      lineItems: [
        Wallee::LineItemCreate.new({
          amountIncludingTax: 29.60,
          name: "Item 1",
          quantity: 1,
          shippingRequired: true,
          sku: "sku-1",
          taxes: [
            Wallee::TaxCreate.new({
              rate: 8,
              title: "VAT"
	        })
          ],
          type: Wallee::LineItemType::PRODUCT,
          uniqueId: "unique-id-item-1",
        }),
        Wallee::LineItemCreate.new({
          amountIncludingTax: 5.60,
          name: "Test Shipping",
          quantity: 1,
          shippingRequired: false,
          sku: "test-shipping",
          taxes: [
            Wallee::TaxCreate.new({
              rate: 8,
              title: "VAT"
            })
          ],
          type: Wallee::LineItemType::SHIPPING,
          uniqueId: "unique-id-shipping-1",
        }),
      ],
      merchantReference: "order-1",
      shippingAddress: Wallee::AddressCreate.new({
        city: "City",
        country: "US",
        emailAddress: "shipping@address.com",
        familyName: "Family",
        givenName: "Given",
        postCode: "98100",
        postalState: "WA",
        street: "Street"
      }),
      shippingMethod: "Test Shipping",
      successUrl: "http://localhost/success"
    })

    transaction, status_code = transaction_service.transaction_service_create_with_http_info(space_id, transaction)
    assert_equal(200, status_code )
    assert_equal(35.2, transaction.authorization_amount)
    assert_equal(space_id, transaction.linked_space_id)
  end
  
end
