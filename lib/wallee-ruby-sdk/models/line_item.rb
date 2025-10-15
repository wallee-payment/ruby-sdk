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
  class LineItem
    # The total tax rate applied to the item, calculated from the rates of all tax lines.
    attr_accessor :aggregated_tax_rate

    # The line item price with discounts applied, excluding taxes.
    attr_accessor :amount_excluding_tax

    # The line item price with discounts applied, including taxes.
    attr_accessor :amount_including_tax

    # A map of custom information for the item.
    attr_accessor :attributes

    # The discount allocated to the item, excluding taxes.
    attr_accessor :discount_excluding_tax

    # The discount allocated to the item, including taxes.
    attr_accessor :discount_including_tax

    # The name of the product, ideally in the customer's language.
    attr_accessor :name

    # The number of items that were purchased.
    attr_accessor :quantity

    # Whether the item required shipping.
    attr_accessor :shipping_required

    # The SKU (stock-keeping unit) of the product.
    attr_accessor :sku

    # The sum of all taxes applied to the item.
    attr_accessor :tax_amount

    # The calculated tax amount per unit.
    attr_accessor :tax_amount_per_unit

    # A set of tax lines, each of which specifies a tax applied to the item.
    attr_accessor :taxes

    # The type of the line item.
    attr_accessor :type

    # The line item price with discounts not applied, excluding taxes.
    attr_accessor :undiscounted_amount_excluding_tax

    # The line item price with discounts not applied, including taxes.
    attr_accessor :undiscounted_amount_including_tax

    # The calculated price per unit with discounts not applied, excluding taxes.
    attr_accessor :undiscounted_unit_price_excluding_tax

    # The calculated price per unit with discounts not applied, including taxes.
    attr_accessor :undiscounted_unit_price_including_tax

    # The unique identifier of the line item within the set of line items.
    attr_accessor :unique_id

    # The calculated price per unit with discounts applied, excluding taxes.
    attr_accessor :unit_price_excluding_tax

    # The calculated price per unit with discounts applied, including taxes.
    attr_accessor :unit_price_including_tax

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aggregated_tax_rate' => :'aggregatedTaxRate',
        :'amount_excluding_tax' => :'amountExcludingTax',
        :'amount_including_tax' => :'amountIncludingTax',
        :'attributes' => :'attributes',
        :'discount_excluding_tax' => :'discountExcludingTax',
        :'discount_including_tax' => :'discountIncludingTax',
        :'name' => :'name',
        :'quantity' => :'quantity',
        :'shipping_required' => :'shippingRequired',
        :'sku' => :'sku',
        :'tax_amount' => :'taxAmount',
        :'tax_amount_per_unit' => :'taxAmountPerUnit',
        :'taxes' => :'taxes',
        :'type' => :'type',
        :'undiscounted_amount_excluding_tax' => :'undiscountedAmountExcludingTax',
        :'undiscounted_amount_including_tax' => :'undiscountedAmountIncludingTax',
        :'undiscounted_unit_price_excluding_tax' => :'undiscountedUnitPriceExcludingTax',
        :'undiscounted_unit_price_including_tax' => :'undiscountedUnitPriceIncludingTax',
        :'unique_id' => :'uniqueId',
        :'unit_price_excluding_tax' => :'unitPriceExcludingTax',
        :'unit_price_including_tax' => :'unitPriceIncludingTax'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aggregated_tax_rate' => :'Float',
        :'amount_excluding_tax' => :'Float',
        :'amount_including_tax' => :'Float',
        :'attributes' => :'Hash<String, LineItemAttribute>',
        :'discount_excluding_tax' => :'Float',
        :'discount_including_tax' => :'Float',
        :'name' => :'String',
        :'quantity' => :'Float',
        :'shipping_required' => :'BOOLEAN',
        :'sku' => :'String',
        :'tax_amount' => :'Float',
        :'tax_amount_per_unit' => :'Float',
        :'taxes' => :'Array<Tax>',
        :'type' => :'LineItemType',
        :'undiscounted_amount_excluding_tax' => :'Float',
        :'undiscounted_amount_including_tax' => :'Float',
        :'undiscounted_unit_price_excluding_tax' => :'Float',
        :'undiscounted_unit_price_including_tax' => :'Float',
        :'unique_id' => :'String',
        :'unit_price_excluding_tax' => :'Float',
        :'unit_price_including_tax' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'aggregatedTaxRate')
        self.aggregated_tax_rate = attributes[:'aggregatedTaxRate']
      end

      if attributes.has_key?(:'amountExcludingTax')
        self.amount_excluding_tax = attributes[:'amountExcludingTax']
      end

      if attributes.has_key?(:'amountIncludingTax')
        self.amount_including_tax = attributes[:'amountIncludingTax']
      end

      if attributes.has_key?(:'attributes')
        if (value = attributes[:'attributes']).is_a?(Hash)
          self.attributes = value
        end
      end

      if attributes.has_key?(:'discountExcludingTax')
        self.discount_excluding_tax = attributes[:'discountExcludingTax']
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

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'taxAmountPerUnit')
        self.tax_amount_per_unit = attributes[:'taxAmountPerUnit']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'undiscountedAmountExcludingTax')
        self.undiscounted_amount_excluding_tax = attributes[:'undiscountedAmountExcludingTax']
      end

      if attributes.has_key?(:'undiscountedAmountIncludingTax')
        self.undiscounted_amount_including_tax = attributes[:'undiscountedAmountIncludingTax']
      end

      if attributes.has_key?(:'undiscountedUnitPriceExcludingTax')
        self.undiscounted_unit_price_excluding_tax = attributes[:'undiscountedUnitPriceExcludingTax']
      end

      if attributes.has_key?(:'undiscountedUnitPriceIncludingTax')
        self.undiscounted_unit_price_including_tax = attributes[:'undiscountedUnitPriceIncludingTax']
      end

      if attributes.has_key?(:'uniqueId')
        self.unique_id = attributes[:'uniqueId']
      end

      if attributes.has_key?(:'unitPriceExcludingTax')
        self.unit_price_excluding_tax = attributes[:'unitPriceExcludingTax']
      end

      if attributes.has_key?(:'unitPriceIncludingTax')
        self.unit_price_including_tax = attributes[:'unitPriceIncludingTax']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
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
      return false if !@name.nil? && @name.to_s.length > 150
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@sku.nil? && @sku.to_s.length > 200
      return false if !@unique_id.nil? && @unique_id.to_s.length > 200
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 150
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 150.'
      end

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] sku Value to be assigned
    def sku=(sku)
      if !sku.nil? && sku.to_s.length > 200
        fail ArgumentError, 'invalid value for "sku", the character length must be smaller than or equal to 200.'
      end

      @sku = sku
    end

    # Custom attribute writer method with validation
    # @param [Object] unique_id Value to be assigned
    def unique_id=(unique_id)
      if !unique_id.nil? && unique_id.to_s.length > 200
        fail ArgumentError, 'invalid value for "unique_id", the character length must be smaller than or equal to 200.'
      end

      @unique_id = unique_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregated_tax_rate == o.aggregated_tax_rate &&
          amount_excluding_tax == o.amount_excluding_tax &&
          amount_including_tax == o.amount_including_tax &&
          attributes == o.attributes &&
          discount_excluding_tax == o.discount_excluding_tax &&
          discount_including_tax == o.discount_including_tax &&
          name == o.name &&
          quantity == o.quantity &&
          shipping_required == o.shipping_required &&
          sku == o.sku &&
          tax_amount == o.tax_amount &&
          tax_amount_per_unit == o.tax_amount_per_unit &&
          taxes == o.taxes &&
          type == o.type &&
          undiscounted_amount_excluding_tax == o.undiscounted_amount_excluding_tax &&
          undiscounted_amount_including_tax == o.undiscounted_amount_including_tax &&
          undiscounted_unit_price_excluding_tax == o.undiscounted_unit_price_excluding_tax &&
          undiscounted_unit_price_including_tax == o.undiscounted_unit_price_including_tax &&
          unique_id == o.unique_id &&
          unit_price_excluding_tax == o.unit_price_excluding_tax &&
          unit_price_including_tax == o.unit_price_including_tax
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [aggregated_tax_rate, amount_excluding_tax, amount_including_tax, attributes, discount_excluding_tax, discount_including_tax, name, quantity, shipping_required, sku, tax_amount, tax_amount_per_unit, taxes, type, undiscounted_amount_excluding_tax, undiscounted_amount_including_tax, undiscounted_unit_price_excluding_tax, undiscounted_unit_price_including_tax, unique_id, unit_price_excluding_tax, unit_price_including_tax].hash
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
