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
  # The payment link defines an URL to automatically create transactions.
  class PaymentLinkUpdate
    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # The allowed payment method configurations restrict the payment methods which can be used with this payment link.
    attr_accessor :allowed_payment_method_configurations

    # The payment link can be conducted in a specific space view. The space view may apply a specific design to the payment page.
    attr_accessor :applied_space_view

    # The available from date defines the earliest date on which the payment link can be used. When no date is specified there will be no restriction.
    attr_accessor :available_from

    # The available from date defines the latest date on which the payment link can be used to initialize a transaction. When no date is specified there will be no restriction.
    attr_accessor :available_until

    # The billing address handling mode controls if the address is collected or not and how it is collected.
    attr_accessor :billing_address_handling_mode

    # The currency defines in which currency the payment is executed in. If no currency is defined it has to be specified within the request parameter 'currency'.
    attr_accessor :currency

    # The language defines the language of the payment page. If no language is provided it can be provided through the request parameter.
    attr_accessor :language

    # The line items allows to define the line items for this payment link. When the line items are defined they cannot be overridden through the request parameters. If no amount for the payment link is defined, the additional checkout page to enter the amount is shown to the consumer.
    attr_accessor :line_items

    # The maximal number of transactions limits the number of transactions which can be created with this payment link.
    attr_accessor :maximal_number_of_transactions

    # The payment link name is used internally to identify the payment link. For example the name is used within search fields and hence it should be distinct and descriptive.
    attr_accessor :name

    # The shipping address handling mode controls if the address is collected or not and how it is collected.
    attr_accessor :shipping_address_handling_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'version' => :'version',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'applied_space_view' => :'appliedSpaceView',
        :'available_from' => :'availableFrom',
        :'available_until' => :'availableUntil',
        :'billing_address_handling_mode' => :'billingAddressHandlingMode',
        :'currency' => :'currency',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'maximal_number_of_transactions' => :'maximalNumberOfTransactions',
        :'name' => :'name',
        :'shipping_address_handling_mode' => :'shippingAddressHandlingMode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'version' => :'Integer',
        :'allowed_payment_method_configurations' => :'Array<PaymentMethodConfiguration>',
        :'applied_space_view' => :'Integer',
        :'available_from' => :'DateTime',
        :'available_until' => :'DateTime',
        :'billing_address_handling_mode' => :'PaymentLinkAddressHandlingMode',
        :'currency' => :'String',
        :'language' => :'String',
        :'line_items' => :'Array<LineItemCreate>',
        :'maximal_number_of_transactions' => :'Integer',
        :'name' => :'String',
        :'shipping_address_handling_mode' => :'PaymentLinkAddressHandlingMode'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'allowedPaymentMethodConfigurations')
        if (value = attributes[:'allowedPaymentMethodConfigurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'appliedSpaceView')
        self.applied_space_view = attributes[:'appliedSpaceView']
      end

      if attributes.has_key?(:'availableFrom')
        self.available_from = attributes[:'availableFrom']
      end

      if attributes.has_key?(:'availableUntil')
        self.available_until = attributes[:'availableUntil']
      end

      if attributes.has_key?(:'billingAddressHandlingMode')
        self.billing_address_handling_mode = attributes[:'billingAddressHandlingMode']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'maximalNumberOfTransactions')
        self.maximal_number_of_transactions = attributes[:'maximalNumberOfTransactions']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'shippingAddressHandlingMode')
        self.shipping_address_handling_mode = attributes[:'shippingAddressHandlingMode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @version.nil?
      return false if !@name.nil? && @name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          version == o.version &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          applied_space_view == o.applied_space_view &&
          available_from == o.available_from &&
          available_until == o.available_until &&
          billing_address_handling_mode == o.billing_address_handling_mode &&
          currency == o.currency &&
          language == o.language &&
          line_items == o.line_items &&
          maximal_number_of_transactions == o.maximal_number_of_transactions &&
          name == o.name &&
          shipping_address_handling_mode == o.shipping_address_handling_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, version, allowed_payment_method_configurations, applied_space_view, available_from, available_until, billing_address_handling_mode, currency, language, line_items, maximal_number_of_transactions, name, shipping_address_handling_mode].hash
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
