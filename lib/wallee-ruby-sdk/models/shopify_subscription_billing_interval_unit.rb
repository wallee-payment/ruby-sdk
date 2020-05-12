=begin
wallee API: 2.2.0

The wallee API allows an easy interaction with the wallee web service.



Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module Wallee
  class ShopifySubscriptionBillingIntervalUnit
    
    MINUTES = 'MINUTES'.freeze
    HOURS = 'HOURS'.freeze
    DAYS = 'DAYS'.freeze
    WEEKS = 'WEEKS'.freeze
    MONTHS = 'MONTHS'.freeze
    YEARS = 'YEARS'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ShopifySubscriptionBillingIntervalUnit.constants.select { |c| ShopifySubscriptionBillingIntervalUnit::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ShopifySubscriptionBillingIntervalUnit" if constantValues.empty?
      value
    end
  end
end
