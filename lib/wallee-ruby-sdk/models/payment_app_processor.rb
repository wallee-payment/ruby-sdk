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
  class PaymentAppProcessor
    # The environment (e.g., test or production) currently configured for the processor.
    attr_accessor :configured_environment

    # The date and time when the processor was created.
    attr_accessor :created_on

    # A URL pointing to the documentation that explains how to configure and use the processor.
    attr_accessor :documentation_url

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # A unique identifier for the object.
    attr_accessor :id

    # The installation ID identifies the Web App installation.
    attr_accessor :installation_id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The name used to identify the processor.
    attr_accessor :name

    # The processor configuration created alongside the process within its designated space. This configuration is used in transactions created using this processor.
    attr_accessor :processor_configuration

    # A URL pointing to the site where merchants can set up production mode for the processor.
    attr_accessor :production_mode_url

    # The object's current state.
    attr_accessor :state

    # An SVG icon representing the processor, displayed to the user in the interface.
    attr_accessor :svg_icon

    # The date and time when the processor was last updated.
    attr_accessor :updated_on

    # Whether the processor is fully prepared and available for handling transactions in a production environment.
    attr_accessor :usable_in_production

    # the date and time when the processor became fully usable and available for handling transactions in a production environment.
    attr_accessor :usable_in_production_since

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'configured_environment' => :'configuredEnvironment',
        :'created_on' => :'createdOn',
        :'documentation_url' => :'documentationUrl',
        :'external_id' => :'externalId',
        :'id' => :'id',
        :'installation_id' => :'installationId',
        :'linked_space_id' => :'linkedSpaceId',
        :'name' => :'name',
        :'processor_configuration' => :'processorConfiguration',
        :'production_mode_url' => :'productionModeUrl',
        :'state' => :'state',
        :'svg_icon' => :'svgIcon',
        :'updated_on' => :'updatedOn',
        :'usable_in_production' => :'usableInProduction',
        :'usable_in_production_since' => :'usableInProductionSince',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'configured_environment' => :'ChargeAttemptEnvironment',
        :'created_on' => :'DateTime',
        :'documentation_url' => :'String',
        :'external_id' => :'String',
        :'id' => :'Integer',
        :'installation_id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'name' => :'String',
        :'processor_configuration' => :'PaymentProcessorConfiguration',
        :'production_mode_url' => :'String',
        :'state' => :'PaymentAppProcessorState',
        :'svg_icon' => :'String',
        :'updated_on' => :'DateTime',
        :'usable_in_production' => :'BOOLEAN',
        :'usable_in_production_since' => :'DateTime',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'configuredEnvironment')
        self.configured_environment = attributes[:'configuredEnvironment']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'documentationUrl')
        self.documentation_url = attributes[:'documentationUrl']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'installationId')
        self.installation_id = attributes[:'installationId']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'processorConfiguration')
        self.processor_configuration = attributes[:'processorConfiguration']
      end

      if attributes.has_key?(:'productionModeUrl')
        self.production_mode_url = attributes[:'productionModeUrl']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'svgIcon')
        self.svg_icon = attributes[:'svgIcon']
      end

      if attributes.has_key?(:'updatedOn')
        self.updated_on = attributes[:'updatedOn']
      end

      if attributes.has_key?(:'usableInProduction')
        self.usable_in_production = attributes[:'usableInProduction']
      end

      if attributes.has_key?(:'usableInProductionSince')
        self.usable_in_production_since = attributes[:'usableInProductionSince']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@external_id.nil? && @external_id.to_s.length > 40
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 40.')
      end

      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if !@svg_icon.nil? && @svg_icon.to_s.length > 10000
        invalid_properties.push('invalid value for "svg_icon", the character length must be smaller than or equal to 10000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 40
      return false if !@name.nil? && @name.to_s.length > 100
      return false if !@svg_icon.nil? && @svg_icon.to_s.length > 10000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if !external_id.nil? && external_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 40.'
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] svg_icon Value to be assigned
    def svg_icon=(svg_icon)
      if !svg_icon.nil? && svg_icon.to_s.length > 10000
        fail ArgumentError, 'invalid value for "svg_icon", the character length must be smaller than or equal to 10000.'
      end

      @svg_icon = svg_icon
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          configured_environment == o.configured_environment &&
          created_on == o.created_on &&
          documentation_url == o.documentation_url &&
          external_id == o.external_id &&
          id == o.id &&
          installation_id == o.installation_id &&
          linked_space_id == o.linked_space_id &&
          name == o.name &&
          processor_configuration == o.processor_configuration &&
          production_mode_url == o.production_mode_url &&
          state == o.state &&
          svg_icon == o.svg_icon &&
          updated_on == o.updated_on &&
          usable_in_production == o.usable_in_production &&
          usable_in_production_since == o.usable_in_production_since &&
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
      [configured_environment, created_on, documentation_url, external_id, id, installation_id, linked_space_id, name, processor_configuration, production_mode_url, state, svg_icon, updated_on, usable_in_production, usable_in_production_since, version].hash
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
