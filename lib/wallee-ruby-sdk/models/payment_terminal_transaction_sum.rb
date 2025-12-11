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
  # Represents the aggregated transaction data for a specific brand and currency, including regular and DCC (Dynamic Currency Conversion) transactions.
  class PaymentTerminalTransactionSum
    # The total amount of tips from regular (non-DCC) transactions in the transaction currency.
    attr_accessor :transaction_tip_amount

    # The product within the brand for which transactions are summarized.
    attr_accessor :product

    # The base currency in which the transactions were processed and settled, excluding any DCC conversions.
    attr_accessor :transaction_currency

    # The total monetary value of all transactions in the transaction currency, excluding DCC transactions.
    attr_accessor :transaction_amount

    # The total amount of tips from DCC transactions, converted and presented in the transaction currency.
    attr_accessor :dcc_tip_amount

    # A unique identifier for the object.
    attr_accessor :id

    # The total count of regular (non-DCC) transactions processed within this summary period.
    attr_accessor :transaction_count

    # The payment brand for which the transactions are summarized.
    attr_accessor :brand

    # The number of transactions where Dynamic Currency Conversion (DCC) was applied, allowing customers to pay in their home currency.
    attr_accessor :dcc_transaction_count

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The total monetary value of DCC transactions, converted and presented in the transaction currency.
    attr_accessor :dcc_transaction_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transaction_tip_amount' => :'transactionTipAmount',
        :'product' => :'product',
        :'transaction_currency' => :'transactionCurrency',
        :'transaction_amount' => :'transactionAmount',
        :'dcc_tip_amount' => :'dccTipAmount',
        :'id' => :'id',
        :'transaction_count' => :'transactionCount',
        :'brand' => :'brand',
        :'dcc_transaction_count' => :'dccTransactionCount',
        :'version' => :'version',
        :'dcc_transaction_amount' => :'dccTransactionAmount'
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
        :'transaction_tip_amount' => :'Float',
        :'product' => :'String',
        :'transaction_currency' => :'String',
        :'transaction_amount' => :'Float',
        :'dcc_tip_amount' => :'Float',
        :'id' => :'Integer',
        :'transaction_count' => :'Integer',
        :'brand' => :'String',
        :'dcc_transaction_count' => :'Integer',
        :'version' => :'Integer',
        :'dcc_transaction_amount' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::PaymentTerminalTransactionSum` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::PaymentTerminalTransactionSum`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'transaction_tip_amount')
        self.transaction_tip_amount = attributes[:'transaction_tip_amount']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'transaction_currency')
        self.transaction_currency = attributes[:'transaction_currency']
      end

      if attributes.key?(:'transaction_amount')
        self.transaction_amount = attributes[:'transaction_amount']
      end

      if attributes.key?(:'dcc_tip_amount')
        self.dcc_tip_amount = attributes[:'dcc_tip_amount']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'transaction_count')
        self.transaction_count = attributes[:'transaction_count']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'dcc_transaction_count')
        self.dcc_transaction_count = attributes[:'dcc_transaction_count']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'dcc_transaction_amount')
        self.dcc_transaction_amount = attributes[:'dcc_transaction_amount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transaction_tip_amount == o.transaction_tip_amount &&
          product == o.product &&
          transaction_currency == o.transaction_currency &&
          transaction_amount == o.transaction_amount &&
          dcc_tip_amount == o.dcc_tip_amount &&
          id == o.id &&
          transaction_count == o.transaction_count &&
          brand == o.brand &&
          dcc_transaction_count == o.dcc_transaction_count &&
          version == o.version &&
          dcc_transaction_amount == o.dcc_transaction_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [transaction_tip_amount, product, transaction_currency, transaction_amount, dcc_tip_amount, id, transaction_count, brand, dcc_transaction_count, version, dcc_transaction_amount].hash
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
