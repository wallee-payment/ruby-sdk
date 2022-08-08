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
  class PaymentAppProcessorCreationRequest
    # The documentation URL has to point to a description of how to configure and use the processor.
    attr_accessor :documentation_url

    # The external ID identifies the processor within the external system. It has to be unique per space and for any subsequent update the same ID must be sent.
    attr_accessor :external_id

    # The name of the processor will be displayed within the user interfaces that the merchant is interacting with.
    attr_accessor :name

    # The production mode URL has to point to a site on which the merchant can set up the production mode for the processor.
    attr_accessor :production_mode_url

    # The SVG icon will be displayed to the user to represent this processor.
    attr_accessor :svg_icon

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'documentation_url' => :'documentationUrl',
        :'external_id' => :'externalId',
        :'name' => :'name',
        :'production_mode_url' => :'productionModeUrl',
        :'svg_icon' => :'svgIcon'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'documentation_url' => :'String',
        :'external_id' => :'String',
        :'name' => :'String',
        :'production_mode_url' => :'String',
        :'svg_icon' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'documentationUrl')
        self.documentation_url = attributes[:'documentationUrl']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'productionModeUrl')
        self.production_mode_url = attributes[:'productionModeUrl']
      end

      if attributes.has_key?(:'svgIcon')
        self.svg_icon = attributes[:'svgIcon']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @documentation_url.nil?
        invalid_properties.push('invalid value for "documentation_url", documentation_url cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @external_id.to_s.length > 40
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 40.')
      end

      if @external_id.to_s.length < 1
        invalid_properties.push('invalid value for "external_id", the character length must be great than or equal to 1.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if @svg_icon.nil?
        invalid_properties.push('invalid value for "svg_icon", svg_icon cannot be nil.')
      end

      if @svg_icon.to_s.length > 10000
        invalid_properties.push('invalid value for "svg_icon", the character length must be smaller than or equal to 10000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @documentation_url.nil?
      return false if @external_id.nil?
      return false if @external_id.to_s.length > 40
      return false if @external_id.to_s.length < 1
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @svg_icon.nil?
      return false if @svg_icon.to_s.length > 10000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if external_id.nil?
        fail ArgumentError, 'external_id cannot be nil'
      end

      if external_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 40.'
      end

      if external_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "external_id", the character length must be great than or equal to 1.'
      end

      @external_id = external_id
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
    # @param [Object] svg_icon Value to be assigned
    def svg_icon=(svg_icon)
      if svg_icon.nil?
        fail ArgumentError, 'svg_icon cannot be nil'
      end

      if svg_icon.to_s.length > 10000
        fail ArgumentError, 'invalid value for "svg_icon", the character length must be smaller than or equal to 10000.'
      end

      @svg_icon = svg_icon
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          documentation_url == o.documentation_url &&
          external_id == o.external_id &&
          name == o.name &&
          production_mode_url == o.production_mode_url &&
          svg_icon == o.svg_icon
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [documentation_url, external_id, name, production_mode_url, svg_icon].hash
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
