=begin
wallee API: 2.1.0

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
  class UserType
    
    HUMAN_USER = 'HUMAN_USER'.freeze
    SINGLE_SIGNON_USER = 'SINGLE_SIGNON_USER'.freeze
    APPLICATION_USER = 'APPLICATION_USER'.freeze
    ANONYMOUS_USER = 'ANONYMOUS_USER'.freeze
    SERVER_USER = 'SERVER_USER'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = UserType.constants.select { |c| UserType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #UserType" if constantValues.empty?
      value
    end
  end
end
