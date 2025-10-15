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
  class TokenizedCardDataCreate
    # The name of the cardholder, as printed on the card, identifying the card owner.
    attr_accessor :card_holder_name

    # The security code used to validate the card during transactions.
    attr_accessor :card_verification_code

    # An additional authentication value that enhances the security of tokenized card transactions.
    attr_accessor :cryptogram

    # The expiry date of the card, indicating its validity period in yyyy-mm format (e.g., 2023-09).
    attr_accessor :expiry_date

    # The type of PAN or token, indicating the source or security method of the card information.
    attr_accessor :pan_type

    # The card's primary account number (PAN), the unique identifier of the card.
    attr_accessor :primary_account_number

    # The indicator used to distinguish between recurring and one-time transactions. If omitted, it will be automatically determined based on the transaction's properties.
    attr_accessor :recurring_indicator

    # A reference specific to the card's transaction within its payment scheme.
    attr_accessor :scheme_transaction_reference

    # The token requestor identifier (TRID) identifies the entity requesting tokenization for a card transaction.
    attr_accessor :token_requestor_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'card_holder_name' => :'cardHolderName',
        :'card_verification_code' => :'cardVerificationCode',
        :'cryptogram' => :'cryptogram',
        :'expiry_date' => :'expiryDate',
        :'pan_type' => :'panType',
        :'primary_account_number' => :'primaryAccountNumber',
        :'recurring_indicator' => :'recurringIndicator',
        :'scheme_transaction_reference' => :'schemeTransactionReference',
        :'token_requestor_id' => :'tokenRequestorId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'card_holder_name' => :'String',
        :'card_verification_code' => :'String',
        :'cryptogram' => :'CardCryptogramCreate',
        :'expiry_date' => :'String',
        :'pan_type' => :'PanType',
        :'primary_account_number' => :'String',
        :'recurring_indicator' => :'RecurringIndicator',
        :'scheme_transaction_reference' => :'String',
        :'token_requestor_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cardHolderName')
        self.card_holder_name = attributes[:'cardHolderName']
      end

      if attributes.has_key?(:'cardVerificationCode')
        self.card_verification_code = attributes[:'cardVerificationCode']
      end

      if attributes.has_key?(:'cryptogram')
        self.cryptogram = attributes[:'cryptogram']
      end

      if attributes.has_key?(:'expiryDate')
        self.expiry_date = attributes[:'expiryDate']
      end

      if attributes.has_key?(:'panType')
        self.pan_type = attributes[:'panType']
      end

      if attributes.has_key?(:'primaryAccountNumber')
        self.primary_account_number = attributes[:'primaryAccountNumber']
      end

      if attributes.has_key?(:'recurringIndicator')
        self.recurring_indicator = attributes[:'recurringIndicator']
      end

      if attributes.has_key?(:'schemeTransactionReference')
        self.scheme_transaction_reference = attributes[:'schemeTransactionReference']
      end

      if attributes.has_key?(:'tokenRequestorId')
        self.token_requestor_id = attributes[:'tokenRequestorId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@card_holder_name.nil? && @card_holder_name.to_s.length > 100
        invalid_properties.push('invalid value for "card_holder_name", the character length must be smaller than or equal to 100.')
      end

      if !@card_verification_code.nil? && @card_verification_code.to_s.length > 4
        invalid_properties.push('invalid value for "card_verification_code", the character length must be smaller than or equal to 4.')
      end

      if !@card_verification_code.nil? && @card_verification_code.to_s.length < 3
        invalid_properties.push('invalid value for "card_verification_code", the character length must be great than or equal to 3.')
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

      if !@scheme_transaction_reference.nil? && @scheme_transaction_reference.to_s.length > 100
        invalid_properties.push('invalid value for "scheme_transaction_reference", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@card_holder_name.nil? && @card_holder_name.to_s.length > 100
      return false if !@card_verification_code.nil? && @card_verification_code.to_s.length > 4
      return false if !@card_verification_code.nil? && @card_verification_code.to_s.length < 3
      return false if @primary_account_number.nil?
      return false if @primary_account_number.to_s.length > 30
      return false if @primary_account_number.to_s.length < 10
      return false if !@scheme_transaction_reference.nil? && @scheme_transaction_reference.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] card_holder_name Value to be assigned
    def card_holder_name=(card_holder_name)
      if !card_holder_name.nil? && card_holder_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "card_holder_name", the character length must be smaller than or equal to 100.'
      end

      @card_holder_name = card_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] card_verification_code Value to be assigned
    def card_verification_code=(card_verification_code)
      if !card_verification_code.nil? && card_verification_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "card_verification_code", the character length must be smaller than or equal to 4.'
      end

      if !card_verification_code.nil? && card_verification_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "card_verification_code", the character length must be great than or equal to 3.'
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

      @primary_account_number = primary_account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] scheme_transaction_reference Value to be assigned
    def scheme_transaction_reference=(scheme_transaction_reference)
      if !scheme_transaction_reference.nil? && scheme_transaction_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "scheme_transaction_reference", the character length must be smaller than or equal to 100.'
      end

      @scheme_transaction_reference = scheme_transaction_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          card_holder_name == o.card_holder_name &&
          card_verification_code == o.card_verification_code &&
          cryptogram == o.cryptogram &&
          expiry_date == o.expiry_date &&
          pan_type == o.pan_type &&
          primary_account_number == o.primary_account_number &&
          recurring_indicator == o.recurring_indicator &&
          scheme_transaction_reference == o.scheme_transaction_reference &&
          token_requestor_id == o.token_requestor_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [card_holder_name, card_verification_code, cryptogram, expiry_date, pan_type, primary_account_number, recurring_indicator, scheme_transaction_reference, token_requestor_id].hash
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
