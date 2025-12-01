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
  class PaymentLinkUpdate
    attr_accessor :shipping_address_handling_mode

    # The domains to which the user is allowed to be redirected after the payment is completed. The following options can be configured: Exact domain: enter a full domain, e.g. (https://example.com). Wildcard domain: use to allow subdomains, e.g. (https://*.example.com). All domains: use (ALL) to allow redirection to any domain (not recommended for security reasons). No domains : use (NONE) to disallow any redirection. Only one option per line is allowed. Invalid entries will be rejected. 
    attr_accessor :allowed_redirection_domains

    # The language for displaying the payment page. If not specified, it can be supplied via the 'language' request parameter.
    attr_accessor :language

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # The earliest date the payment link can be used to initiate a transaction. If no date is provided, the link will be available immediately.
    attr_accessor :available_from

    # The line items representing what is being sold. If not specified, they can be supplied via request parameters.
    attr_accessor :line_items

    # The latest date the payment link can be used to initiate a transaction. If no date is provided, the link will remain available indefinitely.
    attr_accessor :available_until

    # The name used to identify the payment link.
    attr_accessor :name

    # The three-letter currency code (ISO 4217). If not specified, it must be provided in the 'currency' request parameter.
    attr_accessor :currency

    # The maximum number of transactions that can be initiated using the payment link.
    attr_accessor :maximal_number_of_transactions

    # The payment method configurations that customers can use for making payments.
    attr_accessor :allowed_payment_method_configurations

    # The payment link can be used within a specific space view, which may apply a customized design to the payment page.
    attr_accessor :applied_space_view

    attr_accessor :billing_address_handling_mode

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'shipping_address_handling_mode' => :'shippingAddressHandlingMode',
        :'allowed_redirection_domains' => :'allowedRedirectionDomains',
        :'language' => :'language',
        :'version' => :'version',
        :'available_from' => :'availableFrom',
        :'line_items' => :'lineItems',
        :'available_until' => :'availableUntil',
        :'name' => :'name',
        :'currency' => :'currency',
        :'maximal_number_of_transactions' => :'maximalNumberOfTransactions',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'applied_space_view' => :'appliedSpaceView',
        :'billing_address_handling_mode' => :'billingAddressHandlingMode'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shipping_address_handling_mode' => :'PaymentLinkAddressHandlingMode',
        :'allowed_redirection_domains' => :'Array<String>',
        :'language' => :'String',
        :'version' => :'Integer',
        :'available_from' => :'Time',
        :'line_items' => :'Array<LineItemCreate>',
        :'available_until' => :'Time',
        :'name' => :'String',
        :'currency' => :'String',
        :'maximal_number_of_transactions' => :'Integer',
        :'allowed_payment_method_configurations' => :'Array<PaymentMethodConfiguration>',
        :'applied_space_view' => :'Integer',
        :'billing_address_handling_mode' => :'PaymentLinkAddressHandlingMode'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::PaymentLinkUpdate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::PaymentLinkUpdate`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shipping_address_handling_mode')
        self.shipping_address_handling_mode = attributes[:'shipping_address_handling_mode']
      end

      if attributes.key?(:'allowed_redirection_domains')
        if (value = attributes[:'allowed_redirection_domains']).is_a?(Array)
          self.allowed_redirection_domains = value
        end
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end

      if attributes.key?(:'available_from')
        self.available_from = attributes[:'available_from']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'available_until')
        self.available_until = attributes[:'available_until']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'maximal_number_of_transactions')
        self.maximal_number_of_transactions = attributes[:'maximal_number_of_transactions']
      end

      if attributes.key?(:'allowed_payment_method_configurations')
        if (value = attributes[:'allowed_payment_method_configurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.key?(:'applied_space_view')
        self.applied_space_view = attributes[:'applied_space_view']
      end

      if attributes.key?(:'billing_address_handling_mode')
        self.billing_address_handling_mode = attributes[:'billing_address_handling_mode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@allowed_redirection_domains.nil? && @allowed_redirection_domains.length < 1
        invalid_properties.push('invalid value for "allowed_redirection_domains", number of items must be greater than or equal to 1.')
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
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@allowed_redirection_domains.nil? && @allowed_redirection_domains.length < 1
      return false if @version.nil?
      return false if !@name.nil? && @name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] allowed_redirection_domains Value to be assigned
    def allowed_redirection_domains=(allowed_redirection_domains)
      if allowed_redirection_domains.nil?
        fail ArgumentError, 'allowed_redirection_domains cannot be nil'
      end

      if allowed_redirection_domains.length < 1
        fail ArgumentError, 'invalid value for "allowed_redirection_domains", number of items must be greater than or equal to 1.'
      end

      @allowed_redirection_domains = allowed_redirection_domains
    end

    # Custom attribute writer method with validation
    # @param [Object] version Value to be assigned
    def version=(version)
      if version.nil?
        fail ArgumentError, 'version cannot be nil'
      end

      @version = version
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] allowed_payment_method_configurations Value to be assigned
    def allowed_payment_method_configurations=(allowed_payment_method_configurations)
      if allowed_payment_method_configurations.nil?
        fail ArgumentError, 'allowed_payment_method_configurations cannot be nil'
      end

      @allowed_payment_method_configurations = allowed_payment_method_configurations
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shipping_address_handling_mode == o.shipping_address_handling_mode &&
          allowed_redirection_domains == o.allowed_redirection_domains &&
          language == o.language &&
          version == o.version &&
          available_from == o.available_from &&
          line_items == o.line_items &&
          available_until == o.available_until &&
          name == o.name &&
          currency == o.currency &&
          maximal_number_of_transactions == o.maximal_number_of_transactions &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          applied_space_view == o.applied_space_view &&
          billing_address_handling_mode == o.billing_address_handling_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shipping_address_handling_mode, allowed_redirection_domains, language, version, available_from, line_items, available_until, name, currency, maximal_number_of_transactions, allowed_payment_method_configurations, applied_space_view, billing_address_handling_mode].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = WalleeRubySdk.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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
