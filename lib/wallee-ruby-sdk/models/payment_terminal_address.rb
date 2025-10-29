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
  class PaymentTerminalAddress
    # The two-letter country code (ISO 3166 format).
    attr_accessor :country

    # The phone number of a mobile phone.
    attr_accessor :mobile_phone_number

    # The organization's name.
    attr_accessor :organization_name

    # The city, town or village.
    attr_accessor :city

    # The given or first name.
    attr_accessor :given_name

    # The postal code, also known as ZIP, postcode, etc.
    attr_accessor :postcode

    # The dependent locality which is a sub-division of the state.
    attr_accessor :dependent_locality

    # The email address.
    attr_accessor :email_address

    # The phone number.
    attr_accessor :phone_number

    # The sorting code identifying the post office where the PO Box is located.
    attr_accessor :sorting_code

    # The street or PO Box.
    attr_accessor :street

    # The family or last name.
    attr_accessor :family_name

    # The name of the region, typically a state, county, province or prefecture.
    attr_accessor :postal_state

    # The salutation e.g. Mrs, Mr, Dr.
    attr_accessor :salutation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'country' => :'country',
        :'mobile_phone_number' => :'mobilePhoneNumber',
        :'organization_name' => :'organizationName',
        :'city' => :'city',
        :'given_name' => :'givenName',
        :'postcode' => :'postcode',
        :'dependent_locality' => :'dependentLocality',
        :'email_address' => :'emailAddress',
        :'phone_number' => :'phoneNumber',
        :'sorting_code' => :'sortingCode',
        :'street' => :'street',
        :'family_name' => :'familyName',
        :'postal_state' => :'postalState',
        :'salutation' => :'salutation'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'country' => :'String',
        :'mobile_phone_number' => :'String',
        :'organization_name' => :'String',
        :'city' => :'String',
        :'given_name' => :'String',
        :'postcode' => :'String',
        :'dependent_locality' => :'String',
        :'email_address' => :'String',
        :'phone_number' => :'String',
        :'sorting_code' => :'String',
        :'street' => :'String',
        :'family_name' => :'String',
        :'postal_state' => :'String',
        :'salutation' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::PaymentTerminalAddress` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::PaymentTerminalAddress`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'mobile_phone_number')
        self.mobile_phone_number = attributes[:'mobile_phone_number']
      end

      if attributes.key?(:'organization_name')
        self.organization_name = attributes[:'organization_name']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'given_name')
        self.given_name = attributes[:'given_name']
      end

      if attributes.key?(:'postcode')
        self.postcode = attributes[:'postcode']
      end

      if attributes.key?(:'dependent_locality')
        self.dependent_locality = attributes[:'dependent_locality']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'sorting_code')
        self.sorting_code = attributes[:'sorting_code']
      end

      if attributes.key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.key?(:'family_name')
        self.family_name = attributes[:'family_name']
      end

      if attributes.key?(:'postal_state')
        self.postal_state = attributes[:'postal_state']
      end

      if attributes.key?(:'salutation')
        self.salutation = attributes[:'salutation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@mobile_phone_number.nil? && @mobile_phone_number.to_s.length > 100
        invalid_properties.push('invalid value for "mobile_phone_number", the character length must be smaller than or equal to 100.')
      end

      if !@dependent_locality.nil? && @dependent_locality.to_s.length > 100
        invalid_properties.push('invalid value for "dependent_locality", the character length must be smaller than or equal to 100.')
      end

      if !@email_address.nil? && @email_address.to_s.length > 254
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 254.')
      end

      if !@sorting_code.nil? && @sorting_code.to_s.length > 100
        invalid_properties.push('invalid value for "sorting_code", the character length must be smaller than or equal to 100.')
      end

      if !@salutation.nil? && @salutation.to_s.length > 20
        invalid_properties.push('invalid value for "salutation", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@mobile_phone_number.nil? && @mobile_phone_number.to_s.length > 100
      return false if !@dependent_locality.nil? && @dependent_locality.to_s.length > 100
      return false if !@email_address.nil? && @email_address.to_s.length > 254
      return false if !@sorting_code.nil? && @sorting_code.to_s.length > 100
      return false if !@salutation.nil? && @salutation.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_phone_number Value to be assigned
    def mobile_phone_number=(mobile_phone_number)
      if mobile_phone_number.nil?
        fail ArgumentError, 'mobile_phone_number cannot be nil'
      end

      if mobile_phone_number.to_s.length > 100
        fail ArgumentError, 'invalid value for "mobile_phone_number", the character length must be smaller than or equal to 100.'
      end

      @mobile_phone_number = mobile_phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] dependent_locality Value to be assigned
    def dependent_locality=(dependent_locality)
      if dependent_locality.nil?
        fail ArgumentError, 'dependent_locality cannot be nil'
      end

      if dependent_locality.to_s.length > 100
        fail ArgumentError, 'invalid value for "dependent_locality", the character length must be smaller than or equal to 100.'
      end

      @dependent_locality = dependent_locality
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if email_address.nil?
        fail ArgumentError, 'email_address cannot be nil'
      end

      if email_address.to_s.length > 254
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 254.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] sorting_code Value to be assigned
    def sorting_code=(sorting_code)
      if sorting_code.nil?
        fail ArgumentError, 'sorting_code cannot be nil'
      end

      if sorting_code.to_s.length > 100
        fail ArgumentError, 'invalid value for "sorting_code", the character length must be smaller than or equal to 100.'
      end

      @sorting_code = sorting_code
    end

    # Custom attribute writer method with validation
    # @param [Object] salutation Value to be assigned
    def salutation=(salutation)
      if salutation.nil?
        fail ArgumentError, 'salutation cannot be nil'
      end

      if salutation.to_s.length > 20
        fail ArgumentError, 'invalid value for "salutation", the character length must be smaller than or equal to 20.'
      end

      @salutation = salutation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          country == o.country &&
          mobile_phone_number == o.mobile_phone_number &&
          organization_name == o.organization_name &&
          city == o.city &&
          given_name == o.given_name &&
          postcode == o.postcode &&
          dependent_locality == o.dependent_locality &&
          email_address == o.email_address &&
          phone_number == o.phone_number &&
          sorting_code == o.sorting_code &&
          street == o.street &&
          family_name == o.family_name &&
          postal_state == o.postal_state &&
          salutation == o.salutation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [country, mobile_phone_number, organization_name, city, given_name, postcode, dependent_locality, email_address, phone_number, sorting_code, street, family_name, postal_state, salutation].hash
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
