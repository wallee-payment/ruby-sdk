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
  class SubscriptionProductComponentUpdate
    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # The change weight determines whether if a component change is considered as upgrade or downgrade. If product component with a weight 10 is changed to a product component with a weight 20, the change is considered as upgrade. On the other hand a change from 20 to 10 is considered as a downgrade.
    attr_accessor :component_change_weight

    # 
    attr_accessor :component_group

    # When a component is marked as a 'default' component it is used when no other component is selected by the user.
    attr_accessor :default_component

    # The component description may contain a longer description which gives the subscriber a better understanding of what the component contains.
    attr_accessor :description

    # The maximum quantity defines the maximum value which must be entered for the quantity.
    attr_accessor :maximal_quantity

    # The minimal quantity defines the minimum value which must be entered for the quantity.
    attr_accessor :minimal_quantity

    # The component name is shown to the subscriber. It should describe in few words what the component does contain.
    attr_accessor :name

    # The quantity step defines at which interval the quantity can be increased.
    attr_accessor :quantity_step

    # The component reference is used to identify the component by external systems and it marks components to represent the same component within different product versions.
    attr_accessor :reference

    # The sort order controls in which order the component is listed. The sort order is used to order the components in ascending order.
    attr_accessor :sort_order

    # The tax class of the component determines the taxes which are applicable on all fees linked with the component.
    attr_accessor :tax_class

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'version' => :'version',
        :'component_change_weight' => :'componentChangeWeight',
        :'component_group' => :'componentGroup',
        :'default_component' => :'defaultComponent',
        :'description' => :'description',
        :'maximal_quantity' => :'maximalQuantity',
        :'minimal_quantity' => :'minimalQuantity',
        :'name' => :'name',
        :'quantity_step' => :'quantityStep',
        :'reference' => :'reference',
        :'sort_order' => :'sortOrder',
        :'tax_class' => :'taxClass'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'version' => :'Integer',
        :'component_change_weight' => :'Integer',
        :'component_group' => :'Integer',
        :'default_component' => :'BOOLEAN',
        :'description' => :'DatabaseTranslatedStringCreate',
        :'maximal_quantity' => :'Float',
        :'minimal_quantity' => :'Float',
        :'name' => :'DatabaseTranslatedStringCreate',
        :'quantity_step' => :'Float',
        :'reference' => :'Integer',
        :'sort_order' => :'Integer',
        :'tax_class' => :'Integer'
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

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'componentChangeWeight')
        self.component_change_weight = attributes[:'componentChangeWeight']
      end

      if attributes.has_key?(:'componentGroup')
        self.component_group = attributes[:'componentGroup']
      end

      if attributes.has_key?(:'defaultComponent')
        self.default_component = attributes[:'defaultComponent']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'maximalQuantity')
        self.maximal_quantity = attributes[:'maximalQuantity']
      end

      if attributes.has_key?(:'minimalQuantity')
        self.minimal_quantity = attributes[:'minimalQuantity']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'quantityStep')
        self.quantity_step = attributes[:'quantityStep']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'sortOrder')
        self.sort_order = attributes[:'sortOrder']
      end

      if attributes.has_key?(:'taxClass')
        self.tax_class = attributes[:'taxClass']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @version.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          version == o.version &&
          component_change_weight == o.component_change_weight &&
          component_group == o.component_group &&
          default_component == o.default_component &&
          description == o.description &&
          maximal_quantity == o.maximal_quantity &&
          minimal_quantity == o.minimal_quantity &&
          name == o.name &&
          quantity_step == o.quantity_step &&
          reference == o.reference &&
          sort_order == o.sort_order &&
          tax_class == o.tax_class
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, version, component_change_weight, component_group, default_component, description, maximal_quantity, minimal_quantity, name, quantity_step, reference, sort_order, tax_class].hash
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
