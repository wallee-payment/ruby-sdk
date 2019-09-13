[![Build Status](https://travis-ci.org/wallee-payment/ruby-sdk.svg?branch=master)](https://travis-ci.org/wallee-payment/ruby-sdk)

# wallee Ruby Library

The wallee Ruby library wraps around the wallee API. This library facilitates your interaction with various services such as transactions, accounts, and subscriptions.

## Documentation

[wallee Web Service API](https://app-wallee.com/doc/api/web-service)

## Requirements

- Ruby 2.2+

## Installation

# RubyGem install (recommended)

```sh
$ gem install wallee-ruby-sdk
```

## Usage
The library needs to be configured with your account's space id, user id, and secret key which are available in your [wallee
account dashboard](https://app-wallee.com/account/select). Set `space_id`, `user_id`, and `api_secret` to their values:

### Configuring a Service

```ruby
require 'wallee-ruby-sdk'

space_id = 405
app_user_id = 512
app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="

Wallee.configure do |config|
  config.user_id = app_user_id
  config.authentication_key = app_user_key
end

# TransactionService
transaction_service = Wallee::TransactionService.new
# TransactionPaymentPageService
transaction_payment_page_service = Wallee::TransactionPaymentPageService.new
```

To get stated with sending transactions you can review the example below:

```ruby
require 'wallee-ruby-sdk'

space_id = 405
app_user_id = 512
app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="

Wallee.configure do |config|
    config.user_id = app_user_id
    config.authentication_key = app_user_key
end

# TransactionService
transaction_service = Wallee::TransactionService.new
# TransactionPaymentPageService
transaction_payment_page_service = Wallee::TransactionPaymentPageService.new

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

transaction = transaction_service.transaction_service_create(space_id, transaction)
payment_page_url = transaction_payment_page_service.transaction_payment_page_service_payment_page(space_id, transaction.id)
# redirect to payment_page_url
```

## License

Please see the [license file](https://github.com/wallee-payment/wallee-ruby-sdk/blob/master/LICENSE) for more information.
