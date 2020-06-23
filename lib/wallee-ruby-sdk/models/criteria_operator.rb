=begin
wallee API: 2.2.1

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
  class CriteriaOperator
    
    CONTAINS = 'CONTAINS'.freeze
    EQUALS = 'EQUALS'.freeze
    EQUALS_IGNORE_CASE = 'EQUALS_IGNORE_CASE'.freeze
    GREATER_THAN = 'GREATER_THAN'.freeze
    GREATER_THAN_OR_EQUAL = 'GREATER_THAN_OR_EQUAL'.freeze
    LESS_THAN = 'LESS_THAN'.freeze
    LESS_THAN_OR_EQUAL = 'LESS_THAN_OR_EQUAL'.freeze
    NOT_EQUALS = 'NOT_EQUALS'.freeze
    NOT_EQUALS_IGNORE_CASE = 'NOT_EQUALS_IGNORE_CASE'.freeze
    NOT_CONTAINS = 'NOT_CONTAINS'.freeze
    IS_NULL = 'IS_NULL'.freeze
    IS_NOT_NULL = 'IS_NOT_NULL'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CriteriaOperator.constants.select { |c| CriteriaOperator::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CriteriaOperator" if constantValues.empty?
      value
    end
  end
end
