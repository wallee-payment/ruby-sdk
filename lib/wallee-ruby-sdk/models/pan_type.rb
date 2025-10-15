=begin
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
  class PanType
    
    PLAIN = 'PLAIN'.freeze
    PLAIN_GOOGLE_PAY = 'PLAIN_GOOGLE_PAY'.freeze
    SCHEME_TOKEN = 'SCHEME_TOKEN'.freeze
    SCHEME_TOKEN_CLICK_TO_PAY = 'SCHEME_TOKEN_CLICK_TO_PAY'.freeze
    DEVICE_TOKEN_APPLE_PAY = 'DEVICE_TOKEN_APPLE_PAY'.freeze
    DEVICE_TOKEN_GOOGLE_PAY = 'DEVICE_TOKEN_GOOGLE_PAY'.freeze
    DEVICE_TOKEN_SAMSUNG_PAY = 'DEVICE_TOKEN_SAMSUNG_PAY'.freeze
    DEVICE_TOKEN_ANDROID_PAY = 'DEVICE_TOKEN_ANDROID_PAY'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PanType.constants.select { |c| PanType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PanType" if constantValues.empty?
      value
    end
  end
end
