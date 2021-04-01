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
  # 
  class ShopifySubscriptionCreationRequest
    # 
    attr_accessor :billing_address

    # 
    attr_accessor :billing_configuration

    # 
    attr_accessor :currency

    # The external id helps to identify the entity and a subsequent creation of an entity with the same ID will not create a new entity.
    attr_accessor :external_id

    # 
    attr_accessor :initial_execution_date

    # 
    attr_accessor :integration

    # 
    attr_accessor :items

    # 
    attr_accessor :language

    # 
    attr_accessor :shipping_address

    # 
    attr_accessor :shipping_method_name

    # 
    attr_accessor :space_view_id

    # 
    attr_accessor :store_order_confirmation_email_enabled

    # 
    attr_accessor :subscriber

    # 
    attr_accessor :subscriber_suspension_allowed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_address' => :'billingAddress',
        :'billing_configuration' => :'billingConfiguration',
        :'currency' => :'currency',
        :'external_id' => :'externalId',
        :'initial_execution_date' => :'initialExecutionDate',
        :'integration' => :'integration',
        :'items' => :'items',
        :'language' => :'language',
        :'shipping_address' => :'shippingAddress',
        :'shipping_method_name' => :'shippingMethodName',
        :'space_view_id' => :'spaceViewId',
        :'store_order_confirmation_email_enabled' => :'storeOrderConfirmationEmailEnabled',
        :'subscriber' => :'subscriber',
        :'subscriber_suspension_allowed' => :'subscriberSuspensionAllowed'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billing_address' => :'ShopifySubscriptionAddressCreate',
        :'billing_configuration' => :'ShopifySubscriptionModelBillingConfiguration',
        :'currency' => :'String',
        :'external_id' => :'String',
        :'initial_execution_date' => :'DateTime',
        :'integration' => :'Integer',
        :'items' => :'Array<ShopifySubscriptionModelItem>',
        :'language' => :'String',
        :'shipping_address' => :'ShopifySubscriptionAddressCreate',
        :'shipping_method_name' => :'String',
        :'space_view_id' => :'Integer',
        :'store_order_confirmation_email_enabled' => :'BOOLEAN',
        :'subscriber' => :'ShopifySubscriberCreation',
        :'subscriber_suspension_allowed' => :'BOOLEAN'
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

      if attributes.has_key?(:'billingConfiguration')
        self.billing_configuration = attributes[:'billingConfiguration']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'initialExecutionDate')
        self.initial_execution_date = attributes[:'initialExecutionDate']
      end

      if attributes.has_key?(:'integration')
        self.integration = attributes[:'integration']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'shippingMethodName')
        self.shipping_method_name = attributes[:'shippingMethodName']
      end

      if attributes.has_key?(:'spaceViewId')
        self.space_view_id = attributes[:'spaceViewId']
      end

      if attributes.has_key?(:'storeOrderConfirmationEmailEnabled')
        self.store_order_confirmation_email_enabled = attributes[:'storeOrderConfirmationEmailEnabled']
      end

      if attributes.has_key?(:'subscriber')
        self.subscriber = attributes[:'subscriber']
      end

      if attributes.has_key?(:'subscriberSuspensionAllowed')
        self.subscriber_suspension_allowed = attributes[:'subscriberSuspensionAllowed']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @billing_address.nil?
        invalid_properties.push('invalid value for "billing_address", billing_address cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @integration.nil?
        invalid_properties.push('invalid value for "integration", integration cannot be nil.')
      end

      if @items.nil?
        invalid_properties.push('invalid value for "items", items cannot be nil.')
      end

      if @language.nil?
        invalid_properties.push('invalid value for "language", language cannot be nil.')
      end

      if @shipping_address.nil?
        invalid_properties.push('invalid value for "shipping_address", shipping_address cannot be nil.')
      end

      if @subscriber.nil?
        invalid_properties.push('invalid value for "subscriber", subscriber cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @billing_address.nil?
      return false if @currency.nil?
      return false if @external_id.nil?
      return false if @integration.nil?
      return false if @items.nil?
      return false if @language.nil?
      return false if @shipping_address.nil?
      return false if @subscriber.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_address == o.billing_address &&
          billing_configuration == o.billing_configuration &&
          currency == o.currency &&
          external_id == o.external_id &&
          initial_execution_date == o.initial_execution_date &&
          integration == o.integration &&
          items == o.items &&
          language == o.language &&
          shipping_address == o.shipping_address &&
          shipping_method_name == o.shipping_method_name &&
          space_view_id == o.space_view_id &&
          store_order_confirmation_email_enabled == o.store_order_confirmation_email_enabled &&
          subscriber == o.subscriber &&
          subscriber_suspension_allowed == o.subscriber_suspension_allowed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billing_address, billing_configuration, currency, external_id, initial_execution_date, integration, items, language, shipping_address, shipping_method_name, space_view_id, store_order_confirmation_email_enabled, subscriber, subscriber_suspension_allowed].hash
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
