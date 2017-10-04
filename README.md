[![Build Status](https://travis-ci.org/wallee-payment/wallee-ruby-sdk.svg?branch=master)](https://travis-ci.org/wallee-payment/wallee-ruby-sdk)

# wallee-ruby-sdk

A ruby wrapper around the wallee API.

## Documentation

https://app-wallee.com/doc/api/web-service

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wallee-ruby-sdk'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install wallee-ruby-sdk
```


## Usage

### Basic Example

```ruby
# Load the gem
require 'wallee-ruby-sdk'

space_id = 405
app_user_id = 512
app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="

# Setup Application User Id and Application User Key
Wallee.configure do |config|
  config.user_id = app_user_id
  config.authentication_key = app_user_key
end

# TransactionService
transaction_service = Wallee::TransactionService.new

# Create Filter
opts = {
  filter: Wallee::EntityQueryFilter.new({
    fieldName: "state",
    operator: Wallee::CriteriaOperator::EQUALS,
    type: Wallee::EntityQueryFilterType::LEAF,
    value: Wallee::TransactionCompletionState::FAILED
  }) 
}

begin
  #Returns the number of transaction in the space matching the provided filter
  result = transaction_service.transaction_service_count(space_id, opts)
  p result
rescue Wallee::ApiError => e
  puts "Exception when calling TransactionService->transaction_service_count: #{e}"
end
```

## License

Please see the [license file](https://github.com/wallee-payment/wallee-ruby-sdk/blob/master/LICENSE) for more information.
