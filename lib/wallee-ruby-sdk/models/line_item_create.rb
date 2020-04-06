=begin
wallee API: 2.1.0

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
  class LineItemCreate
    # 
    attr_accessor :amount_including_tax

    # 
    attr_accessor :attributes

    # 
    attr_accessor :discount_including_tax

    # 
    attr_accessor :name

    # 
    attr_accessor :quantity

    # 
    attr_accessor :shipping_required

    # 
    attr_accessor :sku

    # 
    attr_accessor :taxes

    # 
    attr_accessor :type

    # The unique id identifies the line item within the set of line items associated with the transaction.
    attr_accessor :unique_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount_including_tax' => :'amountIncludingTax',
        :'attributes' => :'attributes',
        :'discount_including_tax' => :'discountIncludingTax',
        :'name' => :'name',
        :'quantity' => :'quantity',
        :'shipping_required' => :'shippingRequired',
        :'sku' => :'sku',
        :'taxes' => :'taxes',
        :'type' => :'type',
        :'unique_id' => :'uniqueId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount_including_tax' => :'Float',
        :'attributes' => :'Hash<String, LineItemAttributeCreate>',
        :'discount_including_tax' => :'Float',
        :'name' => :'String',
        :'quantity' => :'Float',
        :'shipping_required' => :'BOOLEAN',
        :'sku' => :'String',
        :'taxes' => :'Array<TaxCreate>',
        :'type' => :'LineItemType',
        :'unique_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amountIncludingTax')
        self.amount_including_tax = attributes[:'amountIncludingTax']
      end

      if attributes.has_key?(:'attributes')
        if (value = attributes[:'attributes']).is_a?(Hash)
          self.attributes = value
        end
      end

      if attributes.has_key?(:'discountIncludingTax')
        self.discount_including_tax = attributes[:'discountIncludingTax']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'shippingRequired')
        self.shipping_required = attributes[:'shippingRequired']
      end

      if attributes.has_key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'uniqueId')
        self.unique_id = attributes[:'uniqueId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount_including_tax.nil?
        invalid_properties.push('invalid value for "amount_including_tax", amount_including_tax cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @unique_id.nil?
        invalid_properties.push('invalid value for "unique_id", unique_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount_including_tax.nil?
      return false if @name.nil?
      return false if @quantity.nil?
      return false if @type.nil?
      return false if @unique_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount_including_tax == o.amount_including_tax &&
          attributes == o.attributes &&
          discount_including_tax == o.discount_including_tax &&
          name == o.name &&
          quantity == o.quantity &&
          shipping_required == o.shipping_required &&
          sku == o.sku &&
          taxes == o.taxes &&
          type == o.type &&
          unique_id == o.unique_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amount_including_tax, attributes, discount_including_tax, name, quantity, shipping_required, sku, taxes, type, unique_id].hash
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
