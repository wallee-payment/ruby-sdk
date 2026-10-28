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
  class InvoiceReimbursement
    attr_accessor :discarded_on

    attr_accessor :amount

    attr_accessor :recipient_given_name

    attr_accessor :recipient_iban

    attr_accessor :recipient_organization_name

    attr_accessor :recipient_street

    attr_accessor :discarded_by

    attr_accessor :sender_iban

    attr_accessor :source

    # The date and time when the object was created.
    attr_accessor :created_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    attr_accessor :environment

    attr_accessor :recipient_family_name

    attr_accessor :processed_on

    attr_accessor :payment_connector_configuration

    attr_accessor :recipient_postcode

    attr_accessor :currency

    attr_accessor :recipient_country

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    attr_accessor :processed_by

    attr_accessor :recipient_city

    attr_accessor :payment_initiation_advice_file

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
        :'discarded_on' => :'discardedOn',
        :'amount' => :'amount',
        :'recipient_given_name' => :'recipientGivenName',
        :'recipient_iban' => :'recipientIban',
        :'recipient_organization_name' => :'recipientOrganizationName',
        :'recipient_street' => :'recipientStreet',
        :'discarded_by' => :'discardedBy',
        :'sender_iban' => :'senderIban',
        :'source' => :'source',
        :'created_on' => :'createdOn',
        :'version' => :'version',
        :'linked_space_id' => :'linkedSpaceId',
        :'environment' => :'environment',
        :'recipient_family_name' => :'recipientFamilyName',
        :'processed_on' => :'processedOn',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'recipient_postcode' => :'recipientPostcode',
        :'currency' => :'currency',
        :'recipient_country' => :'recipientCountry',
        :'id' => :'id',
        :'state' => :'state',
        :'processed_by' => :'processedBy',
        :'recipient_city' => :'recipientCity',
        :'payment_initiation_advice_file' => :'paymentInitiationAdviceFile'
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
        :'discarded_on' => :'Time',
        :'amount' => :'Float',
        :'recipient_given_name' => :'String',
        :'recipient_iban' => :'String',
        :'recipient_organization_name' => :'String',
        :'recipient_street' => :'String',
        :'discarded_by' => :'Integer',
        :'sender_iban' => :'String',
        :'source' => :'InvoiceProcessor',
        :'created_on' => :'Time',
        :'version' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'environment' => :'ChargeAttemptEnvironment',
        :'recipient_family_name' => :'String',
        :'processed_on' => :'Time',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'recipient_postcode' => :'String',
        :'currency' => :'String',
        :'recipient_country' => :'String',
        :'id' => :'Integer',
        :'state' => :'InvoiceReimbursementState',
        :'processed_by' => :'Integer',
        :'recipient_city' => :'String',
        :'payment_initiation_advice_file' => :'PaymentInitiationAdviceFile'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::InvoiceReimbursement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::InvoiceReimbursement`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'discarded_on')
        self.discarded_on = attributes[:'discarded_on']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'recipient_given_name')
        self.recipient_given_name = attributes[:'recipient_given_name']
      end

      if attributes.key?(:'recipient_iban')
        self.recipient_iban = attributes[:'recipient_iban']
      end

      if attributes.key?(:'recipient_organization_name')
        self.recipient_organization_name = attributes[:'recipient_organization_name']
      end

      if attributes.key?(:'recipient_street')
        self.recipient_street = attributes[:'recipient_street']
      end

      if attributes.key?(:'discarded_by')
        self.discarded_by = attributes[:'discarded_by']
      end

      if attributes.key?(:'sender_iban')
        self.sender_iban = attributes[:'sender_iban']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'recipient_family_name')
        self.recipient_family_name = attributes[:'recipient_family_name']
      end

      if attributes.key?(:'processed_on')
        self.processed_on = attributes[:'processed_on']
      end

      if attributes.key?(:'payment_connector_configuration')
        self.payment_connector_configuration = attributes[:'payment_connector_configuration']
      end

      if attributes.key?(:'recipient_postcode')
        self.recipient_postcode = attributes[:'recipient_postcode']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'recipient_country')
        self.recipient_country = attributes[:'recipient_country']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'processed_by')
        self.processed_by = attributes[:'processed_by']
      end

      if attributes.key?(:'recipient_city')
        self.recipient_city = attributes[:'recipient_city']
      end

      if attributes.key?(:'payment_initiation_advice_file')
        self.payment_initiation_advice_file = attributes[:'payment_initiation_advice_file']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          discarded_on == o.discarded_on &&
          amount == o.amount &&
          recipient_given_name == o.recipient_given_name &&
          recipient_iban == o.recipient_iban &&
          recipient_organization_name == o.recipient_organization_name &&
          recipient_street == o.recipient_street &&
          discarded_by == o.discarded_by &&
          sender_iban == o.sender_iban &&
          source == o.source &&
          created_on == o.created_on &&
          version == o.version &&
          linked_space_id == o.linked_space_id &&
          environment == o.environment &&
          recipient_family_name == o.recipient_family_name &&
          processed_on == o.processed_on &&
          payment_connector_configuration == o.payment_connector_configuration &&
          recipient_postcode == o.recipient_postcode &&
          currency == o.currency &&
          recipient_country == o.recipient_country &&
          id == o.id &&
          state == o.state &&
          processed_by == o.processed_by &&
          recipient_city == o.recipient_city &&
          payment_initiation_advice_file == o.payment_initiation_advice_file
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [discarded_on, amount, recipient_given_name, recipient_iban, recipient_organization_name, recipient_street, discarded_by, sender_iban, source, created_on, version, linked_space_id, environment, recipient_family_name, processed_on, payment_connector_configuration, recipient_postcode, currency, recipient_country, id, state, processed_by, recipient_city, payment_initiation_advice_file].hash
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
