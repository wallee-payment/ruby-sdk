=begin
wallee API: 2.0.2

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
  class ShopifySubscriptionVersion
    # 
    attr_accessor :billing_address

    # 
    attr_accessor :billing_day_of_month

    # 
    attr_accessor :billing_interval_amount

    # 
    attr_accessor :billing_interval_unit

    # 
    attr_accessor :billing_weekday

    # 
    attr_accessor :created_by

    # 
    attr_accessor :created_on

    # 
    attr_accessor :currency

    # 
    attr_accessor :discharged_by

    # 
    attr_accessor :discharged_on

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :items

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :maximal_billing_cycles

    # 
    attr_accessor :maximal_suspendable_cycles

    # 
    attr_accessor :minimal_billing_cycles

    # 
    attr_accessor :payment_gateway

    # 
    attr_accessor :shipping_address

    # 
    attr_accessor :shipping_rate

    # 
    attr_accessor :shop

    # 
    attr_accessor :state

    # 
    attr_accessor :store_order_confirmation_email_enabled

    # 
    attr_accessor :subscriber_suspension_allowed

    # 
    attr_accessor :subscription

    # 
    attr_accessor :termination_billing_cycles

    # 
    attr_accessor :token

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_address' => :'billingAddress',
        :'billing_day_of_month' => :'billingDayOfMonth',
        :'billing_interval_amount' => :'billingIntervalAmount',
        :'billing_interval_unit' => :'billingIntervalUnit',
        :'billing_weekday' => :'billingWeekday',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'currency' => :'currency',
        :'discharged_by' => :'dischargedBy',
        :'discharged_on' => :'dischargedOn',
        :'id' => :'id',
        :'items' => :'items',
        :'linked_space_id' => :'linkedSpaceId',
        :'maximal_billing_cycles' => :'maximalBillingCycles',
        :'maximal_suspendable_cycles' => :'maximalSuspendableCycles',
        :'minimal_billing_cycles' => :'minimalBillingCycles',
        :'payment_gateway' => :'paymentGateway',
        :'shipping_address' => :'shippingAddress',
        :'shipping_rate' => :'shippingRate',
        :'shop' => :'shop',
        :'state' => :'state',
        :'store_order_confirmation_email_enabled' => :'storeOrderConfirmationEmailEnabled',
        :'subscriber_suspension_allowed' => :'subscriberSuspensionAllowed',
        :'subscription' => :'subscription',
        :'termination_billing_cycles' => :'terminationBillingCycles',
        :'token' => :'token',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billing_address' => :'ShopifySubscriptionAddress',
        :'billing_day_of_month' => :'Integer',
        :'billing_interval_amount' => :'Integer',
        :'billing_interval_unit' => :'ShopifySubscriptionBillingIntervalUnit',
        :'billing_weekday' => :'ShopifySubscriptionWeekday',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'currency' => :'String',
        :'discharged_by' => :'Integer',
        :'discharged_on' => :'DateTime',
        :'id' => :'Integer',
        :'items' => :'Array<ShopifySubscriptionVersionItem>',
        :'linked_space_id' => :'Integer',
        :'maximal_billing_cycles' => :'Integer',
        :'maximal_suspendable_cycles' => :'Integer',
        :'minimal_billing_cycles' => :'Integer',
        :'payment_gateway' => :'String',
        :'shipping_address' => :'ShopifySubscriptionAddress',
        :'shipping_rate' => :'String',
        :'shop' => :'Integer',
        :'state' => :'ShopifySubscriptionVersionState',
        :'store_order_confirmation_email_enabled' => :'BOOLEAN',
        :'subscriber_suspension_allowed' => :'BOOLEAN',
        :'subscription' => :'ShopifySubscription',
        :'termination_billing_cycles' => :'Integer',
        :'token' => :'Integer',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

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

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'dischargedBy')
        self.discharged_by = attributes[:'dischargedBy']
      end

      if attributes.has_key?(:'dischargedOn')
        self.discharged_on = attributes[:'dischargedOn']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
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

      if attributes.has_key?(:'paymentGateway')
        self.payment_gateway = attributes[:'paymentGateway']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'shippingRate')
        self.shipping_rate = attributes[:'shippingRate']
      end

      if attributes.has_key?(:'shop')
        self.shop = attributes[:'shop']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'storeOrderConfirmationEmailEnabled')
        self.store_order_confirmation_email_enabled = attributes[:'storeOrderConfirmationEmailEnabled']
      end

      if attributes.has_key?(:'subscriberSuspensionAllowed')
        self.subscriber_suspension_allowed = attributes[:'subscriberSuspensionAllowed']
      end

      if attributes.has_key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end

      if attributes.has_key?(:'terminationBillingCycles')
        self.termination_billing_cycles = attributes[:'terminationBillingCycles']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
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
          billing_address == o.billing_address &&
          billing_day_of_month == o.billing_day_of_month &&
          billing_interval_amount == o.billing_interval_amount &&
          billing_interval_unit == o.billing_interval_unit &&
          billing_weekday == o.billing_weekday &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          currency == o.currency &&
          discharged_by == o.discharged_by &&
          discharged_on == o.discharged_on &&
          id == o.id &&
          items == o.items &&
          linked_space_id == o.linked_space_id &&
          maximal_billing_cycles == o.maximal_billing_cycles &&
          maximal_suspendable_cycles == o.maximal_suspendable_cycles &&
          minimal_billing_cycles == o.minimal_billing_cycles &&
          payment_gateway == o.payment_gateway &&
          shipping_address == o.shipping_address &&
          shipping_rate == o.shipping_rate &&
          shop == o.shop &&
          state == o.state &&
          store_order_confirmation_email_enabled == o.store_order_confirmation_email_enabled &&
          subscriber_suspension_allowed == o.subscriber_suspension_allowed &&
          subscription == o.subscription &&
          termination_billing_cycles == o.termination_billing_cycles &&
          token == o.token &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billing_address, billing_day_of_month, billing_interval_amount, billing_interval_unit, billing_weekday, created_by, created_on, currency, discharged_by, discharged_on, id, items, linked_space_id, maximal_billing_cycles, maximal_suspendable_cycles, minimal_billing_cycles, payment_gateway, shipping_address, shipping_rate, shop, state, store_order_confirmation_email_enabled, subscriber_suspension_allowed, subscription, termination_billing_cycles, token, version].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
