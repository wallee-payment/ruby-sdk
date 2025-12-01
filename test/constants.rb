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

require 'wallee-ruby-sdk'

SPACE_ID = '405'
TEST_USER_ID = '512'
TEST_AUTHENTICATION_KEY = 'FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ='
TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID = '1352'
TEST_CUSTOMER_ID = '7311742'

MOCK_CARD_DATA = WalleeRubySdk::AuthenticatedCardRequest.new(
  card_data: WalleeRubySdk::AuthenticatedCardDataCreate.new(
    primary_account_number: '4111111111111111',
    expiry_date: '2026-12'
  ),
  payment_method_configuration: TEST_CARD_PAYMENT_METHOD_CONFIGURATION_ID
)

# Singleton configuration for ApiClient with a custom timeout.
# To ensure the configuration is static (shared and single across the application),
# a singleton pattern is implemented by defining a class method `.configure` to return a single instance.
# For more details on how `Configuration` is initialized in ApiClient, see:
# `initialize(config = Configuration.default)`
#
# Unlike a global static approach, the `Configuration.new` method creates independent instances,
# allowing for configuration flexibility and avoiding shared state across the application.
WalleeRubySdk.configure do |config|
  config.user_id = TEST_USER_ID
  config.authentication_key = TEST_AUTHENTICATION_KEY
  config.default_headers = { "x-meta-header-ruby": 'value', "x-meta-header-ruby-2": 'value2' }
end