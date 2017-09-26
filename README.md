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

# Setup userId and authenticationKey
Wallee.configure do |config|
  config.user_id = 'YOUR APP USER ID'
  config.authentication_key = 'YOUR APP USER AUTHENTICATION KEY'
end

api_instance = Wallee::AccountService.new

opts = { 
  filter: Wallee::EntityQueryFilter.new # EntityQueryFilter | The filter which restricts the entities which are used to calculate the count.
}

begin
  #Count
  result = api_instance.account_service_count(opts)
  p result
rescue Wallee::ApiError => e
  puts "Exception when calling AccountService->account_service_count: #{e}"
end

```

## License

Please see the [license file](https://github.com/wallee-payment/wallee-ruby-sdk/blob/master/LICENSE) for more information.
