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
  class RefundType
    
    MERCHANT_INITIATED_ONLINE = 'MERCHANT_INITIATED_ONLINE'.freeze
    MERCHANT_INITIATED_OFFLINE = 'MERCHANT_INITIATED_OFFLINE'.freeze
    CUSTOMER_INITIATED_AUTOMATIC = 'CUSTOMER_INITIATED_AUTOMATIC'.freeze
    CUSTOMER_INITIATED_MANUAL = 'CUSTOMER_INITIATED_MANUAL'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RefundType.constants.select { |c| RefundType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RefundType" if constantValues.empty?
      value
    end
  end
end
