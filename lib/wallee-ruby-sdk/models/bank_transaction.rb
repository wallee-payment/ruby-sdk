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
  class BankTransaction
    # Adjustments are changes made to the initial transaction amount, such as fees or corrections.
    attr_accessor :adjustments

    # The ID of the user the bank transaction was created by.
    attr_accessor :created_by

    # The date and time when the object was created.
    attr_accessor :created_on

    # The currency bank account that sends or receives money based on the bank transaction's flow direction.
    attr_accessor :currency_bank_account

    # A client generated nonce which identifies the entity to be created. Subsequent creation requests with the same external ID will not create new entities but return the initially created entity instead.
    attr_accessor :external_id

    # Indicates the direction of a bank transaction, specifying whether the amount flows into or out of the bank account.
    attr_accessor :flow_direction

    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The payment date specifies the date on which the payment was processed.
    attr_accessor :payment_date

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The posting amount refers to the monetary value recorded for the bank transaction prior to any adjustments.
    attr_accessor :posting_amount

    # A unique reference to identify the bank transaction.
    attr_accessor :reference

    # The source indicates how the bank transaction was created.
    attr_accessor :source

    # The object's current state.
    attr_accessor :state

    # Represents the total value of all adjustments to the bank transaction, including tax.
    attr_accessor :total_adjustment_amount_including_tax

    # The bank transaction's type.
    attr_accessor :type

    # The value amount represents the net monetary value of the transaction after applicable deductions.
    attr_accessor :value_amount

    # The value date indicates the date on which the transaction amount becomes effective.
    attr_accessor :value_date

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'adjustments' => :'adjustments',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'currency_bank_account' => :'currencyBankAccount',
        :'external_id' => :'externalId',
        :'flow_direction' => :'flowDirection',
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'payment_date' => :'paymentDate',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'posting_amount' => :'postingAmount',
        :'reference' => :'reference',
        :'source' => :'source',
        :'state' => :'state',
        :'total_adjustment_amount_including_tax' => :'totalAdjustmentAmountIncludingTax',
        :'type' => :'type',
        :'value_amount' => :'valueAmount',
        :'value_date' => :'valueDate',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'adjustments' => :'Array<PaymentAdjustment>',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'currency_bank_account' => :'CurrencyBankAccount',
        :'external_id' => :'String',
        :'flow_direction' => :'BankTransactionFlowDirection',
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'payment_date' => :'DateTime',
        :'planned_purge_date' => :'DateTime',
        :'posting_amount' => :'Float',
        :'reference' => :'String',
        :'source' => :'Integer',
        :'state' => :'BankTransactionState',
        :'total_adjustment_amount_including_tax' => :'Float',
        :'type' => :'Integer',
        :'value_amount' => :'Float',
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

      if attributes.has_key?(:'adjustments')
        if (value = attributes[:'adjustments']).is_a?(Array)
          self.adjustments = value
        end
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'currencyBankAccount')
        self.currency_bank_account = attributes[:'currencyBankAccount']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'flowDirection')
        self.flow_direction = attributes[:'flowDirection']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'paymentDate')
        self.payment_date = attributes[:'paymentDate']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'postingAmount')
        self.posting_amount = attributes[:'postingAmount']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'totalAdjustmentAmountIncludingTax')
        self.total_adjustment_amount_including_tax = attributes[:'totalAdjustmentAmountIncludingTax']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'valueAmount')
        self.value_amount = attributes[:'valueAmount']
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
      if !@external_id.nil? && @external_id.to_s.length > 100
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 100.')
      end

      if !@external_id.nil? && @external_id.to_s.length < 1
        invalid_properties.push('invalid value for "external_id", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if !external_id.nil? && external_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 100.'
      end

      if !external_id.nil? && external_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "external_id", the character length must be great than or equal to 1.'
      end

      @external_id = external_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          adjustments == o.adjustments &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          currency_bank_account == o.currency_bank_account &&
          external_id == o.external_id &&
          flow_direction == o.flow_direction &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          payment_date == o.payment_date &&
          planned_purge_date == o.planned_purge_date &&
          posting_amount == o.posting_amount &&
          reference == o.reference &&
          source == o.source &&
          state == o.state &&
          total_adjustment_amount_including_tax == o.total_adjustment_amount_including_tax &&
          type == o.type &&
          value_amount == o.value_amount &&
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
      [adjustments, created_by, created_on, currency_bank_account, external_id, flow_direction, id, linked_space_id, payment_date, planned_purge_date, posting_amount, reference, source, state, total_adjustment_amount_including_tax, type, value_amount, value_date, version].hash
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
