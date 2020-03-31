=begin
wallee API: 2.0.2

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
  class Address
    # 
    attr_accessor :city

    # 
    attr_accessor :commercial_register_number

    # 
    attr_accessor :country

    # 
    attr_accessor :date_of_birth

    # 
    attr_accessor :dependent_locality

    # 
    attr_accessor :email_address

    # 
    attr_accessor :family_name

    # 
    attr_accessor :gender

    # 
    attr_accessor :given_name

    # 
    attr_accessor :legal_organization_form

    # 
    attr_accessor :mobile_phone_number

    # 
    attr_accessor :organization_name

    # 
    attr_accessor :phone_number

    # 
    attr_accessor :postal_state

    # 
    attr_accessor :postcode

    # 
    attr_accessor :sales_tax_number

    # 
    attr_accessor :salutation

    # 
    attr_accessor :social_security_number

    # The sorting code identifies the post office at which the post box is located in.
    attr_accessor :sorting_code

    # 
    attr_accessor :street

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'city' => :'city',
        :'commercial_register_number' => :'commercialRegisterNumber',
        :'country' => :'country',
        :'date_of_birth' => :'dateOfBirth',
        :'dependent_locality' => :'dependentLocality',
        :'email_address' => :'emailAddress',
        :'family_name' => :'familyName',
        :'gender' => :'gender',
        :'given_name' => :'givenName',
        :'legal_organization_form' => :'legalOrganizationForm',
        :'mobile_phone_number' => :'mobilePhoneNumber',
        :'organization_name' => :'organizationName',
        :'phone_number' => :'phoneNumber',
        :'postal_state' => :'postalState',
        :'postcode' => :'postcode',
        :'sales_tax_number' => :'salesTaxNumber',
        :'salutation' => :'salutation',
        :'social_security_number' => :'socialSecurityNumber',
        :'sorting_code' => :'sortingCode',
        :'street' => :'street'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'city' => :'String',
        :'commercial_register_number' => :'String',
        :'country' => :'String',
        :'date_of_birth' => :'Date',
        :'dependent_locality' => :'String',
        :'email_address' => :'String',
        :'family_name' => :'String',
        :'gender' => :'Gender',
        :'given_name' => :'String',
        :'legal_organization_form' => :'LegalOrganizationForm',
        :'mobile_phone_number' => :'String',
        :'organization_name' => :'String',
        :'phone_number' => :'String',
        :'postal_state' => :'String',
        :'postcode' => :'String',
        :'sales_tax_number' => :'String',
        :'salutation' => :'String',
        :'social_security_number' => :'String',
        :'sorting_code' => :'String',
        :'street' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'commercialRegisterNumber')
        self.commercial_register_number = attributes[:'commercialRegisterNumber']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'dateOfBirth')
        self.date_of_birth = attributes[:'dateOfBirth']
      end

      if attributes.has_key?(:'dependentLocality')
        self.dependent_locality = attributes[:'dependentLocality']
      end

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'familyName')
        self.family_name = attributes[:'familyName']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'givenName')
        self.given_name = attributes[:'givenName']
      end

      if attributes.has_key?(:'legalOrganizationForm')
        self.legal_organization_form = attributes[:'legalOrganizationForm']
      end

      if attributes.has_key?(:'mobilePhoneNumber')
        self.mobile_phone_number = attributes[:'mobilePhoneNumber']
      end

      if attributes.has_key?(:'organizationName')
        self.organization_name = attributes[:'organizationName']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'postalState')
        self.postal_state = attributes[:'postalState']
      end

      if attributes.has_key?(:'postcode')
        self.postcode = attributes[:'postcode']
      end

      if attributes.has_key?(:'salesTaxNumber')
        self.sales_tax_number = attributes[:'salesTaxNumber']
      end

      if attributes.has_key?(:'salutation')
        self.salutation = attributes[:'salutation']
      end

      if attributes.has_key?(:'socialSecurityNumber')
        self.social_security_number = attributes[:'socialSecurityNumber']
      end

      if attributes.has_key?(:'sortingCode')
        self.sorting_code = attributes[:'sortingCode']
      end

      if attributes.has_key?(:'street')
        self.street = attributes[:'street']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          city == o.city &&
          commercial_register_number == o.commercial_register_number &&
          country == o.country &&
          date_of_birth == o.date_of_birth &&
          dependent_locality == o.dependent_locality &&
          email_address == o.email_address &&
          family_name == o.family_name &&
          gender == o.gender &&
          given_name == o.given_name &&
          legal_organization_form == o.legal_organization_form &&
          mobile_phone_number == o.mobile_phone_number &&
          organization_name == o.organization_name &&
          phone_number == o.phone_number &&
          postal_state == o.postal_state &&
          postcode == o.postcode &&
          sales_tax_number == o.sales_tax_number &&
          salutation == o.salutation &&
          social_security_number == o.social_security_number &&
          sorting_code == o.sorting_code &&
          street == o.street
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [city, commercial_register_number, country, date_of_birth, dependent_locality, email_address, family_name, gender, given_name, legal_organization_form, mobile_phone_number, organization_name, phone_number, postal_state, postcode, sales_tax_number, salutation, social_security_number, sorting_code, street].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
