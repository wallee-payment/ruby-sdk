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
  class RefundPercentageRange
    ONE_TO_FIVE = "ONE_TO_FIVE".freeze
    FIVE_TO_TEN = "FIVE_TO_TEN".freeze
    TEN_TO_FIFTEEN = "TEN_TO_FIFTEEN".freeze
    FIFTEEN_TO_TWENTY = "FIFTEEN_TO_TWENTY".freeze
    TWENTY_TO_THIRTY = "TWENTY_TO_THIRTY".freeze
    THIRTY_TO_FORTY = "THIRTY_TO_FORTY".freeze
    FORTY_TO_FIFTY = "FORTY_TO_FIFTY".freeze
    OVER_FIFTY = "OVER_FIFTY".freeze

    def self.all_vars
      @all_vars ||= [ONE_TO_FIVE, FIVE_TO_TEN, TEN_TO_FIFTEEN, FIFTEEN_TO_TWENTY, TWENTY_TO_THIRTY, THIRTY_TO_FORTY, FORTY_TO_FIFTY, OVER_FIFTY].freeze
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
      return value if RefundPercentageRange.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #RefundPercentageRange"
    end
  end
end
