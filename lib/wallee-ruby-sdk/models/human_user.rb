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

require 'date'
require 'time'

module WalleeRubySdk
  class HumanUser
    # The user's mobile phone number.
    attr_accessor :mobile_phone_number

    # Whether two-factor authentication is enabled for this user.
    attr_accessor :two_factor_enabled

    # The user's email address.
    attr_accessor :email_address

    # The user's first name.
    attr_accessor :firstname

    # Whether the user's email address has been verified.
    attr_accessor :email_address_verified

    # The scope that the user belongs to.
    attr_accessor :scope

    # The user's time zone. If none is specified, the one provided by the browser will be used.
    attr_accessor :time_zone

    # The user's preferred language.
    attr_accessor :language

    attr_accessor :two_factor_type

    # Whether the user's mobile phone number has been verified.
    attr_accessor :mobile_phone_verified

    # The primary account that the user belongs to.
    attr_accessor :primary_account

    # The user's last name.
    attr_accessor :lastname

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mobile_phone_number' => :'mobilePhoneNumber',
        :'two_factor_enabled' => :'twoFactorEnabled',
        :'email_address' => :'emailAddress',
        :'firstname' => :'firstname',
        :'email_address_verified' => :'emailAddressVerified',
        :'scope' => :'scope',
        :'time_zone' => :'timeZone',
        :'language' => :'language',
        :'two_factor_type' => :'twoFactorType',
        :'mobile_phone_verified' => :'mobilePhoneVerified',
        :'primary_account' => :'primaryAccount',
        :'lastname' => :'lastname'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'mobile_phone_number' => :'String',
        :'two_factor_enabled' => :'Boolean',
        :'email_address' => :'String',
        :'firstname' => :'String',
        :'email_address_verified' => :'Boolean',
        :'scope' => :'Integer',
        :'time_zone' => :'String',
        :'language' => :'String',
        :'two_factor_type' => :'TwoFactorAuthenticationType',
        :'mobile_phone_verified' => :'Boolean',
        :'primary_account' => :'Integer',
        :'lastname' => :'String'
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
      unless attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::HumanUser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::HumanUser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'mobile_phone_number')
        self.mobile_phone_number = attributes[:'mobile_phone_number']
      end

      if attributes.key?(:'two_factor_enabled')
        self.two_factor_enabled = attributes[:'two_factor_enabled']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.key?(:'email_address_verified')
        self.email_address_verified = attributes[:'email_address_verified']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'two_factor_type')
        self.two_factor_type = attributes[:'two_factor_type']
      end

      if attributes.key?(:'mobile_phone_verified')
        self.mobile_phone_verified = attributes[:'mobile_phone_verified']
      end

      if attributes.key?(:'primary_account')
        self.primary_account = attributes[:'primary_account']
      end

      if attributes.key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@mobile_phone_number.nil? && @mobile_phone_number.to_s.length > 30
        invalid_properties.push('invalid value for "mobile_phone_number", the character length must be smaller than or equal to 30.')
      end

      if !@email_address.nil? && @email_address.to_s.length > 128
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 128.')
      end

      if !@firstname.nil? && @firstname.to_s.length > 100
        invalid_properties.push('invalid value for "firstname", the character length must be smaller than or equal to 100.')
      end

      if !@lastname.nil? && @lastname.to_s.length > 100
        invalid_properties.push('invalid value for "lastname", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@mobile_phone_number.nil? && @mobile_phone_number.to_s.length > 30
      return false if !@email_address.nil? && @email_address.to_s.length > 128
      return false if !@firstname.nil? && @firstname.to_s.length > 100
      return false if !@lastname.nil? && @lastname.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_phone_number Value to be assigned
    def mobile_phone_number=(mobile_phone_number)
      if mobile_phone_number.nil?
        fail ArgumentError, 'mobile_phone_number cannot be nil'
      end

      if mobile_phone_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "mobile_phone_number", the character length must be smaller than or equal to 30.'
      end

      @mobile_phone_number = mobile_phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if email_address.nil?
        fail ArgumentError, 'email_address cannot be nil'
      end

      if email_address.to_s.length > 128
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 128.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] firstname Value to be assigned
    def firstname=(firstname)
      if firstname.nil?
        fail ArgumentError, 'firstname cannot be nil'
      end

      if firstname.to_s.length > 100
        fail ArgumentError, 'invalid value for "firstname", the character length must be smaller than or equal to 100.'
      end

      @firstname = firstname
    end

    # Custom attribute writer method with validation
    # @param [Object] lastname Value to be assigned
    def lastname=(lastname)
      if lastname.nil?
        fail ArgumentError, 'lastname cannot be nil'
      end

      if lastname.to_s.length > 100
        fail ArgumentError, 'invalid value for "lastname", the character length must be smaller than or equal to 100.'
      end

      @lastname = lastname
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          mobile_phone_number == o.mobile_phone_number &&
          two_factor_enabled == o.two_factor_enabled &&
          email_address == o.email_address &&
          firstname == o.firstname &&
          email_address_verified == o.email_address_verified &&
          scope == o.scope &&
          time_zone == o.time_zone &&
          language == o.language &&
          two_factor_type == o.two_factor_type &&
          mobile_phone_verified == o.mobile_phone_verified &&
          primary_account == o.primary_account &&
          lastname == o.lastname
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [mobile_phone_number, two_factor_enabled, email_address, firstname, email_address_verified, scope, time_zone, language, two_factor_type, mobile_phone_verified, primary_account, lastname].hash
    end    # Builds the object from hash
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
