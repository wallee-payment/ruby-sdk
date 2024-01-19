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
  class InvoiceReimbursementWithRefundReference
    # 
    attr_accessor :amount

    # The date and time when the object was created.
    attr_accessor :created_on

    # 
    attr_accessor :currency

    # 
    attr_accessor :discarded_by

    # 
    attr_accessor :discarded_on

    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :payment_connector_configuration

    # 
    attr_accessor :payment_initiation_advice_file

    # 
    attr_accessor :processed_by

    # 
    attr_accessor :processed_on

    # 
    attr_accessor :recipient_city

    # 
    attr_accessor :recipient_country

    # 
    attr_accessor :recipient_family_name

    # 
    attr_accessor :recipient_given_name

    # 
    attr_accessor :recipient_iban

    # 
    attr_accessor :recipient_postcode

    # 
    attr_accessor :recipient_street

    # 
    attr_accessor :sender_iban

    # The object's current state.
    attr_accessor :state

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # 
    attr_accessor :refund_merchant_reference

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'created_on' => :'createdOn',
        :'currency' => :'currency',
        :'discarded_by' => :'discardedBy',
        :'discarded_on' => :'discardedOn',
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'payment_initiation_advice_file' => :'paymentInitiationAdviceFile',
        :'processed_by' => :'processedBy',
        :'processed_on' => :'processedOn',
        :'recipient_city' => :'recipientCity',
        :'recipient_country' => :'recipientCountry',
        :'recipient_family_name' => :'recipientFamilyName',
        :'recipient_given_name' => :'recipientGivenName',
        :'recipient_iban' => :'recipientIban',
        :'recipient_postcode' => :'recipientPostcode',
        :'recipient_street' => :'recipientStreet',
        :'sender_iban' => :'senderIban',
        :'state' => :'state',
        :'version' => :'version',
        :'refund_merchant_reference' => :'refundMerchantReference'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'created_on' => :'DateTime',
        :'currency' => :'String',
        :'discarded_by' => :'Integer',
        :'discarded_on' => :'DateTime',
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'payment_initiation_advice_file' => :'PaymentInitiationAdviceFile',
        :'processed_by' => :'Integer',
        :'processed_on' => :'DateTime',
        :'recipient_city' => :'String',
        :'recipient_country' => :'String',
        :'recipient_family_name' => :'String',
        :'recipient_given_name' => :'String',
        :'recipient_iban' => :'String',
        :'recipient_postcode' => :'String',
        :'recipient_street' => :'String',
        :'sender_iban' => :'String',
        :'state' => :'InvoiceReimbursementState',
        :'version' => :'Integer',
        :'refund_merchant_reference' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'discardedBy')
        self.discarded_by = attributes[:'discardedBy']
      end

      if attributes.has_key?(:'discardedOn')
        self.discarded_on = attributes[:'discardedOn']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'paymentConnectorConfiguration')
        self.payment_connector_configuration = attributes[:'paymentConnectorConfiguration']
      end

      if attributes.has_key?(:'paymentInitiationAdviceFile')
        self.payment_initiation_advice_file = attributes[:'paymentInitiationAdviceFile']
      end

      if attributes.has_key?(:'processedBy')
        self.processed_by = attributes[:'processedBy']
      end

      if attributes.has_key?(:'processedOn')
        self.processed_on = attributes[:'processedOn']
      end

      if attributes.has_key?(:'recipientCity')
        self.recipient_city = attributes[:'recipientCity']
      end

      if attributes.has_key?(:'recipientCountry')
        self.recipient_country = attributes[:'recipientCountry']
      end

      if attributes.has_key?(:'recipientFamilyName')
        self.recipient_family_name = attributes[:'recipientFamilyName']
      end

      if attributes.has_key?(:'recipientGivenName')
        self.recipient_given_name = attributes[:'recipientGivenName']
      end

      if attributes.has_key?(:'recipientIban')
        self.recipient_iban = attributes[:'recipientIban']
      end

      if attributes.has_key?(:'recipientPostcode')
        self.recipient_postcode = attributes[:'recipientPostcode']
      end

      if attributes.has_key?(:'recipientStreet')
        self.recipient_street = attributes[:'recipientStreet']
      end

      if attributes.has_key?(:'senderIban')
        self.sender_iban = attributes[:'senderIban']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'refundMerchantReference')
        self.refund_merchant_reference = attributes[:'refundMerchantReference']
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
          amount == o.amount &&
          created_on == o.created_on &&
          currency == o.currency &&
          discarded_by == o.discarded_by &&
          discarded_on == o.discarded_on &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          payment_connector_configuration == o.payment_connector_configuration &&
          payment_initiation_advice_file == o.payment_initiation_advice_file &&
          processed_by == o.processed_by &&
          processed_on == o.processed_on &&
          recipient_city == o.recipient_city &&
          recipient_country == o.recipient_country &&
          recipient_family_name == o.recipient_family_name &&
          recipient_given_name == o.recipient_given_name &&
          recipient_iban == o.recipient_iban &&
          recipient_postcode == o.recipient_postcode &&
          recipient_street == o.recipient_street &&
          sender_iban == o.sender_iban &&
          state == o.state &&
          version == o.version &&
          refund_merchant_reference == o.refund_merchant_reference
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amount, created_on, currency, discarded_by, discarded_on, id, linked_space_id, payment_connector_configuration, payment_initiation_advice_file, processed_by, processed_on, recipient_city, recipient_country, recipient_family_name, recipient_given_name, recipient_iban, recipient_postcode, recipient_street, sender_iban, state, version, refund_merchant_reference].hash
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
