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
  class AuthenticatedCardDataCreate
    # The expiry date of the card, indicating its validity period in yyyy-mm format (e.g., 2023-09).
    attr_accessor :expiry_date

    attr_accessor :pan_type

    # The name of the cardholder, as printed on the card, identifying the card owner.
    attr_accessor :card_holder_name

    # The security code used to validate the card during transactions.
    attr_accessor :card_verification_code

    # The card's primary account number (PAN), the unique identifier of the card.
    attr_accessor :primary_account_number

    attr_accessor :recurring_indicator

    # A reference specific to the card's transaction within its payment scheme.
    attr_accessor :scheme_transaction_reference

    attr_accessor :cardholder_authentication

    # The token requestor identifier (TRID) identifies the entity requesting tokenization for a card transaction.
    attr_accessor :token_requestor_id

    attr_accessor :cryptogram

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
        :'expiry_date' => :'expiryDate',
        :'pan_type' => :'panType',
        :'card_holder_name' => :'cardHolderName',
        :'card_verification_code' => :'cardVerificationCode',
        :'primary_account_number' => :'primaryAccountNumber',
        :'recurring_indicator' => :'recurringIndicator',
        :'scheme_transaction_reference' => :'schemeTransactionReference',
        :'cardholder_authentication' => :'cardholderAuthentication',
        :'token_requestor_id' => :'tokenRequestorId',
        :'cryptogram' => :'cryptogram'
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
        :'expiry_date' => :'String',
        :'pan_type' => :'PanType',
        :'card_holder_name' => :'String',
        :'card_verification_code' => :'String',
        :'primary_account_number' => :'String',
        :'recurring_indicator' => :'RecurringIndicator',
        :'scheme_transaction_reference' => :'String',
        :'cardholder_authentication' => :'CardholderAuthenticationCreate',
        :'token_requestor_id' => :'String',
        :'cryptogram' => :'CardCryptogramCreate'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::AuthenticatedCardDataCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::AuthenticatedCardDataCreate`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'expiry_date')
        self.expiry_date = attributes[:'expiry_date']
      end

      if attributes.key?(:'pan_type')
        self.pan_type = attributes[:'pan_type']
      end

      if attributes.key?(:'card_holder_name')
        self.card_holder_name = attributes[:'card_holder_name']
      end

      if attributes.key?(:'card_verification_code')
        self.card_verification_code = attributes[:'card_verification_code']
      end

      if attributes.key?(:'primary_account_number')
        self.primary_account_number = attributes[:'primary_account_number']
      else
        self.primary_account_number = nil
      end

      if attributes.key?(:'recurring_indicator')
        self.recurring_indicator = attributes[:'recurring_indicator']
      end

      if attributes.key?(:'scheme_transaction_reference')
        self.scheme_transaction_reference = attributes[:'scheme_transaction_reference']
      end

      if attributes.key?(:'cardholder_authentication')
        self.cardholder_authentication = attributes[:'cardholder_authentication']
      end

      if attributes.key?(:'token_requestor_id')
        self.token_requestor_id = attributes[:'token_requestor_id']
      end

      if attributes.key?(:'cryptogram')
        self.cryptogram = attributes[:'cryptogram']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/(\d{4})-(11|12|10|0[1-9])/)
      if !@expiry_date.nil? && @expiry_date !~ pattern
        invalid_properties.push("invalid value for \"expiry_date\", must conform to the pattern #{pattern}.")
      end

      if !@card_holder_name.nil? && @card_holder_name.to_s.length > 100
        invalid_properties.push('invalid value for "card_holder_name", the character length must be smaller than or equal to 100.')
      end

      if !@card_verification_code.nil? && @card_verification_code.to_s.length > 4
        invalid_properties.push('invalid value for "card_verification_code", the character length must be smaller than or equal to 4.')
      end

      if !@card_verification_code.nil? && @card_verification_code.to_s.length < 3
        invalid_properties.push('invalid value for "card_verification_code", the character length must be great than or equal to 3.')
      end

      pattern = Regexp.new(/([0-9 ]+)/)
      if !@card_verification_code.nil? && @card_verification_code !~ pattern
        invalid_properties.push("invalid value for \"card_verification_code\", must conform to the pattern #{pattern}.")
      end

      if @primary_account_number.nil?
        invalid_properties.push('invalid value for "primary_account_number", primary_account_number cannot be nil.')
      end

      if @primary_account_number.to_s.length > 30
        invalid_properties.push('invalid value for "primary_account_number", the character length must be smaller than or equal to 30.')
      end

      if @primary_account_number.to_s.length < 10
        invalid_properties.push('invalid value for "primary_account_number", the character length must be great than or equal to 10.')
      end

      pattern = Regexp.new(/([0-9 ]+)/)
      if @primary_account_number !~ pattern
        invalid_properties.push("invalid value for \"primary_account_number\", must conform to the pattern #{pattern}.")
      end

      if !@scheme_transaction_reference.nil? && @scheme_transaction_reference.to_s.length > 100
        invalid_properties.push('invalid value for "scheme_transaction_reference", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@expiry_date.nil? && @expiry_date !~ Regexp.new(/(\d{4})-(11|12|10|0[1-9])/)
      return false if !@card_holder_name.nil? && @card_holder_name.to_s.length > 100
      return false if !@card_verification_code.nil? && @card_verification_code.to_s.length > 4
      return false if !@card_verification_code.nil? && @card_verification_code.to_s.length < 3
      return false if !@card_verification_code.nil? && @card_verification_code !~ Regexp.new(/([0-9 ]+)/)
      return false if @primary_account_number.nil?
      return false if @primary_account_number.to_s.length > 30
      return false if @primary_account_number.to_s.length < 10
      return false if @primary_account_number !~ Regexp.new(/([0-9 ]+)/)
      return false if !@scheme_transaction_reference.nil? && @scheme_transaction_reference.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] expiry_date Value to be assigned
    def expiry_date=(expiry_date)
      if expiry_date.nil?
        fail ArgumentError, 'expiry_date cannot be nil'
      end

      pattern = Regexp.new(/(\d{4})-(11|12|10|0[1-9])/)
      if expiry_date !~ pattern
        fail ArgumentError, "invalid value for \"expiry_date\", must conform to the pattern #{pattern}."
      end

      @expiry_date = expiry_date
    end

    # Custom attribute writer method with validation
    # @param [Object] card_holder_name Value to be assigned
    def card_holder_name=(card_holder_name)
      if card_holder_name.nil?
        fail ArgumentError, 'card_holder_name cannot be nil'
      end

      if card_holder_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "card_holder_name", the character length must be smaller than or equal to 100.'
      end

      @card_holder_name = card_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] card_verification_code Value to be assigned
    def card_verification_code=(card_verification_code)
      if card_verification_code.nil?
        fail ArgumentError, 'card_verification_code cannot be nil'
      end

      if card_verification_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "card_verification_code", the character length must be smaller than or equal to 4.'
      end

      if card_verification_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "card_verification_code", the character length must be great than or equal to 3.'
      end

      pattern = Regexp.new(/([0-9 ]+)/)
      if card_verification_code !~ pattern
        fail ArgumentError, "invalid value for \"card_verification_code\", must conform to the pattern #{pattern}."
      end

      @card_verification_code = card_verification_code
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_account_number Value to be assigned
    def primary_account_number=(primary_account_number)
      if primary_account_number.nil?
        fail ArgumentError, 'primary_account_number cannot be nil'
      end

      if primary_account_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "primary_account_number", the character length must be smaller than or equal to 30.'
      end

      if primary_account_number.to_s.length < 10
        fail ArgumentError, 'invalid value for "primary_account_number", the character length must be great than or equal to 10.'
      end

      pattern = Regexp.new(/([0-9 ]+)/)
      if primary_account_number !~ pattern
        fail ArgumentError, "invalid value for \"primary_account_number\", must conform to the pattern #{pattern}."
      end

      @primary_account_number = primary_account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] scheme_transaction_reference Value to be assigned
    def scheme_transaction_reference=(scheme_transaction_reference)
      if scheme_transaction_reference.nil?
        fail ArgumentError, 'scheme_transaction_reference cannot be nil'
      end

      if scheme_transaction_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "scheme_transaction_reference", the character length must be smaller than or equal to 100.'
      end

      @scheme_transaction_reference = scheme_transaction_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          expiry_date == o.expiry_date &&
          pan_type == o.pan_type &&
          card_holder_name == o.card_holder_name &&
          card_verification_code == o.card_verification_code &&
          primary_account_number == o.primary_account_number &&
          recurring_indicator == o.recurring_indicator &&
          scheme_transaction_reference == o.scheme_transaction_reference &&
          cardholder_authentication == o.cardholder_authentication &&
          token_requestor_id == o.token_requestor_id &&
          cryptogram == o.cryptogram
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [expiry_date, pan_type, card_holder_name, card_verification_code, primary_account_number, recurring_indicator, scheme_transaction_reference, cardholder_authentication, token_requestor_id, cryptogram].hash
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
