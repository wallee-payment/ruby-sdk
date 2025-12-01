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
  class Scope
    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # Whether the scope supports SSL.
    attr_accessor :ssl_active

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The name identifying the scope in e.g. URLs.
    attr_accessor :machine_name

    # The URL where the scope can be accessed.
    attr_accessor :url

    # The list of features that are active in the scope.
    attr_accessor :features

    # The themes that determine the look and feel of the scope's user interface. A fall-through strategy is applied when building the actual theme.
    attr_accessor :themes

    # The port where the scope can be accessed.
    attr_accessor :port

    # The preprod domain name that belongs to the scope.
    attr_accessor :preprod_domain_name

    # The domain name that belongs to the scope.
    attr_accessor :domain_name

    # The name used to identify the scope.
    attr_accessor :name

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The sandbox domain name that belongs to the scope.
    attr_accessor :sandbox_domain_name

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
        :'planned_purge_date' => :'plannedPurgeDate',
        :'ssl_active' => :'sslActive',
        :'version' => :'version',
        :'machine_name' => :'machineName',
        :'url' => :'url',
        :'features' => :'features',
        :'themes' => :'themes',
        :'port' => :'port',
        :'preprod_domain_name' => :'preprodDomainName',
        :'domain_name' => :'domainName',
        :'name' => :'name',
        :'id' => :'id',
        :'state' => :'state',
        :'sandbox_domain_name' => :'sandboxDomainName'
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
        :'planned_purge_date' => :'Time',
        :'ssl_active' => :'Boolean',
        :'version' => :'Integer',
        :'machine_name' => :'String',
        :'url' => :'String',
        :'features' => :'Array<Feature>',
        :'themes' => :'Array<String>',
        :'port' => :'Integer',
        :'preprod_domain_name' => :'String',
        :'domain_name' => :'String',
        :'name' => :'String',
        :'id' => :'Integer',
        :'state' => :'CreationEntityState',
        :'sandbox_domain_name' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::Scope` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::Scope`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'ssl_active')
        self.ssl_active = attributes[:'ssl_active']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'machine_name')
        self.machine_name = attributes[:'machine_name']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'features')
        if (value = attributes[:'features']).is_a?(Array)
          self.features = value
        end
      end

      if attributes.key?(:'themes')
        if (value = attributes[:'themes']).is_a?(Array)
          self.themes = value
        end
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'preprod_domain_name')
        self.preprod_domain_name = attributes[:'preprod_domain_name']
      end

      if attributes.key?(:'domain_name')
        self.domain_name = attributes[:'domain_name']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'sandbox_domain_name')
        self.sandbox_domain_name = attributes[:'sandbox_domain_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@machine_name.nil? && @machine_name.to_s.length > 50
        invalid_properties.push('invalid value for "machine_name", the character length must be smaller than or equal to 50.')
      end

      pattern = Regexp.new(/([A-Z][A-Za-z0-9]+)(_([A-Z][A-Za-z0-9]+))*/)
      if !@machine_name.nil? && @machine_name !~ pattern
        invalid_properties.push("invalid value for \"machine_name\", must conform to the pattern #{pattern}.")
      end

      if !@port.nil? && @port < 1
        invalid_properties.push('invalid value for "port", must be greater than or equal to 1.')
      end

      if !@preprod_domain_name.nil? && @preprod_domain_name.to_s.length > 40
        invalid_properties.push('invalid value for "preprod_domain_name", the character length must be smaller than or equal to 40.')
      end

      if !@domain_name.nil? && @domain_name.to_s.length > 40
        invalid_properties.push('invalid value for "domain_name", the character length must be smaller than or equal to 40.')
      end

      if !@name.nil? && @name.to_s.length > 50
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 50.')
      end

      if !@sandbox_domain_name.nil? && @sandbox_domain_name.to_s.length > 40
        invalid_properties.push('invalid value for "sandbox_domain_name", the character length must be smaller than or equal to 40.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@machine_name.nil? && @machine_name.to_s.length > 50
      return false if !@machine_name.nil? && @machine_name !~ Regexp.new(/([A-Z][A-Za-z0-9]+)(_([A-Z][A-Za-z0-9]+))*/)
      return false if !@port.nil? && @port < 1
      return false if !@preprod_domain_name.nil? && @preprod_domain_name.to_s.length > 40
      return false if !@domain_name.nil? && @domain_name.to_s.length > 40
      return false if !@name.nil? && @name.to_s.length > 50
      return false if !@sandbox_domain_name.nil? && @sandbox_domain_name.to_s.length > 40
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] machine_name Value to be assigned
    def machine_name=(machine_name)
      if machine_name.nil?
        fail ArgumentError, 'machine_name cannot be nil'
      end

      if machine_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "machine_name", the character length must be smaller than or equal to 50.'
      end

      pattern = Regexp.new(/([A-Z][A-Za-z0-9]+)(_([A-Z][A-Za-z0-9]+))*/)
      if machine_name !~ pattern
        fail ArgumentError, "invalid value for \"machine_name\", must conform to the pattern #{pattern}."
      end

      @machine_name = machine_name
    end

    # Custom attribute writer method with validation
    # @param [Object] features Value to be assigned
    def features=(features)
      if features.nil?
        fail ArgumentError, 'features cannot be nil'
      end

      @features = features
    end

    # Custom attribute writer method with validation
    # @param [Object] port Value to be assigned
    def port=(port)
      if port.nil?
        fail ArgumentError, 'port cannot be nil'
      end

      if port < 1
        fail ArgumentError, 'invalid value for "port", must be greater than or equal to 1.'
      end

      @port = port
    end

    # Custom attribute writer method with validation
    # @param [Object] preprod_domain_name Value to be assigned
    def preprod_domain_name=(preprod_domain_name)
      if preprod_domain_name.nil?
        fail ArgumentError, 'preprod_domain_name cannot be nil'
      end

      if preprod_domain_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "preprod_domain_name", the character length must be smaller than or equal to 40.'
      end

      @preprod_domain_name = preprod_domain_name
    end

    # Custom attribute writer method with validation
    # @param [Object] domain_name Value to be assigned
    def domain_name=(domain_name)
      if domain_name.nil?
        fail ArgumentError, 'domain_name cannot be nil'
      end

      if domain_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "domain_name", the character length must be smaller than or equal to 40.'
      end

      @domain_name = domain_name
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 50
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 50.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] sandbox_domain_name Value to be assigned
    def sandbox_domain_name=(sandbox_domain_name)
      if sandbox_domain_name.nil?
        fail ArgumentError, 'sandbox_domain_name cannot be nil'
      end

      if sandbox_domain_name.to_s.length > 40
        fail ArgumentError, 'invalid value for "sandbox_domain_name", the character length must be smaller than or equal to 40.'
      end

      @sandbox_domain_name = sandbox_domain_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          planned_purge_date == o.planned_purge_date &&
          ssl_active == o.ssl_active &&
          version == o.version &&
          machine_name == o.machine_name &&
          url == o.url &&
          features == o.features &&
          themes == o.themes &&
          port == o.port &&
          preprod_domain_name == o.preprod_domain_name &&
          domain_name == o.domain_name &&
          name == o.name &&
          id == o.id &&
          state == o.state &&
          sandbox_domain_name == o.sandbox_domain_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [planned_purge_date, ssl_active, version, machine_name, url, features, themes, port, preprod_domain_name, domain_name, name, id, state, sandbox_domain_name].hash
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
