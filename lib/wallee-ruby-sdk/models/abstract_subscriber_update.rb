=begin
wallee API: 2.2.1

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
  class AbstractSubscriberUpdate
    # Those payment methods which are allowed additionally will be available even when the product does not allow those methods.
    attr_accessor :additional_allowed_payment_method_configurations

    # 
    attr_accessor :billing_address

    # The subscriber description can be used to add a description to the subscriber. This is used in the back office to identify the subscriber.
    attr_accessor :description

    # Those payment methods which are disallowed will not be available to the subscriber even if the product allows those methods.
    attr_accessor :disallowed_payment_method_configurations

    # The email address is used to communicate with the subscriber. There can be only one subscriber per space with the same email address.
    attr_accessor :email_address

    # The subscriber language determines the language which is used to communicate with the subscriber in emails and documents (e.g. invoices).
    attr_accessor :language

    # Meta data allow to store additional data along the object.
    attr_accessor :meta_data

    # The subscriber reference identifies the subscriber in administrative interfaces (e.g. customer id).
    attr_accessor :reference

    # 
    attr_accessor :shipping_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_allowed_payment_method_configurations' => :'additionalAllowedPaymentMethodConfigurations',
        :'billing_address' => :'billingAddress',
        :'description' => :'description',
        :'disallowed_payment_method_configurations' => :'disallowedPaymentMethodConfigurations',
        :'email_address' => :'emailAddress',
        :'language' => :'language',
        :'meta_data' => :'metaData',
        :'reference' => :'reference',
        :'shipping_address' => :'shippingAddress'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'additional_allowed_payment_method_configurations' => :'Array<Integer>',
        :'billing_address' => :'AddressCreate',
        :'description' => :'String',
        :'disallowed_payment_method_configurations' => :'Array<Integer>',
        :'email_address' => :'String',
        :'language' => :'String',
        :'meta_data' => :'Hash<String, String>',
        :'reference' => :'String',
        :'shipping_address' => :'AddressCreate'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'additionalAllowedPaymentMethodConfigurations')
        if (value = attributes[:'additionalAllowedPaymentMethodConfigurations']).is_a?(Array)
          self.additional_allowed_payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'disallowedPaymentMethodConfigurations')
        if (value = attributes[:'disallowedPaymentMethodConfigurations']).is_a?(Array)
          self.disallowed_payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'metaData')
        if (value = attributes[:'metaData']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 200
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 200.')
      end

      if !@email_address.nil? && @email_address.to_s.length > 254
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 254.')
      end

      if !@reference.nil? && @reference.to_s.length > 100
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.length > 200
      return false if !@email_address.nil? && @email_address.to_s.length > 254
      return false if !@reference.nil? && @reference.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 200
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 200.'
      end

      @description = description
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
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 100.'
      end

      @reference = reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_allowed_payment_method_configurations == o.additional_allowed_payment_method_configurations &&
          billing_address == o.billing_address &&
          description == o.description &&
          disallowed_payment_method_configurations == o.disallowed_payment_method_configurations &&
          email_address == o.email_address &&
          language == o.language &&
          meta_data == o.meta_data &&
          reference == o.reference &&
          shipping_address == o.shipping_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [additional_allowed_payment_method_configurations, billing_address, description, disallowed_payment_method_configurations, email_address, language, meta_data, reference, shipping_address].hash
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
