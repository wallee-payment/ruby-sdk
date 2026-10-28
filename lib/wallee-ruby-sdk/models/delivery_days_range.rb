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
  class DeliveryDaysRange
    ZERO_DAYS = "ZERO_DAYS".freeze
    ONE_TO_THREE_DAYS = "ONE_TO_THREE_DAYS".freeze
    THREE_TO_FIVE_DAYS = "THREE_TO_FIVE_DAYS".freeze
    FIVE_TO_TEN_DAYS = "FIVE_TO_TEN_DAYS".freeze
    TEN_TO_FIFTEEN_DAYS = "TEN_TO_FIFTEEN_DAYS".freeze
    FIFTEEN_TO_TWENTY_DAYS = "FIFTEEN_TO_TWENTY_DAYS".freeze
    TWENTY_TO_THIRTY_DAYS = "TWENTY_TO_THIRTY_DAYS".freeze
    THIRTY_TO_FORTY_DAYS = "THIRTY_TO_FORTY_DAYS".freeze
    FORTY_TO_FIFTY_DAYS = "FORTY_TO_FIFTY_DAYS".freeze
    FIFTY_TO_SIXTY_DAYS = "FIFTY_TO_SIXTY_DAYS".freeze
    SIXTY_TO_NINETY_DAYS = "SIXTY_TO_NINETY_DAYS".freeze
    OVER_NINETY_DAYS = "OVER_NINETY_DAYS".freeze

    def self.all_vars
      @all_vars ||= [ZERO_DAYS, ONE_TO_THREE_DAYS, THREE_TO_FIVE_DAYS, FIVE_TO_TEN_DAYS, TEN_TO_FIFTEEN_DAYS, FIFTEEN_TO_TWENTY_DAYS, TWENTY_TO_THIRTY_DAYS, THIRTY_TO_FORTY_DAYS, FORTY_TO_FIFTY_DAYS, FIFTY_TO_SIXTY_DAYS, SIXTY_TO_NINETY_DAYS, OVER_NINETY_DAYS].freeze
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
      return value if DeliveryDaysRange.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #DeliveryDaysRange"
    end
  end
end
