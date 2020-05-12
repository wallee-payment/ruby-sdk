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
  # 
  class ShopifySubscriptionUpdateRequest
    # Define the day of the month on which the recurring orders should be created.
    attr_accessor :billing_day_of_month

    # 
    attr_accessor :billing_interval_amount

    # Define how frequently recurring orders should be created.
    attr_accessor :billing_interval_unit

    # Define the weekday on which the recurring orders should be created.
    attr_accessor :billing_weekday

    # 
    attr_accessor :id

    # 
    attr_accessor :items

    # Define the maximum number of orders the subscription will run for.
    attr_accessor :maximal_billing_cycles

    # Define the maximum number of orders the subscription can be suspended for at a time.
    attr_accessor :maximal_suspendable_cycles

    # Define the minimal number of orders the subscription will run for.
    attr_accessor :minimal_billing_cycles

    # 
    attr_accessor :store_order_confirmation_email_enabled

    # 
    attr_accessor :subscriber_suspension_allowed

    # Define the number of orders the subscription will keep running for after its termination has been requested.
    attr_accessor :termination_billing_cycles

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_day_of_month' => :'billingDayOfMonth',
        :'billing_interval_amount' => :'billingIntervalAmount',
        :'billing_interval_unit' => :'billingIntervalUnit',
        :'billing_weekday' => :'billingWeekday',
        :'id' => :'id',
        :'items' => :'items',
        :'maximal_billing_cycles' => :'maximalBillingCycles',
        :'maximal_suspendable_cycles' => :'maximalSuspendableCycles',
        :'minimal_billing_cycles' => :'minimalBillingCycles',
        :'store_order_confirmation_email_enabled' => :'storeOrderConfirmationEmailEnabled',
        :'subscriber_suspension_allowed' => :'subscriberSuspensionAllowed',
        :'termination_billing_cycles' => :'terminationBillingCycles'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billing_day_of_month' => :'Integer',
        :'billing_interval_amount' => :'Integer',
        :'billing_interval_unit' => :'ShopifySubscriptionBillingIntervalUnit',
        :'billing_weekday' => :'ShopifySubscriptionWeekday',
        :'id' => :'Integer',
        :'items' => :'Array<ShopifySubscriptionEditModelItem>',
        :'maximal_billing_cycles' => :'Integer',
        :'maximal_suspendable_cycles' => :'Integer',
        :'minimal_billing_cycles' => :'Integer',
        :'store_order_confirmation_email_enabled' => :'BOOLEAN',
        :'subscriber_suspension_allowed' => :'BOOLEAN',
        :'termination_billing_cycles' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'billingDayOfMonth')
        self.billing_day_of_month = attributes[:'billingDayOfMonth']
      end

      if attributes.has_key?(:'billingIntervalAmount')
        self.billing_interval_amount = attributes[:'billingIntervalAmount']
      end

      if attributes.has_key?(:'billingIntervalUnit')
        self.billing_interval_unit = attributes[:'billingIntervalUnit']
      end

      if attributes.has_key?(:'billingWeekday')
        self.billing_weekday = attributes[:'billingWeekday']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'maximalBillingCycles')
        self.maximal_billing_cycles = attributes[:'maximalBillingCycles']
      end

      if attributes.has_key?(:'maximalSuspendableCycles')
        self.maximal_suspendable_cycles = attributes[:'maximalSuspendableCycles']
      end

      if attributes.has_key?(:'minimalBillingCycles')
        self.minimal_billing_cycles = attributes[:'minimalBillingCycles']
      end

      if attributes.has_key?(:'storeOrderConfirmationEmailEnabled')
        self.store_order_confirmation_email_enabled = attributes[:'storeOrderConfirmationEmailEnabled']
      end

      if attributes.has_key?(:'subscriberSuspensionAllowed')
        self.subscriber_suspension_allowed = attributes[:'subscriberSuspensionAllowed']
      end

      if attributes.has_key?(:'terminationBillingCycles')
        self.termination_billing_cycles = attributes[:'terminationBillingCycles']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_day_of_month == o.billing_day_of_month &&
          billing_interval_amount == o.billing_interval_amount &&
          billing_interval_unit == o.billing_interval_unit &&
          billing_weekday == o.billing_weekday &&
          id == o.id &&
          items == o.items &&
          maximal_billing_cycles == o.maximal_billing_cycles &&
          maximal_suspendable_cycles == o.maximal_suspendable_cycles &&
          minimal_billing_cycles == o.minimal_billing_cycles &&
          store_order_confirmation_email_enabled == o.store_order_confirmation_email_enabled &&
          subscriber_suspension_allowed == o.subscriber_suspension_allowed &&
          termination_billing_cycles == o.termination_billing_cycles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billing_day_of_month, billing_interval_amount, billing_interval_unit, billing_weekday, id, items, maximal_billing_cycles, maximal_suspendable_cycles, minimal_billing_cycles, store_order_confirmation_email_enabled, subscriber_suspension_allowed, termination_billing_cycles].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Wallee.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
