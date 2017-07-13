=begin
Wallee API: 1.0.0

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
  class DeliveryIndicationState
    
    PENDING = "PENDING".freeze
    NOT_SUITABLE = "NOT_SUITABLE".freeze
    MANUAL_CHECK_REQUIRED = "MANUAL_CHECK_REQUIRED".freeze
    SUITABLE = "SUITABLE".freeze
    
    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(value)
    
      consantValues = DeliveryIndicationState.constants.select{|c| c.to_s == value}
      raise "Invalid ENUM value #{value} for class #DeliveryIndicationState" if consantValues.empty?
    
      value
    
    end
  end

end
