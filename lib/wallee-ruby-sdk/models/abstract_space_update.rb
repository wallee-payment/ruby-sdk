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
  class AbstractSpaceUpdate
    # The date and time when the object was last modified.
    attr_accessor :last_modified_date

    # The name used to identify the space.
    attr_accessor :name

    # The address that is used in communication with clients for example in emails, documents, etc.
    attr_accessor :postal_address

    # The currency that is used to display aggregated amounts in the space.
    attr_accessor :primary_currency

    # The maximum number of API requests that are accepted within two minutes. This limit can only be changed with special privileges.
    attr_accessor :request_limit

    # The object's current state.
    attr_accessor :state

    # The email address that will receive messages about technical issues and errors that occur in the space.
    attr_accessor :technical_contact_addresses

    # The time zone that is used to schedule and run background processes. This does not affect the formatting of dates in the user interface.
    attr_accessor :time_zone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'last_modified_date' => :'lastModifiedDate',
        :'name' => :'name',
        :'postal_address' => :'postalAddress',
        :'primary_currency' => :'primaryCurrency',
        :'request_limit' => :'requestLimit',
        :'state' => :'state',
        :'technical_contact_addresses' => :'technicalContactAddresses',
        :'time_zone' => :'timeZone'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'last_modified_date' => :'DateTime',
        :'name' => :'String',
        :'postal_address' => :'SpaceAddressCreate',
        :'primary_currency' => :'String',
        :'request_limit' => :'Integer',
        :'state' => :'CreationEntityState',
        :'technical_contact_addresses' => :'Array<String>',
        :'time_zone' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'lastModifiedDate')
        self.last_modified_date = attributes[:'lastModifiedDate']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'postalAddress')
        self.postal_address = attributes[:'postalAddress']
      end

      if attributes.has_key?(:'primaryCurrency')
        self.primary_currency = attributes[:'primaryCurrency']
      end

      if attributes.has_key?(:'requestLimit')
        self.request_limit = attributes[:'requestLimit']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'technicalContactAddresses')
        if (value = attributes[:'technicalContactAddresses']).is_a?(Array)
          self.technical_contact_addresses = value
        end
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 200
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 200.')
      end

      if !@name.nil? && @name.to_s.length < 3
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 200
      return false if !@name.nil? && @name.to_s.length < 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 200
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 200.'
      end

      if !name.nil? && name.to_s.length < 3
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 3.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          last_modified_date == o.last_modified_date &&
          name == o.name &&
          postal_address == o.postal_address &&
          primary_currency == o.primary_currency &&
          request_limit == o.request_limit &&
          state == o.state &&
          technical_contact_addresses == o.technical_contact_addresses &&
          time_zone == o.time_zone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [last_modified_date, name, postal_address, primary_currency, request_limit, state, technical_contact_addresses, time_zone].hash
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
