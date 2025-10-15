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
  class AbstractPaymentLinkUpdate
    # The payment method configurations that customers can use for making payments.
    attr_accessor :allowed_payment_method_configurations

    # The domains to which the user is allowed to be redirected after the payment is completed. The following options can be configured: Exact domain: enter a full domain, e.g. (https://example.com). Wildcard domain: use to allow subdomains, e.g. (https://*.example.com). All domains: use (ALL) to allow redirection to any domain (not recommended for security reasons). No domains : use (NONE) to disallow any redirection. Only one option per line is allowed. Invalid entries will be rejected. 
    attr_accessor :allowed_redirection_domains

    # The payment link can be used within a specific space view, which may apply a customized design to the payment page.
    attr_accessor :applied_space_view

    # The earliest date the payment link can be used to initiate a transaction. If no date is provided, the link will be available immediately.
    attr_accessor :available_from

    # The latest date the payment link can be used to initiate a transaction. If no date is provided, the link will remain available indefinitely.
    attr_accessor :available_until

    # The handling mode defines whether a billing address is required and specifies how it should be provided.
    attr_accessor :billing_address_handling_mode

    # The three-letter currency code (ISO 4217). If not specified, it must be provided in the 'currency' request parameter.
    attr_accessor :currency

    # The language for displaying the payment page. If not specified, it can be supplied via the 'language' request parameter.
    attr_accessor :language

    # The line items representing what is being sold. If not specified, they can be supplied via request parameters.
    attr_accessor :line_items

    # The maximum number of transactions that can be initiated using the payment link.
    attr_accessor :maximal_number_of_transactions

    # The name used to identify the payment link.
    attr_accessor :name

    # The handling mode defines whether a shipping address is required and specifies how it should be provided.
    attr_accessor :shipping_address_handling_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'allowed_redirection_domains' => :'allowedRedirectionDomains',
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
        :'allowed_payment_method_configurations' => :'Array<PaymentMethodConfiguration>',
        :'allowed_redirection_domains' => :'Array<String>',
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

      if attributes.has_key?(:'allowedPaymentMethodConfigurations')
        if (value = attributes[:'allowedPaymentMethodConfigurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'allowedRedirectionDomains')
        if (value = attributes[:'allowedRedirectionDomains']).is_a?(Array)
          self.allowed_redirection_domains = value
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
      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
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
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          allowed_redirection_domains == o.allowed_redirection_domains &&
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
      [allowed_payment_method_configurations, allowed_redirection_domains, applied_space_view, available_from, available_until, billing_address_handling_mode, currency, language, line_items, maximal_number_of_transactions, name, shipping_address_handling_mode].hash
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
