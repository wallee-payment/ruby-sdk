require 'wallee-ruby-sdk'

# singleton config of ApiClient
Wallee.configure do |config|
    config.user_id = 512
    config.authentication_key = 'FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ='
    config.default_headers = {"x-meta-header-ruby": 'value', "x-meta-header-ruby-2": 'value2'}
    config.timeout = 60
end


SPACE_ID = 405
TEST_CUSTOMER_ID = 7311742
TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID = 1352
FAKE_CARD_DATA = Wallee::AuthenticatedCardDataCreate.new({
    primaryAccountNumber: '4111111111111111',
    expiryDate: '2026-12'
})


def get_transaction_create
    address = Wallee::AddressCreate.new({
        city: "City",
        country: "US",
        emailAddress: "billing@address.com",
        familyName: "Family",
        givenName: "Given",
        postCode: "98100",
        postalState: "WA",
        street: "Sunshine st."
    })

    Wallee::TransactionCreate.new({
        billingAddress: address,
        currency: "EUR",
        customerEmailAddress: "test@example.com",
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
        shippingAddress: address,
        shippingMethod: "Test Shipping"
    })
end


