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
  class Scope
    # The domain name that belongs to the scope.
    attr_accessor :domain_name

    # The list of features that are active in the scope.
    attr_accessor :features

    # A unique identifier for the object.
    attr_accessor :id

    # The name identifying the scope in e.g. URLs.
    attr_accessor :machine_name

    # The name used to identify the scope.
    attr_accessor :name

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The port where the scope can be accessed.
    attr_accessor :port

    # Whether the scope supports SSL.
    attr_accessor :ssl_active

    # The object's current state.
    attr_accessor :state

    # The themes that determine the look and feel of the scope's user interface. A fall-through strategy is applied when building the actual theme.
    attr_accessor :themes

    # The URL where the scope can be accessed.
    attr_accessor :url

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'domain_name' => :'domainName',
        :'features' => :'features',
        :'id' => :'id',
        :'machine_name' => :'machineName',
        :'name' => :'name',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'port' => :'port',
        :'ssl_active' => :'sslActive',
        :'state' => :'state',
        :'themes' => :'themes',
        :'url' => :'url',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'domain_name' => :'String',
        :'features' => :'Array<Feature>',
        :'id' => :'Integer',
        :'machine_name' => :'String',
        :'name' => :'String',
        :'planned_purge_date' => :'DateTime',
        :'port' => :'Integer',
        :'ssl_active' => :'BOOLEAN',
        :'state' => :'CreationEntityState',
        :'themes' => :'Array<String>',
        :'url' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'domainName')
        self.domain_name = attributes[:'domainName']
      end

      if attributes.has_key?(:'features')
        if (value = attributes[:'features']).is_a?(Array)
          self.features = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'machineName')
        self.machine_name = attributes[:'machineName']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'sslActive')
        self.ssl_active = attributes[:'sslActive']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'themes')
        if (value = attributes[:'themes']).is_a?(Array)
          self.themes = value
        end
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@domain_name.nil? && @domain_name.to_s.length > 40
        invalid_properties.push('invalid value for "domain_name", the character length must be smaller than or equal to 40.')
      end

      if !@machine_name.nil? && @machine_name.to_s.length > 50
        invalid_properties.push('invalid value for "machine_name", the character length must be smaller than or equal to 50.')
      end

      if !@name.nil? && @name.to_s.length > 50
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@domain_name.nil? && @domain_name.to_s.length > 40
      return false if !@machine_name.nil? && @machine_name.to_s.length > 50
      return false if !@name.nil? && @name.to_s.length > 50
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] domain_name Value to be assigned
    def domain_name=(domain_name)
      if !domain_name.nil? && domain_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "domain_name", the character length must be smaller than or equal to 40.'
      end

      @domain_name = domain_name
    end

    # Custom attribute writer method with validation
    # @param [Object] machine_name Value to be assigned
    def machine_name=(machine_name)
      if !machine_name.nil? && machine_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "machine_name", the character length must be smaller than or equal to 50.'
      end

      @machine_name = machine_name
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 50
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 50.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          domain_name == o.domain_name &&
          features == o.features &&
          id == o.id &&
          machine_name == o.machine_name &&
          name == o.name &&
          planned_purge_date == o.planned_purge_date &&
          port == o.port &&
          ssl_active == o.ssl_active &&
          state == o.state &&
          themes == o.themes &&
          url == o.url &&
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
      [domain_name, features, id, machine_name, name, planned_purge_date, port, ssl_active, state, themes, url, version].hash
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
