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
  class Customer
    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # 
    attr_accessor :customer_id

    # 
    attr_accessor :email_address

    # 
    attr_accessor :family_name

    # 
    attr_accessor :given_name

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :language

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # Meta data allow to store additional data along the object.
    attr_accessor :meta_data

    # 
    attr_accessor :preferred_currency

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_on' => :'createdOn',
        :'customer_id' => :'customerId',
        :'email_address' => :'emailAddress',
        :'family_name' => :'familyName',
        :'given_name' => :'givenName',
        :'id' => :'id',
        :'language' => :'language',
        :'linked_space_id' => :'linkedSpaceId',
        :'meta_data' => :'metaData',
        :'preferred_currency' => :'preferredCurrency',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_on' => :'DateTime',
        :'customer_id' => :'String',
        :'email_address' => :'String',
        :'family_name' => :'String',
        :'given_name' => :'String',
        :'id' => :'Integer',
        :'language' => :'String',
        :'linked_space_id' => :'Integer',
        :'meta_data' => :'Hash<String, String>',
        :'preferred_currency' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'customerId')
        self.customer_id = attributes[:'customerId']
      end

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'familyName')
        self.family_name = attributes[:'familyName']
      end

      if attributes.has_key?(:'givenName')
        self.given_name = attributes[:'givenName']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'metaData')
        if (value = attributes[:'metaData']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.has_key?(:'preferredCurrency')
        self.preferred_currency = attributes[:'preferredCurrency']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@customer_id.nil? && @customer_id.to_s.length > 100
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 100.')
      end

      if !@email_address.nil? && @email_address.to_s.length > 254
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 254.')
      end

      if !@family_name.nil? && @family_name.to_s.length > 100
        invalid_properties.push('invalid value for "family_name", the character length must be smaller than or equal to 100.')
      end

      if !@given_name.nil? && @given_name.to_s.length > 100
        invalid_properties.push('invalid value for "given_name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer_id.nil? && @customer_id.to_s.length > 100
      return false if !@email_address.nil? && @email_address.to_s.length > 254
      return false if !@family_name.nil? && @family_name.to_s.length > 100
      return false if !@given_name.nil? && @given_name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if !customer_id.nil? && customer_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 100.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if !email_address.nil? && email_address.to_s.length > 254
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 254.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] family_name Value to be assigned
    def family_name=(family_name)
      if !family_name.nil? && family_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "family_name", the character length must be smaller than or equal to 100.'
      end

      @family_name = family_name
    end

    # Custom attribute writer method with validation
    # @param [Object] given_name Value to be assigned
    def given_name=(given_name)
      if !given_name.nil? && given_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "given_name", the character length must be smaller than or equal to 100.'
      end

      @given_name = given_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_on == o.created_on &&
          customer_id == o.customer_id &&
          email_address == o.email_address &&
          family_name == o.family_name &&
          given_name == o.given_name &&
          id == o.id &&
          language == o.language &&
          linked_space_id == o.linked_space_id &&
          meta_data == o.meta_data &&
          preferred_currency == o.preferred_currency &&
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
      [created_on, customer_id, email_address, family_name, given_name, id, language, linked_space_id, meta_data, preferred_currency, version].hash
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
