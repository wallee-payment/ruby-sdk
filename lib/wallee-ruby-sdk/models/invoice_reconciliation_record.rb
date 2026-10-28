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
  class InvoiceReconciliationRecord
    # The discarded on date indicates when the bank transaction has been discarded.
    attr_accessor :discarded_on

    attr_accessor :last_resolution_failure

    attr_accessor :country

    attr_accessor :rejection_status

    attr_accessor :city

    attr_accessor :resolved_by

    attr_accessor :discarded_by

    attr_accessor :type

    # The date and time when the object was created.
    attr_accessor :created_on

    attr_accessor :payment_fee_currency

    attr_accessor :payment_reason

    attr_accessor :reference_number

    attr_accessor :street

    attr_accessor :family_name

    attr_accessor :currency

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    # The resolved on date indicates when the bank transaction has been resolved.
    attr_accessor :resolved_on

    attr_accessor :amount

    attr_accessor :address

    attr_accessor :given_name

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    attr_accessor :bank_payment_type

    attr_accessor :value_date

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    attr_accessor :payment_fee_amount

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    attr_accessor :environment

    attr_accessor :sender_bank_account

    attr_accessor :participant_number

    attr_accessor :iban

    attr_accessor :post_code

    attr_accessor :unique_id

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
        :'last_resolution_failure' => :'lastResolutionFailure',
        :'country' => :'country',
        :'rejection_status' => :'rejectionStatus',
        :'city' => :'city',
        :'resolved_by' => :'resolvedBy',
        :'discarded_by' => :'discardedBy',
        :'type' => :'type',
        :'created_on' => :'createdOn',
        :'payment_fee_currency' => :'paymentFeeCurrency',
        :'payment_reason' => :'paymentReason',
        :'reference_number' => :'referenceNumber',
        :'street' => :'street',
        :'family_name' => :'familyName',
        :'currency' => :'currency',
        :'id' => :'id',
        :'state' => :'state',
        :'linked_transaction' => :'linkedTransaction',
        :'resolved_on' => :'resolvedOn',
        :'amount' => :'amount',
        :'address' => :'address',
        :'given_name' => :'givenName',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'bank_payment_type' => :'bankPaymentType',
        :'value_date' => :'valueDate',
        :'version' => :'version',
        :'payment_fee_amount' => :'paymentFeeAmount',
        :'linked_space_id' => :'linkedSpaceId',
        :'environment' => :'environment',
        :'sender_bank_account' => :'senderBankAccount',
        :'participant_number' => :'participantNumber',
        :'iban' => :'iban',
        :'post_code' => :'postCode',
        :'unique_id' => :'uniqueId'
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
        :'last_resolution_failure' => :'FailureReason',
        :'country' => :'String',
        :'rejection_status' => :'InvoiceReconciliationRecordRejectionStatus',
        :'city' => :'String',
        :'resolved_by' => :'Integer',
        :'discarded_by' => :'Integer',
        :'type' => :'InvoiceReconciliationRecordType',
        :'created_on' => :'Time',
        :'payment_fee_currency' => :'String',
        :'payment_reason' => :'String',
        :'reference_number' => :'String',
        :'street' => :'String',
        :'family_name' => :'String',
        :'currency' => :'String',
        :'id' => :'Integer',
        :'state' => :'InvoiceReconciliationRecordState',
        :'linked_transaction' => :'Integer',
        :'resolved_on' => :'Time',
        :'amount' => :'Float',
        :'address' => :'String',
        :'given_name' => :'String',
        :'planned_purge_date' => :'Time',
        :'bank_payment_type' => :'BankPaymentType',
        :'value_date' => :'Time',
        :'version' => :'Integer',
        :'payment_fee_amount' => :'Float',
        :'linked_space_id' => :'Integer',
        :'environment' => :'ChargeAttemptEnvironment',
        :'sender_bank_account' => :'String',
        :'participant_number' => :'String',
        :'iban' => :'String',
        :'post_code' => :'String',
        :'unique_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::InvoiceReconciliationRecord` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::InvoiceReconciliationRecord`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'discarded_on')
        self.discarded_on = attributes[:'discarded_on']
      end

      if attributes.key?(:'last_resolution_failure')
        self.last_resolution_failure = attributes[:'last_resolution_failure']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'rejection_status')
        self.rejection_status = attributes[:'rejection_status']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'resolved_by')
        self.resolved_by = attributes[:'resolved_by']
      end

      if attributes.key?(:'discarded_by')
        self.discarded_by = attributes[:'discarded_by']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'payment_fee_currency')
        self.payment_fee_currency = attributes[:'payment_fee_currency']
      end

      if attributes.key?(:'payment_reason')
        self.payment_reason = attributes[:'payment_reason']
      end

      if attributes.key?(:'reference_number')
        self.reference_number = attributes[:'reference_number']
      end

      if attributes.key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.key?(:'family_name')
        self.family_name = attributes[:'family_name']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'linked_transaction')
        self.linked_transaction = attributes[:'linked_transaction']
      end

      if attributes.key?(:'resolved_on')
        self.resolved_on = attributes[:'resolved_on']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'given_name')
        self.given_name = attributes[:'given_name']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'bank_payment_type')
        self.bank_payment_type = attributes[:'bank_payment_type']
      end

      if attributes.key?(:'value_date')
        self.value_date = attributes[:'value_date']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'payment_fee_amount')
        self.payment_fee_amount = attributes[:'payment_fee_amount']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'sender_bank_account')
        self.sender_bank_account = attributes[:'sender_bank_account']
      end

      if attributes.key?(:'participant_number')
        self.participant_number = attributes[:'participant_number']
      end

      if attributes.key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.key?(:'post_code')
        self.post_code = attributes[:'post_code']
      end

      if attributes.key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@reference_number.nil? && @reference_number.to_s.length > 255
        invalid_properties.push('invalid value for "reference_number", the character length must be smaller than or equal to 255.')
      end

      if !@participant_number.nil? && @participant_number.to_s.length > 100
        invalid_properties.push('invalid value for "participant_number", the character length must be smaller than or equal to 100.')
      end

      if !@iban.nil? && @iban.to_s.length > 100
        invalid_properties.push('invalid value for "iban", the character length must be smaller than or equal to 100.')
      end

      if !@unique_id.nil? && @unique_id.to_s.length > 500
        invalid_properties.push('invalid value for "unique_id", the character length must be smaller than or equal to 500.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@reference_number.nil? && @reference_number.to_s.length > 255
      return false if !@participant_number.nil? && @participant_number.to_s.length > 100
      return false if !@iban.nil? && @iban.to_s.length > 100
      return false if !@unique_id.nil? && @unique_id.to_s.length > 500
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_number Value to be assigned
    def reference_number=(reference_number)
      if reference_number.nil?
        fail ArgumentError, 'reference_number cannot be nil'
      end

      if reference_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "reference_number", the character length must be smaller than or equal to 255.'
      end

      @reference_number = reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] participant_number Value to be assigned
    def participant_number=(participant_number)
      if participant_number.nil?
        fail ArgumentError, 'participant_number cannot be nil'
      end

      if participant_number.to_s.length > 100
        fail ArgumentError, 'invalid value for "participant_number", the character length must be smaller than or equal to 100.'
      end

      @participant_number = participant_number
    end

    # Custom attribute writer method with validation
    # @param [Object] iban Value to be assigned
    def iban=(iban)
      if iban.nil?
        fail ArgumentError, 'iban cannot be nil'
      end

      if iban.to_s.length > 100
        fail ArgumentError, 'invalid value for "iban", the character length must be smaller than or equal to 100.'
      end

      @iban = iban
    end

    # Custom attribute writer method with validation
    # @param [Object] unique_id Value to be assigned
    def unique_id=(unique_id)
      if unique_id.nil?
        fail ArgumentError, 'unique_id cannot be nil'
      end

      if unique_id.to_s.length > 500
        fail ArgumentError, 'invalid value for "unique_id", the character length must be smaller than or equal to 500.'
      end

      @unique_id = unique_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          discarded_on == o.discarded_on &&
          last_resolution_failure == o.last_resolution_failure &&
          country == o.country &&
          rejection_status == o.rejection_status &&
          city == o.city &&
          resolved_by == o.resolved_by &&
          discarded_by == o.discarded_by &&
          type == o.type &&
          created_on == o.created_on &&
          payment_fee_currency == o.payment_fee_currency &&
          payment_reason == o.payment_reason &&
          reference_number == o.reference_number &&
          street == o.street &&
          family_name == o.family_name &&
          currency == o.currency &&
          id == o.id &&
          state == o.state &&
          linked_transaction == o.linked_transaction &&
          resolved_on == o.resolved_on &&
          amount == o.amount &&
          address == o.address &&
          given_name == o.given_name &&
          planned_purge_date == o.planned_purge_date &&
          bank_payment_type == o.bank_payment_type &&
          value_date == o.value_date &&
          version == o.version &&
          payment_fee_amount == o.payment_fee_amount &&
          linked_space_id == o.linked_space_id &&
          environment == o.environment &&
          sender_bank_account == o.sender_bank_account &&
          participant_number == o.participant_number &&
          iban == o.iban &&
          post_code == o.post_code &&
          unique_id == o.unique_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [discarded_on, last_resolution_failure, country, rejection_status, city, resolved_by, discarded_by, type, created_on, payment_fee_currency, payment_reason, reference_number, street, family_name, currency, id, state, linked_transaction, resolved_on, amount, address, given_name, planned_purge_date, bank_payment_type, value_date, version, payment_fee_amount, linked_space_id, environment, sender_bank_account, participant_number, iban, post_code, unique_id].hash
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
