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
  class RefundBankTransaction
    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The value amount represents the net monetary value of the bank transaction, recorded in the refund's currency, after applicable deductions.
    attr_accessor :refund_currency_value_amount

    # The posting amount represents the monetary value of the bank transaction, recorded in the refund's currency, before applying any adjustments.
    attr_accessor :refund_currency_amount

    # The language that is linked to the object.
    attr_accessor :language

    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    attr_accessor :bank_transaction

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    attr_accessor :refund

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'linked_space_id' => :'linkedSpaceId',
        :'refund_currency_value_amount' => :'refundCurrencyValueAmount',
        :'refund_currency_amount' => :'refundCurrencyAmount',
        :'language' => :'language',
        :'id' => :'id',
        :'space_view_id' => :'spaceViewId',
        :'linked_transaction' => :'linkedTransaction',
        :'bank_transaction' => :'bankTransaction',
        :'version' => :'version',
        :'refund' => :'refund'
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
        :'linked_space_id' => :'Integer',
        :'refund_currency_value_amount' => :'Float',
        :'refund_currency_amount' => :'Float',
        :'language' => :'String',
        :'id' => :'Integer',
        :'space_view_id' => :'Integer',
        :'linked_transaction' => :'Integer',
        :'bank_transaction' => :'BankTransaction',
        :'version' => :'Integer',
        :'refund' => :'Refund'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::RefundBankTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::RefundBankTransaction`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'refund_currency_value_amount')
        self.refund_currency_value_amount = attributes[:'refund_currency_value_amount']
      end

      if attributes.key?(:'refund_currency_amount')
        self.refund_currency_amount = attributes[:'refund_currency_amount']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'space_view_id')
        self.space_view_id = attributes[:'space_view_id']
      end

      if attributes.key?(:'linked_transaction')
        self.linked_transaction = attributes[:'linked_transaction']
      end

      if attributes.key?(:'bank_transaction')
        self.bank_transaction = attributes[:'bank_transaction']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'refund')
        self.refund = attributes[:'refund']
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
          linked_space_id == o.linked_space_id &&
          refund_currency_value_amount == o.refund_currency_value_amount &&
          refund_currency_amount == o.refund_currency_amount &&
          language == o.language &&
          id == o.id &&
          space_view_id == o.space_view_id &&
          linked_transaction == o.linked_transaction &&
          bank_transaction == o.bank_transaction &&
          version == o.version &&
          refund == o.refund
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [linked_space_id, refund_currency_value_amount, refund_currency_amount, language, id, space_view_id, linked_transaction, bank_transaction, version, refund].hash
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
