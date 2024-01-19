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
  class InvoiceReconciliationRecord
    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :linked_transaction

    # 
    attr_accessor :address

    # 
    attr_accessor :amount

    # 
    attr_accessor :city

    # 
    attr_accessor :country

    # The date and time when the object was created.
    attr_accessor :created_on

    # 
    attr_accessor :currency

    # 
    attr_accessor :discarded_by

    # The discarded on date indicates when the bank transaction has been discarded.
    attr_accessor :discarded_on

    # 
    attr_accessor :environment

    # 
    attr_accessor :family_name

    # 
    attr_accessor :given_name

    # 
    attr_accessor :iban

    # 
    attr_accessor :last_resolution_failure

    # 
    attr_accessor :participant_number

    # 
    attr_accessor :payment_fee_amount

    # 
    attr_accessor :payment_fee_currency

    # 
    attr_accessor :payment_reason

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :post_code

    # 
    attr_accessor :reference_number

    # 
    attr_accessor :rejection_status

    # 
    attr_accessor :resolved_by

    # The resolved on date indicates when the bank transaction has been resolved.
    attr_accessor :resolved_on

    # 
    attr_accessor :sender_bank_account

    # The object's current state.
    attr_accessor :state

    # 
    attr_accessor :street

    # 
    attr_accessor :type

    # 
    attr_accessor :unique_id

    # 
    attr_accessor :value_date

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'linked_transaction' => :'linkedTransaction',
        :'address' => :'address',
        :'amount' => :'amount',
        :'city' => :'city',
        :'country' => :'country',
        :'created_on' => :'createdOn',
        :'currency' => :'currency',
        :'discarded_by' => :'discardedBy',
        :'discarded_on' => :'discardedOn',
        :'environment' => :'environment',
        :'family_name' => :'familyName',
        :'given_name' => :'givenName',
        :'iban' => :'iban',
        :'last_resolution_failure' => :'lastResolutionFailure',
        :'participant_number' => :'participantNumber',
        :'payment_fee_amount' => :'paymentFeeAmount',
        :'payment_fee_currency' => :'paymentFeeCurrency',
        :'payment_reason' => :'paymentReason',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'post_code' => :'postCode',
        :'reference_number' => :'referenceNumber',
        :'rejection_status' => :'rejectionStatus',
        :'resolved_by' => :'resolvedBy',
        :'resolved_on' => :'resolvedOn',
        :'sender_bank_account' => :'senderBankAccount',
        :'state' => :'state',
        :'street' => :'street',
        :'type' => :'type',
        :'unique_id' => :'uniqueId',
        :'value_date' => :'valueDate',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'linked_transaction' => :'Integer',
        :'address' => :'String',
        :'amount' => :'Float',
        :'city' => :'String',
        :'country' => :'String',
        :'created_on' => :'DateTime',
        :'currency' => :'String',
        :'discarded_by' => :'Integer',
        :'discarded_on' => :'DateTime',
        :'environment' => :'ChargeAttemptEnvironment',
        :'family_name' => :'String',
        :'given_name' => :'String',
        :'iban' => :'String',
        :'last_resolution_failure' => :'FailureReason',
        :'participant_number' => :'String',
        :'payment_fee_amount' => :'Float',
        :'payment_fee_currency' => :'String',
        :'payment_reason' => :'String',
        :'planned_purge_date' => :'DateTime',
        :'post_code' => :'String',
        :'reference_number' => :'String',
        :'rejection_status' => :'InvoiceReconciliationRecordRejectionStatus',
        :'resolved_by' => :'Integer',
        :'resolved_on' => :'DateTime',
        :'sender_bank_account' => :'String',
        :'state' => :'InvoiceReconciliationRecordState',
        :'street' => :'String',
        :'type' => :'InvoiceReconciliationRecordType',
        :'unique_id' => :'String',
        :'value_date' => :'DateTime',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'linkedTransaction')
        self.linked_transaction = attributes[:'linkedTransaction']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
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

      if attributes.has_key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.has_key?(:'familyName')
        self.family_name = attributes[:'familyName']
      end

      if attributes.has_key?(:'givenName')
        self.given_name = attributes[:'givenName']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'lastResolutionFailure')
        self.last_resolution_failure = attributes[:'lastResolutionFailure']
      end

      if attributes.has_key?(:'participantNumber')
        self.participant_number = attributes[:'participantNumber']
      end

      if attributes.has_key?(:'paymentFeeAmount')
        self.payment_fee_amount = attributes[:'paymentFeeAmount']
      end

      if attributes.has_key?(:'paymentFeeCurrency')
        self.payment_fee_currency = attributes[:'paymentFeeCurrency']
      end

      if attributes.has_key?(:'paymentReason')
        self.payment_reason = attributes[:'paymentReason']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'postCode')
        self.post_code = attributes[:'postCode']
      end

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
      end

      if attributes.has_key?(:'rejectionStatus')
        self.rejection_status = attributes[:'rejectionStatus']
      end

      if attributes.has_key?(:'resolvedBy')
        self.resolved_by = attributes[:'resolvedBy']
      end

      if attributes.has_key?(:'resolvedOn')
        self.resolved_on = attributes[:'resolvedOn']
      end

      if attributes.has_key?(:'senderBankAccount')
        self.sender_bank_account = attributes[:'senderBankAccount']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'uniqueId')
        self.unique_id = attributes[:'uniqueId']
      end

      if attributes.has_key?(:'valueDate')
        self.value_date = attributes[:'valueDate']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@iban.nil? && @iban.to_s.length > 100
        invalid_properties.push('invalid value for "iban", the character length must be smaller than or equal to 100.')
      end

      if !@participant_number.nil? && @participant_number.to_s.length > 100
        invalid_properties.push('invalid value for "participant_number", the character length must be smaller than or equal to 100.')
      end

      if !@reference_number.nil? && @reference_number.to_s.length > 255
        invalid_properties.push('invalid value for "reference_number", the character length must be smaller than or equal to 255.')
      end

      if !@unique_id.nil? && @unique_id.to_s.length > 500
        invalid_properties.push('invalid value for "unique_id", the character length must be smaller than or equal to 500.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@iban.nil? && @iban.to_s.length > 100
      return false if !@participant_number.nil? && @participant_number.to_s.length > 100
      return false if !@reference_number.nil? && @reference_number.to_s.length > 255
      return false if !@unique_id.nil? && @unique_id.to_s.length > 500
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] iban Value to be assigned
    def iban=(iban)
      if !iban.nil? && iban.to_s.length > 100
        fail ArgumentError, 'invalid value for "iban", the character length must be smaller than or equal to 100.'
      end

      @iban = iban
    end

    # Custom attribute writer method with validation
    # @param [Object] participant_number Value to be assigned
    def participant_number=(participant_number)
      if !participant_number.nil? && participant_number.to_s.length > 100
        fail ArgumentError, 'invalid value for "participant_number", the character length must be smaller than or equal to 100.'
      end

      @participant_number = participant_number
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_number Value to be assigned
    def reference_number=(reference_number)
      if !reference_number.nil? && reference_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "reference_number", the character length must be smaller than or equal to 255.'
      end

      @reference_number = reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] unique_id Value to be assigned
    def unique_id=(unique_id)
      if !unique_id.nil? && unique_id.to_s.length > 500
        fail ArgumentError, 'invalid value for "unique_id", the character length must be smaller than or equal to 500.'
      end

      @unique_id = unique_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          linked_transaction == o.linked_transaction &&
          address == o.address &&
          amount == o.amount &&
          city == o.city &&
          country == o.country &&
          created_on == o.created_on &&
          currency == o.currency &&
          discarded_by == o.discarded_by &&
          discarded_on == o.discarded_on &&
          environment == o.environment &&
          family_name == o.family_name &&
          given_name == o.given_name &&
          iban == o.iban &&
          last_resolution_failure == o.last_resolution_failure &&
          participant_number == o.participant_number &&
          payment_fee_amount == o.payment_fee_amount &&
          payment_fee_currency == o.payment_fee_currency &&
          payment_reason == o.payment_reason &&
          planned_purge_date == o.planned_purge_date &&
          post_code == o.post_code &&
          reference_number == o.reference_number &&
          rejection_status == o.rejection_status &&
          resolved_by == o.resolved_by &&
          resolved_on == o.resolved_on &&
          sender_bank_account == o.sender_bank_account &&
          state == o.state &&
          street == o.street &&
          type == o.type &&
          unique_id == o.unique_id &&
          value_date == o.value_date &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, linked_space_id, linked_transaction, address, amount, city, country, created_on, currency, discarded_by, discarded_on, environment, family_name, given_name, iban, last_resolution_failure, participant_number, payment_fee_amount, payment_fee_currency, payment_reason, planned_purge_date, post_code, reference_number, rejection_status, resolved_by, resolved_on, sender_bank_account, state, street, type, unique_id, value_date, version].hash
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
