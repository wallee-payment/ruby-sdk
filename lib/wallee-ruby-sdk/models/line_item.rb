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
  class LineItem
    # The calculated tax amount per unit.
    attr_accessor :tax_amount_per_unit

    # The line item price with discounts not applied, excluding taxes.
    attr_accessor :undiscounted_amount_excluding_tax

    # The number of items that were purchased.
    attr_accessor :quantity

    # The calculated price per unit with discounts not applied, including taxes.
    attr_accessor :undiscounted_unit_price_including_tax

    # The line item price with discounts applied, excluding taxes.
    attr_accessor :amount_excluding_tax

    # The line item price with discounts not applied, including taxes.
    attr_accessor :undiscounted_amount_including_tax

    # A set of tax lines, each of which specifies a tax applied to the item.
    attr_accessor :taxes

    attr_accessor :type

    # The calculated price per unit with discounts applied, including taxes.
    attr_accessor :unit_price_including_tax

    # The discount allocated to the item, excluding taxes.
    attr_accessor :discount_excluding_tax

    # Whether the item required shipping.
    attr_accessor :shipping_required

    # The calculated price per unit with discounts applied, excluding taxes.
    attr_accessor :unit_price_excluding_tax

    # The name of the product, ideally in the customer's language.
    attr_accessor :name

    # A map of custom information for the item.
    attr_accessor :attributes

    # The calculated price per unit with discounts not applied, excluding taxes.
    attr_accessor :undiscounted_unit_price_excluding_tax

    # The line item price with discounts applied, including taxes.
    attr_accessor :amount_including_tax

    # The discount allocated to the item, including taxes.
    attr_accessor :discount_including_tax

    # The SKU (stock-keeping unit) of the product.
    attr_accessor :sku

    # The sum of all taxes applied to the item.
    attr_accessor :tax_amount

    # The total tax rate applied to the item, calculated from the rates of all tax lines.
    attr_accessor :aggregated_tax_rate

    # The unique identifier of the line item within the set of line items.
    attr_accessor :unique_id

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
        :'tax_amount_per_unit' => :'taxAmountPerUnit',
        :'undiscounted_amount_excluding_tax' => :'undiscountedAmountExcludingTax',
        :'quantity' => :'quantity',
        :'undiscounted_unit_price_including_tax' => :'undiscountedUnitPriceIncludingTax',
        :'amount_excluding_tax' => :'amountExcludingTax',
        :'undiscounted_amount_including_tax' => :'undiscountedAmountIncludingTax',
        :'taxes' => :'taxes',
        :'type' => :'type',
        :'unit_price_including_tax' => :'unitPriceIncludingTax',
        :'discount_excluding_tax' => :'discountExcludingTax',
        :'shipping_required' => :'shippingRequired',
        :'unit_price_excluding_tax' => :'unitPriceExcludingTax',
        :'name' => :'name',
        :'attributes' => :'attributes',
        :'undiscounted_unit_price_excluding_tax' => :'undiscountedUnitPriceExcludingTax',
        :'amount_including_tax' => :'amountIncludingTax',
        :'discount_including_tax' => :'discountIncludingTax',
        :'sku' => :'sku',
        :'tax_amount' => :'taxAmount',
        :'aggregated_tax_rate' => :'aggregatedTaxRate',
        :'unique_id' => :'uniqueId'
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
        :'tax_amount_per_unit' => :'Float',
        :'undiscounted_amount_excluding_tax' => :'Float',
        :'quantity' => :'Float',
        :'undiscounted_unit_price_including_tax' => :'Float',
        :'amount_excluding_tax' => :'Float',
        :'undiscounted_amount_including_tax' => :'Float',
        :'taxes' => :'Array<Tax>',
        :'type' => :'LineItemType',
        :'unit_price_including_tax' => :'Float',
        :'discount_excluding_tax' => :'Float',
        :'shipping_required' => :'Boolean',
        :'unit_price_excluding_tax' => :'Float',
        :'name' => :'String',
        :'attributes' => :'Hash<String, LineItemAttribute>',
        :'undiscounted_unit_price_excluding_tax' => :'Float',
        :'amount_including_tax' => :'Float',
        :'discount_including_tax' => :'Float',
        :'sku' => :'String',
        :'tax_amount' => :'Float',
        :'aggregated_tax_rate' => :'Float',
        :'unique_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::LineItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::LineItem`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tax_amount_per_unit')
        self.tax_amount_per_unit = attributes[:'tax_amount_per_unit']
      end

      if attributes.key?(:'undiscounted_amount_excluding_tax')
        self.undiscounted_amount_excluding_tax = attributes[:'undiscounted_amount_excluding_tax']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'undiscounted_unit_price_including_tax')
        self.undiscounted_unit_price_including_tax = attributes[:'undiscounted_unit_price_including_tax']
      end

      if attributes.key?(:'amount_excluding_tax')
        self.amount_excluding_tax = attributes[:'amount_excluding_tax']
      end

      if attributes.key?(:'undiscounted_amount_including_tax')
        self.undiscounted_amount_including_tax = attributes[:'undiscounted_amount_including_tax']
      end

      if attributes.key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'unit_price_including_tax')
        self.unit_price_including_tax = attributes[:'unit_price_including_tax']
      end

      if attributes.key?(:'discount_excluding_tax')
        self.discount_excluding_tax = attributes[:'discount_excluding_tax']
      end

      if attributes.key?(:'shipping_required')
        self.shipping_required = attributes[:'shipping_required']
      end

      if attributes.key?(:'unit_price_excluding_tax')
        self.unit_price_excluding_tax = attributes[:'unit_price_excluding_tax']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'attributes')
        if (value = attributes[:'attributes']).is_a?(Hash)
          self.attributes = value
        end
      end

      if attributes.key?(:'undiscounted_unit_price_excluding_tax')
        self.undiscounted_unit_price_excluding_tax = attributes[:'undiscounted_unit_price_excluding_tax']
      end

      if attributes.key?(:'amount_including_tax')
        self.amount_including_tax = attributes[:'amount_including_tax']
      end

      if attributes.key?(:'discount_including_tax')
        self.discount_including_tax = attributes[:'discount_including_tax']
      end

      if attributes.key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.key?(:'aggregated_tax_rate')
        self.aggregated_tax_rate = attributes[:'aggregated_tax_rate']
      end

      if attributes.key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 150
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 150.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@sku.nil? && @sku.to_s.length > 200
        invalid_properties.push('invalid value for "sku", the character length must be smaller than or equal to 200.')
      end

      if !@unique_id.nil? && @unique_id.to_s.length > 200
        invalid_properties.push('invalid value for "unique_id", the character length must be smaller than or equal to 200.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 150
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@sku.nil? && @sku.to_s.length > 200
      return false if !@unique_id.nil? && @unique_id.to_s.length > 200
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] taxes Value to be assigned
    def taxes=(taxes)
      if taxes.nil?
        fail ArgumentError, 'taxes cannot be nil'
      end

      @taxes = taxes
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 150
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 150.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] sku Value to be assigned
    def sku=(sku)
      if sku.nil?
        fail ArgumentError, 'sku cannot be nil'
      end

      if sku.to_s.length > 200
        fail ArgumentError, 'invalid value for "sku", the character length must be smaller than or equal to 200.'
      end

      @sku = sku
    end

    # Custom attribute writer method with validation
    # @param [Object] unique_id Value to be assigned
    def unique_id=(unique_id)
      if unique_id.nil?
        fail ArgumentError, 'unique_id cannot be nil'
      end

      if unique_id.to_s.length > 200
        fail ArgumentError, 'invalid value for "unique_id", the character length must be smaller than or equal to 200.'
      end

      @unique_id = unique_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tax_amount_per_unit == o.tax_amount_per_unit &&
          undiscounted_amount_excluding_tax == o.undiscounted_amount_excluding_tax &&
          quantity == o.quantity &&
          undiscounted_unit_price_including_tax == o.undiscounted_unit_price_including_tax &&
          amount_excluding_tax == o.amount_excluding_tax &&
          undiscounted_amount_including_tax == o.undiscounted_amount_including_tax &&
          taxes == o.taxes &&
          type == o.type &&
          unit_price_including_tax == o.unit_price_including_tax &&
          discount_excluding_tax == o.discount_excluding_tax &&
          shipping_required == o.shipping_required &&
          unit_price_excluding_tax == o.unit_price_excluding_tax &&
          name == o.name &&
          attributes == o.attributes &&
          undiscounted_unit_price_excluding_tax == o.undiscounted_unit_price_excluding_tax &&
          amount_including_tax == o.amount_including_tax &&
          discount_including_tax == o.discount_including_tax &&
          sku == o.sku &&
          tax_amount == o.tax_amount &&
          aggregated_tax_rate == o.aggregated_tax_rate &&
          unique_id == o.unique_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tax_amount_per_unit, undiscounted_amount_excluding_tax, quantity, undiscounted_unit_price_including_tax, amount_excluding_tax, undiscounted_amount_including_tax, taxes, type, unit_price_including_tax, discount_excluding_tax, shipping_required, unit_price_excluding_tax, name, attributes, undiscounted_unit_price_excluding_tax, amount_including_tax, discount_including_tax, sku, tax_amount, aggregated_tax_rate, unique_id].hash
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
