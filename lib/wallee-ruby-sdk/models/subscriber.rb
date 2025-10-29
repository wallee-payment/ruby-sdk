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
  # A subscriber represents everyone who is subscribed to a product.
  class Subscriber
    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The description used to identify the subscriber.
    attr_accessor :description

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The language that is used when communicating with the subscriber via emails and documents.
    attr_accessor :language

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The merchant's reference used to identify the subscriber.
    attr_accessor :reference

    # Allow the subscriber to use these payment methods even if subscription products do not accept them.
    attr_accessor :additional_allowed_payment_method_configurations

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # Allow to store additional information about the object.
    attr_accessor :meta_data

    # The email address that is used to communicate with the subscriber. There can be only one subscriber per space with the same email address.
    attr_accessor :email_address

    # Prevent the subscriber from using these payment methods even if subscription products do accept them.
    attr_accessor :disallowed_payment_method_configurations

    attr_accessor :shipping_address

    attr_accessor :billing_address

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

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
        :'description' => :'description',
        :'external_id' => :'externalId',
        :'language' => :'language',
        :'version' => :'version',
        :'reference' => :'reference',
        :'additional_allowed_payment_method_configurations' => :'additionalAllowedPaymentMethodConfigurations',
        :'linked_space_id' => :'linkedSpaceId',
        :'meta_data' => :'metaData',
        :'email_address' => :'emailAddress',
        :'disallowed_payment_method_configurations' => :'disallowedPaymentMethodConfigurations',
        :'shipping_address' => :'shippingAddress',
        :'billing_address' => :'billingAddress',
        :'id' => :'id',
        :'state' => :'state'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'planned_purge_date' => :'Time',
        :'description' => :'String',
        :'external_id' => :'String',
        :'language' => :'String',
        :'version' => :'Integer',
        :'reference' => :'String',
        :'additional_allowed_payment_method_configurations' => :'Array<Integer>',
        :'linked_space_id' => :'Integer',
        :'meta_data' => :'Hash<String, String>',
        :'email_address' => :'String',
        :'disallowed_payment_method_configurations' => :'Array<Integer>',
        :'shipping_address' => :'Address',
        :'billing_address' => :'Address',
        :'id' => :'Integer',
        :'state' => :'CreationEntityState'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::Subscriber` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::Subscriber`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'additional_allowed_payment_method_configurations')
        if (value = attributes[:'additional_allowed_payment_method_configurations']).is_a?(Array)
          self.additional_allowed_payment_method_configurations = value
        end
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'meta_data')
        if (value = attributes[:'meta_data']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'disallowed_payment_method_configurations')
        if (value = attributes[:'disallowed_payment_method_configurations']).is_a?(Array)
          self.disallowed_payment_method_configurations = value
        end
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 200
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 200.')
      end

      if !@reference.nil? && @reference.to_s.length > 100
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@reference.nil? && @reference !~ pattern
        invalid_properties.push("invalid value for \"reference\", must conform to the pattern #{pattern}.")
      end

      if !@email_address.nil? && @email_address.to_s.length > 254
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 254.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@description.nil? && @description.to_s.length > 200
      return false if !@reference.nil? && @reference.to_s.length > 100
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@reference.nil? && @reference !~ pattern
      return false if !@email_address.nil? && @email_address.to_s.length > 254
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 200
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 200.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if reference.nil?
        fail ArgumentError, 'reference cannot be nil'
      end

      if reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if reference !~ pattern
        fail ArgumentError, "invalid value for \"reference\", must conform to the pattern #{pattern}."
      end

      @reference = reference
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          planned_purge_date == o.planned_purge_date &&
          description == o.description &&
          external_id == o.external_id &&
          language == o.language &&
          version == o.version &&
          reference == o.reference &&
          additional_allowed_payment_method_configurations == o.additional_allowed_payment_method_configurations &&
          linked_space_id == o.linked_space_id &&
          meta_data == o.meta_data &&
          email_address == o.email_address &&
          disallowed_payment_method_configurations == o.disallowed_payment_method_configurations &&
          shipping_address == o.shipping_address &&
          billing_address == o.billing_address &&
          id == o.id &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [planned_purge_date, description, external_id, language, version, reference, additional_allowed_payment_method_configurations, linked_space_id, meta_data, email_address, disallowed_payment_method_configurations, shipping_address, billing_address, id, state].hash
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
