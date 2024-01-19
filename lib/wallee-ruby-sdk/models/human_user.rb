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
  class HumanUser
    # The user's email address.
    attr_accessor :email_address

    # Whether the user's email address has been verified.
    attr_accessor :email_address_verified

    # The user's first name.
    attr_accessor :firstname

    # The user's preferred language.
    attr_accessor :language

    # The user's last name.
    attr_accessor :lastname

    # The user's mobile phone number.
    attr_accessor :mobile_phone_number

    # Whether the user's mobile phone number has been verified.
    attr_accessor :mobile_phone_verified

    # The primary account that the user belongs to.
    attr_accessor :primary_account

    # The scope that the user belongs to.
    attr_accessor :scope

    # The user's time zone. If none is specified, the one provided by the browser will be used.
    attr_accessor :time_zone

    # Whether two-factor authentication is enabled for this user.
    attr_accessor :two_factor_enabled

    # The type of two-factor authentication that is enabled for the user.
    attr_accessor :two_factor_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email_address' => :'emailAddress',
        :'email_address_verified' => :'emailAddressVerified',
        :'firstname' => :'firstname',
        :'language' => :'language',
        :'lastname' => :'lastname',
        :'mobile_phone_number' => :'mobilePhoneNumber',
        :'mobile_phone_verified' => :'mobilePhoneVerified',
        :'primary_account' => :'primaryAccount',
        :'scope' => :'scope',
        :'time_zone' => :'timeZone',
        :'two_factor_enabled' => :'twoFactorEnabled',
        :'two_factor_type' => :'twoFactorType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email_address' => :'String',
        :'email_address_verified' => :'BOOLEAN',
        :'firstname' => :'String',
        :'language' => :'String',
        :'lastname' => :'String',
        :'mobile_phone_number' => :'String',
        :'mobile_phone_verified' => :'BOOLEAN',
        :'primary_account' => :'Integer',
        :'scope' => :'Integer',
        :'time_zone' => :'String',
        :'two_factor_enabled' => :'BOOLEAN',
        :'two_factor_type' => :'TwoFactorAuthenticationType'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'emailAddressVerified')
        self.email_address_verified = attributes[:'emailAddressVerified']
      end

      if attributes.has_key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.has_key?(:'mobilePhoneNumber')
        self.mobile_phone_number = attributes[:'mobilePhoneNumber']
      end

      if attributes.has_key?(:'mobilePhoneVerified')
        self.mobile_phone_verified = attributes[:'mobilePhoneVerified']
      end

      if attributes.has_key?(:'primaryAccount')
        self.primary_account = attributes[:'primaryAccount']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'twoFactorEnabled')
        self.two_factor_enabled = attributes[:'twoFactorEnabled']
      end

      if attributes.has_key?(:'twoFactorType')
        self.two_factor_type = attributes[:'twoFactorType']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@email_address.nil? && @email_address.to_s.length > 128
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 128.')
      end

      if !@firstname.nil? && @firstname.to_s.length > 100
        invalid_properties.push('invalid value for "firstname", the character length must be smaller than or equal to 100.')
      end

      if !@lastname.nil? && @lastname.to_s.length > 100
        invalid_properties.push('invalid value for "lastname", the character length must be smaller than or equal to 100.')
      end

      if !@mobile_phone_number.nil? && @mobile_phone_number.to_s.length > 30
        invalid_properties.push('invalid value for "mobile_phone_number", the character length must be smaller than or equal to 30.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@email_address.nil? && @email_address.to_s.length > 128
      return false if !@firstname.nil? && @firstname.to_s.length > 100
      return false if !@lastname.nil? && @lastname.to_s.length > 100
      return false if !@mobile_phone_number.nil? && @mobile_phone_number.to_s.length > 30
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if !email_address.nil? && email_address.to_s.length > 128
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 128.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] firstname Value to be assigned
    def firstname=(firstname)
      if !firstname.nil? && firstname.to_s.length > 100
        fail ArgumentError, 'invalid value for "firstname", the character length must be smaller than or equal to 100.'
      end

      @firstname = firstname
    end

    # Custom attribute writer method with validation
    # @param [Object] lastname Value to be assigned
    def lastname=(lastname)
      if !lastname.nil? && lastname.to_s.length > 100
        fail ArgumentError, 'invalid value for "lastname", the character length must be smaller than or equal to 100.'
      end

      @lastname = lastname
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_phone_number Value to be assigned
    def mobile_phone_number=(mobile_phone_number)
      if !mobile_phone_number.nil? && mobile_phone_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "mobile_phone_number", the character length must be smaller than or equal to 30.'
      end

      @mobile_phone_number = mobile_phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_address == o.email_address &&
          email_address_verified == o.email_address_verified &&
          firstname == o.firstname &&
          language == o.language &&
          lastname == o.lastname &&
          mobile_phone_number == o.mobile_phone_number &&
          mobile_phone_verified == o.mobile_phone_verified &&
          primary_account == o.primary_account &&
          scope == o.scope &&
          time_zone == o.time_zone &&
          two_factor_enabled == o.two_factor_enabled &&
          two_factor_type == o.two_factor_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [email_address, email_address_verified, firstname, language, lastname, mobile_phone_number, mobile_phone_verified, primary_account, scope, time_zone, two_factor_enabled, two_factor_type].hash
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
