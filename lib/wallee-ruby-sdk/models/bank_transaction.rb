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
  class BankTransaction
    # Adjustments are changes made to the initial transaction amount, such as fees or corrections.
    attr_accessor :adjustments

    attr_accessor :currency_bank_account

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # A client generated nonce which identifies the entity to be created. Subsequent creation requests with the same external ID will not create new entities but return the initially created entity instead.
    attr_accessor :external_id

    # The posting amount refers to the monetary value recorded for the bank transaction prior to any adjustments.
    attr_accessor :posting_amount

    # The source indicates how the bank transaction was created.
    attr_accessor :source

    # The value date indicates the date on which the transaction amount becomes effective.
    attr_accessor :value_date

    # The bank transaction's type.
    attr_accessor :type

    # The date and time when the object was created.
    attr_accessor :created_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # A unique reference to identify the bank transaction.
    attr_accessor :reference

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The value amount represents the net monetary value of the transaction after applicable deductions.
    attr_accessor :value_amount

    attr_accessor :flow_direction

    # The ID of the user the bank transaction was created by.
    attr_accessor :created_by

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The payment date specifies the date on which the payment was processed.
    attr_accessor :payment_date

    # Represents the total value of all adjustments to the bank transaction, including tax.
    attr_accessor :total_adjustment_amount_including_tax

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
        :'adjustments' => :'adjustments',
        :'currency_bank_account' => :'currencyBankAccount',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'external_id' => :'externalId',
        :'posting_amount' => :'postingAmount',
        :'source' => :'source',
        :'value_date' => :'valueDate',
        :'type' => :'type',
        :'created_on' => :'createdOn',
        :'version' => :'version',
        :'reference' => :'reference',
        :'linked_space_id' => :'linkedSpaceId',
        :'value_amount' => :'valueAmount',
        :'flow_direction' => :'flowDirection',
        :'created_by' => :'createdBy',
        :'id' => :'id',
        :'state' => :'state',
        :'payment_date' => :'paymentDate',
        :'total_adjustment_amount_including_tax' => :'totalAdjustmentAmountIncludingTax'
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
        :'adjustments' => :'Array<PaymentAdjustment>',
        :'currency_bank_account' => :'CurrencyBankAccount',
        :'planned_purge_date' => :'Time',
        :'external_id' => :'String',
        :'posting_amount' => :'Float',
        :'source' => :'Integer',
        :'value_date' => :'Time',
        :'type' => :'Integer',
        :'created_on' => :'Time',
        :'version' => :'Integer',
        :'reference' => :'String',
        :'linked_space_id' => :'Integer',
        :'value_amount' => :'Float',
        :'flow_direction' => :'BankTransactionFlowDirection',
        :'created_by' => :'Integer',
        :'id' => :'Integer',
        :'state' => :'BankTransactionState',
        :'payment_date' => :'Time',
        :'total_adjustment_amount_including_tax' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::BankTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::BankTransaction`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'adjustments')
        if (value = attributes[:'adjustments']).is_a?(Array)
          self.adjustments = value
        end
      end

      if attributes.key?(:'currency_bank_account')
        self.currency_bank_account = attributes[:'currency_bank_account']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'posting_amount')
        self.posting_amount = attributes[:'posting_amount']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'value_date')
        self.value_date = attributes[:'value_date']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'value_amount')
        self.value_amount = attributes[:'value_amount']
      end

      if attributes.key?(:'flow_direction')
        self.flow_direction = attributes[:'flow_direction']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'total_adjustment_amount_including_tax')
        self.total_adjustment_amount_including_tax = attributes[:'total_adjustment_amount_including_tax']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@external_id.nil? && @external_id.to_s.length > 100
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 100.')
      end

      if !@external_id.nil? && @external_id.to_s.length < 1
        invalid_properties.push('invalid value for "external_id", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@external_id.nil? && @external_id !~ pattern
        invalid_properties.push("invalid value for \"external_id\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      return false if !@external_id.nil? && @external_id !~ Regexp.new(/[	\x20-\x7e]*/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if external_id.nil?
        fail ArgumentError, 'external_id cannot be nil'
      end

      if external_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 100.'
      end

      if external_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "external_id", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if external_id !~ pattern
        fail ArgumentError, "invalid value for \"external_id\", must conform to the pattern #{pattern}."
      end

      @external_id = external_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          adjustments == o.adjustments &&
          currency_bank_account == o.currency_bank_account &&
          planned_purge_date == o.planned_purge_date &&
          external_id == o.external_id &&
          posting_amount == o.posting_amount &&
          source == o.source &&
          value_date == o.value_date &&
          type == o.type &&
          created_on == o.created_on &&
          version == o.version &&
          reference == o.reference &&
          linked_space_id == o.linked_space_id &&
          value_amount == o.value_amount &&
          flow_direction == o.flow_direction &&
          created_by == o.created_by &&
          id == o.id &&
          state == o.state &&
          payment_date == o.payment_date &&
          total_adjustment_amount_including_tax == o.total_adjustment_amount_including_tax
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [adjustments, currency_bank_account, planned_purge_date, external_id, posting_amount, source, value_date, type, created_on, version, reference, linked_space_id, value_amount, flow_direction, created_by, id, state, payment_date, total_adjustment_amount_including_tax].hash
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
