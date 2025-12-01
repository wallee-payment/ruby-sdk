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

require 'date'
require 'time'

module WalleeRubySdk
  class RestAddressFormatField
    GIVEN_NAME = "GIVEN_NAME".freeze
    FAMILY_NAME = "FAMILY_NAME".freeze
    ORGANIZATION_NAME = "ORGANIZATION_NAME".freeze
    STREET = "STREET".freeze
    DEPENDENT_LOCALITY = "DEPENDENT_LOCALITY".freeze
    CITY = "CITY".freeze
    POSTAL_STATE = "POSTAL_STATE".freeze
    POST_CODE = "POST_CODE".freeze
    SORTING_CODE = "SORTING_CODE".freeze
    COUNTRY = "COUNTRY".freeze

    def self.all_vars
      @all_vars ||= [GIVEN_NAME, FAMILY_NAME, ORGANIZATION_NAME, STREET, DEPENDENT_LOCALITY, CITY, POSTAL_STATE, POST_CODE, SORTING_CODE, COUNTRY].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if RestAddressFormatField.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #RestAddressFormatField"
    end
  end
end
