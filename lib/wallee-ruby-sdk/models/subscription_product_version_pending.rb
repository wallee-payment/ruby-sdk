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
  class SubscriptionProductVersionPending
    # The three-letter codes (ISO 4217 format) of the currencies that the product version supports.
    attr_accessor :enabled_currencies

    # The product that the version belongs to.
    attr_accessor :product

    attr_accessor :tax_calculation

    # The recurring period of time, typically monthly or annually, for which a subscriber is charged.
    attr_accessor :billing_cycle

    # The three-letter code (ISO 4217 format) of the product version's default currency.
    attr_accessor :default_currency

    # The localized name of the product that is displayed to the customer.
    attr_accessor :name

    # The minimum number of periods the subscription will run before it can be terminated.
    attr_accessor :minimal_number_of_periods

    # A comment that describes the product version and why it was created. It is not disclosed to the subscriber.
    attr_accessor :comment

    attr_accessor :state

    # The number of periods the subscription will keep running after its termination was requested.
    attr_accessor :number_of_notice_periods

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

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
        :'enabled_currencies' => :'enabledCurrencies',
        :'product' => :'product',
        :'tax_calculation' => :'taxCalculation',
        :'billing_cycle' => :'billingCycle',
        :'default_currency' => :'defaultCurrency',
        :'name' => :'name',
        :'minimal_number_of_periods' => :'minimalNumberOfPeriods',
        :'comment' => :'comment',
        :'state' => :'state',
        :'number_of_notice_periods' => :'numberOfNoticePeriods',
        :'version' => :'version'
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
        :'enabled_currencies' => :'Array<String>',
        :'product' => :'Integer',
        :'tax_calculation' => :'TaxCalculation',
        :'billing_cycle' => :'String',
        :'default_currency' => :'String',
        :'name' => :'Hash<String, String>',
        :'minimal_number_of_periods' => :'Integer',
        :'comment' => :'String',
        :'state' => :'SubscriptionProductVersionState',
        :'number_of_notice_periods' => :'Integer',
        :'version' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::SubscriptionProductVersionPending` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::SubscriptionProductVersionPending`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'enabled_currencies')
        if (value = attributes[:'enabled_currencies']).is_a?(Array)
          self.enabled_currencies = value
        end
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'tax_calculation')
        self.tax_calculation = attributes[:'tax_calculation']
      end

      if attributes.key?(:'billing_cycle')
        self.billing_cycle = attributes[:'billing_cycle']
      end

      if attributes.key?(:'default_currency')
        self.default_currency = attributes[:'default_currency']
      end

      if attributes.key?(:'name')
        if (value = attributes[:'name']).is_a?(Hash)
          self.name = value
        end
      end

      if attributes.key?(:'minimal_number_of_periods')
        self.minimal_number_of_periods = attributes[:'minimal_number_of_periods']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'number_of_notice_periods')
        self.number_of_notice_periods = attributes[:'number_of_notice_periods']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] enabled_currencies Value to be assigned
    def enabled_currencies=(enabled_currencies)
      if enabled_currencies.nil?
        fail ArgumentError, 'enabled_currencies cannot be nil'
      end

      @enabled_currencies = enabled_currencies
    end

    # Custom attribute writer method with validation
    # @param [Object] version Value to be assigned
    def version=(version)
      if version.nil?
        fail ArgumentError, 'version cannot be nil'
      end

      @version = version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enabled_currencies == o.enabled_currencies &&
          product == o.product &&
          tax_calculation == o.tax_calculation &&
          billing_cycle == o.billing_cycle &&
          default_currency == o.default_currency &&
          name == o.name &&
          minimal_number_of_periods == o.minimal_number_of_periods &&
          comment == o.comment &&
          state == o.state &&
          number_of_notice_periods == o.number_of_notice_periods &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [enabled_currencies, product, tax_calculation, billing_cycle, default_currency, name, minimal_number_of_periods, comment, state, number_of_notice_periods, version].hash
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
