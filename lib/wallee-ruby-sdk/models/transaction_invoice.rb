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
  class TransactionInvoice
    attr_accessor :completion

    # The date and time when the invoice was derecognized, meaning it is no longer considered outstanding or valid in the system.
    attr_accessor :derecognized_on

    # The total sum of all line items on the invoice, including taxes.
    attr_accessor :amount

    # The due date for payment of the invoice.
    attr_accessor :due_on

    # The remaining amount the buyer owes to the merchant. A negative value indicates the invoice has been overpaid.
    attr_accessor :outstanding_amount

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The time zone that this object is associated with.
    attr_accessor :time_zone

    # The language that is linked to the object.
    attr_accessor :language

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    # The date and time when the object was created.
    attr_accessor :created_on

    # The date and time when the invoice was recorded as paid. May differ from the actual payment date due to processing delays.
    attr_accessor :paid_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The invoiced line items that will appear on the invoice document.
    attr_accessor :line_items

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    attr_accessor :environment

    # The ID of the user the invoice was derecognized by.
    attr_accessor :derecognized_by

    attr_accessor :billing_address

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    # The portion of the invoiced amount that corresponds to taxes.
    attr_accessor :tax_amount

    # The merchant's reference used to identify the invoice.
    attr_accessor :merchant_reference

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
        :'completion' => :'completion',
        :'derecognized_on' => :'derecognizedOn',
        :'amount' => :'amount',
        :'due_on' => :'dueOn',
        :'outstanding_amount' => :'outstandingAmount',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'external_id' => :'externalId',
        :'time_zone' => :'timeZone',
        :'language' => :'language',
        :'space_view_id' => :'spaceViewId',
        :'created_on' => :'createdOn',
        :'paid_on' => :'paidOn',
        :'version' => :'version',
        :'line_items' => :'lineItems',
        :'linked_space_id' => :'linkedSpaceId',
        :'environment' => :'environment',
        :'derecognized_by' => :'derecognizedBy',
        :'billing_address' => :'billingAddress',
        :'id' => :'id',
        :'state' => :'state',
        :'linked_transaction' => :'linkedTransaction',
        :'tax_amount' => :'taxAmount',
        :'merchant_reference' => :'merchantReference'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'completion' => :'TransactionCompletion',
        :'derecognized_on' => :'Time',
        :'amount' => :'Float',
        :'due_on' => :'Time',
        :'outstanding_amount' => :'Float',
        :'planned_purge_date' => :'Time',
        :'external_id' => :'String',
        :'time_zone' => :'String',
        :'language' => :'String',
        :'space_view_id' => :'Integer',
        :'created_on' => :'Time',
        :'paid_on' => :'Time',
        :'version' => :'Integer',
        :'line_items' => :'Array<LineItem>',
        :'linked_space_id' => :'Integer',
        :'environment' => :'Environment',
        :'derecognized_by' => :'Integer',
        :'billing_address' => :'Address',
        :'id' => :'Integer',
        :'state' => :'TransactionInvoiceState',
        :'linked_transaction' => :'Integer',
        :'tax_amount' => :'Float',
        :'merchant_reference' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::TransactionInvoice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::TransactionInvoice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'completion')
        self.completion = attributes[:'completion']
      end

      if attributes.key?(:'derecognized_on')
        self.derecognized_on = attributes[:'derecognized_on']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'due_on')
        self.due_on = attributes[:'due_on']
      end

      if attributes.key?(:'outstanding_amount')
        self.outstanding_amount = attributes[:'outstanding_amount']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'space_view_id')
        self.space_view_id = attributes[:'space_view_id']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'paid_on')
        self.paid_on = attributes[:'paid_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'derecognized_by')
        self.derecognized_by = attributes[:'derecognized_by']
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

      if attributes.key?(:'linked_transaction')
        self.linked_transaction = attributes[:'linked_transaction']
      end

      if attributes.key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.key?(:'merchant_reference')
        self.merchant_reference = attributes[:'merchant_reference']
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
        invalid_properties.push('invalid value for "external_id", the character length must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@external_id.nil? && @external_id !~ pattern
        invalid_properties.push("invalid value for \"external_id\", must conform to the pattern #{pattern}.")
      end

      if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "merchant_reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@merchant_reference.nil? && @merchant_reference !~ pattern
        invalid_properties.push("invalid value for \"merchant_reference\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@external_id.nil? && @external_id !~ pattern
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@merchant_reference.nil? && @merchant_reference !~ pattern
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
        fail ArgumentError, 'invalid value for "external_id", the character length must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if external_id !~ pattern
        fail ArgumentError, "invalid value for \"external_id\", must conform to the pattern #{pattern}."
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_reference Value to be assigned
    def merchant_reference=(merchant_reference)
      if merchant_reference.nil?
        fail ArgumentError, 'merchant_reference cannot be nil'
      end

      if merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "merchant_reference", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if merchant_reference !~ pattern
        fail ArgumentError, "invalid value for \"merchant_reference\", must conform to the pattern #{pattern}."
      end

      @merchant_reference = merchant_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          completion == o.completion &&
          derecognized_on == o.derecognized_on &&
          amount == o.amount &&
          due_on == o.due_on &&
          outstanding_amount == o.outstanding_amount &&
          planned_purge_date == o.planned_purge_date &&
          external_id == o.external_id &&
          time_zone == o.time_zone &&
          language == o.language &&
          space_view_id == o.space_view_id &&
          created_on == o.created_on &&
          paid_on == o.paid_on &&
          version == o.version &&
          line_items == o.line_items &&
          linked_space_id == o.linked_space_id &&
          environment == o.environment &&
          derecognized_by == o.derecognized_by &&
          billing_address == o.billing_address &&
          id == o.id &&
          state == o.state &&
          linked_transaction == o.linked_transaction &&
          tax_amount == o.tax_amount &&
          merchant_reference == o.merchant_reference
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [completion, derecognized_on, amount, due_on, outstanding_amount, planned_purge_date, external_id, time_zone, language, space_view_id, created_on, paid_on, version, line_items, linked_space_id, environment, derecognized_by, billing_address, id, state, linked_transaction, tax_amount, merchant_reference].hash
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
