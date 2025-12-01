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
  class SubscriptionProductComponentUpdate
    # The reference is used to link components across different product versions.
    attr_accessor :reference

    # The tax class to be applied to fees.
    attr_accessor :tax_class

    # The quantity step determines the interval in which the quantity can be increased.
    attr_accessor :quantity_step

    # When listing components, they can be sorted by this number.
    attr_accessor :sort_order

    # The group that the component belongs to.
    attr_accessor :component_group

    # The localized name of the component that is displayed to the customer.
    attr_accessor :name

    # The localized description of the component that is displayed to the customer.
    attr_accessor :description

    # If switching from a component with a lower tier to a component with a higher one, this is considered an upgrade and a fee may be applied.
    attr_accessor :component_change_weight

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # A maximum of the defined quantity can be selected for this component.
    attr_accessor :maximal_quantity

    # Whether this is the default component in its group and preselected.
    attr_accessor :default_component

    # A minimum of the defined quantity must be selected for this component.
    attr_accessor :minimal_quantity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference' => :'reference',
        :'tax_class' => :'taxClass',
        :'quantity_step' => :'quantityStep',
        :'sort_order' => :'sortOrder',
        :'component_group' => :'componentGroup',
        :'name' => :'name',
        :'description' => :'description',
        :'component_change_weight' => :'componentChangeWeight',
        :'version' => :'version',
        :'maximal_quantity' => :'maximalQuantity',
        :'default_component' => :'defaultComponent',
        :'minimal_quantity' => :'minimalQuantity'
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
        :'reference' => :'Integer',
        :'tax_class' => :'Integer',
        :'quantity_step' => :'Float',
        :'sort_order' => :'Integer',
        :'component_group' => :'Integer',
        :'name' => :'Hash<String, String>',
        :'description' => :'Hash<String, String>',
        :'component_change_weight' => :'Integer',
        :'version' => :'Integer',
        :'maximal_quantity' => :'Float',
        :'default_component' => :'Boolean',
        :'minimal_quantity' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::SubscriptionProductComponentUpdate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::SubscriptionProductComponentUpdate`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'tax_class')
        self.tax_class = attributes[:'tax_class']
      end

      if attributes.key?(:'quantity_step')
        self.quantity_step = attributes[:'quantity_step']
      end

      if attributes.key?(:'sort_order')
        self.sort_order = attributes[:'sort_order']
      end

      if attributes.key?(:'component_group')
        self.component_group = attributes[:'component_group']
      end

      if attributes.key?(:'name')
        if (value = attributes[:'name']).is_a?(Hash)
          self.name = value
        end
      end

      if attributes.key?(:'description')
        if (value = attributes[:'description']).is_a?(Hash)
          self.description = value
        end
      end

      if attributes.key?(:'component_change_weight')
        self.component_change_weight = attributes[:'component_change_weight']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end

      if attributes.key?(:'maximal_quantity')
        self.maximal_quantity = attributes[:'maximal_quantity']
      end

      if attributes.key?(:'default_component')
        self.default_component = attributes[:'default_component']
      end

      if attributes.key?(:'minimal_quantity')
        self.minimal_quantity = attributes[:'minimal_quantity']
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
          reference == o.reference &&
          tax_class == o.tax_class &&
          quantity_step == o.quantity_step &&
          sort_order == o.sort_order &&
          component_group == o.component_group &&
          name == o.name &&
          description == o.description &&
          component_change_weight == o.component_change_weight &&
          version == o.version &&
          maximal_quantity == o.maximal_quantity &&
          default_component == o.default_component &&
          minimal_quantity == o.minimal_quantity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [reference, tax_class, quantity_step, sort_order, component_group, name, description, component_change_weight, version, maximal_quantity, default_component, minimal_quantity].hash
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
