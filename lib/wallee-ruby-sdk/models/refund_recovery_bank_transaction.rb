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
  class RefundRecoveryBankTransaction
    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :linked_transaction

    # 
    attr_accessor :bank_transaction

    # 
    attr_accessor :language

    # The line items contain the items which could be recovered.
    attr_accessor :line_items

    # 
    attr_accessor :refund

    # Specify the posting amount in the refund's currency.
    attr_accessor :refund_currency_amount

    # 
    attr_accessor :refund_currency_value_amount

    # 
    attr_accessor :space_view_id

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'linked_transaction' => :'linkedTransaction',
        :'bank_transaction' => :'bankTransaction',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'refund' => :'refund',
        :'refund_currency_amount' => :'refundCurrencyAmount',
        :'refund_currency_value_amount' => :'refundCurrencyValueAmount',
        :'space_view_id' => :'spaceViewId',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'linked_transaction' => :'Integer',
        :'bank_transaction' => :'BankTransaction',
        :'language' => :'String',
        :'line_items' => :'Array<LineItem>',
        :'refund' => :'Refund',
        :'refund_currency_amount' => :'Float',
        :'refund_currency_value_amount' => :'Float',
        :'space_view_id' => :'Integer',
        :'version' => :'Integer'
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

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'linkedTransaction')
        self.linked_transaction = attributes[:'linkedTransaction']
      end

      if attributes.has_key?(:'bankTransaction')
        self.bank_transaction = attributes[:'bankTransaction']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'refund')
        self.refund = attributes[:'refund']
      end

      if attributes.has_key?(:'refundCurrencyAmount')
        self.refund_currency_amount = attributes[:'refundCurrencyAmount']
      end

      if attributes.has_key?(:'refundCurrencyValueAmount')
        self.refund_currency_value_amount = attributes[:'refundCurrencyValueAmount']
      end

      if attributes.has_key?(:'spaceViewId')
        self.space_view_id = attributes[:'spaceViewId']
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
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          linked_transaction == o.linked_transaction &&
          bank_transaction == o.bank_transaction &&
          language == o.language &&
          line_items == o.line_items &&
          refund == o.refund &&
          refund_currency_amount == o.refund_currency_amount &&
          refund_currency_value_amount == o.refund_currency_value_amount &&
          space_view_id == o.space_view_id &&
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
      [id, linked_space_id, linked_transaction, bank_transaction, language, line_items, refund, refund_currency_amount, refund_currency_value_amount, space_view_id, version].hash
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
