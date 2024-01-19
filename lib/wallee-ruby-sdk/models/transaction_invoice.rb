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
  # The transaction invoice represents the invoice document for a particular transaction.
  class TransactionInvoice
    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :linked_transaction

    # 
    attr_accessor :amount

    # 
    attr_accessor :billing_address

    # 
    attr_accessor :completion

    # The date on which the invoice is created on.
    attr_accessor :created_on

    # The id of the user which marked the invoice as derecognized.
    attr_accessor :derecognized_by

    # The date on which the invoice is marked as derecognized.
    attr_accessor :derecognized_on

    # The date on which the invoice should be paid on.
    attr_accessor :due_on

    # 
    attr_accessor :environment

    # The external id helps to identify the entity and a subsequent creation of an entity with the same ID will not create a new entity.
    attr_accessor :external_id

    # The language that is linked to the object.
    attr_accessor :language

    # 
    attr_accessor :line_items

    # 
    attr_accessor :merchant_reference

    # The outstanding amount indicates how much the buyer owes the merchant. A negative amount indicates that the invoice is overpaid.
    attr_accessor :outstanding_amount

    # The date on which the invoice is marked as paid. Eventually this date lags behind of the actual paid date.
    attr_accessor :paid_on

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :space_view_id

    # The object's current state.
    attr_accessor :state

    # 
    attr_accessor :tax_amount

    # 
    attr_accessor :time_zone

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'linked_transaction' => :'linkedTransaction',
        :'amount' => :'amount',
        :'billing_address' => :'billingAddress',
        :'completion' => :'completion',
        :'created_on' => :'createdOn',
        :'derecognized_by' => :'derecognizedBy',
        :'derecognized_on' => :'derecognizedOn',
        :'due_on' => :'dueOn',
        :'environment' => :'environment',
        :'external_id' => :'externalId',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'merchant_reference' => :'merchantReference',
        :'outstanding_amount' => :'outstandingAmount',
        :'paid_on' => :'paidOn',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'space_view_id' => :'spaceViewId',
        :'state' => :'state',
        :'tax_amount' => :'taxAmount',
        :'time_zone' => :'timeZone',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'linked_transaction' => :'Integer',
        :'amount' => :'Float',
        :'billing_address' => :'Address',
        :'completion' => :'TransactionCompletion',
        :'created_on' => :'DateTime',
        :'derecognized_by' => :'Integer',
        :'derecognized_on' => :'DateTime',
        :'due_on' => :'DateTime',
        :'environment' => :'Environment',
        :'external_id' => :'String',
        :'language' => :'String',
        :'line_items' => :'Array<LineItem>',
        :'merchant_reference' => :'String',
        :'outstanding_amount' => :'Float',
        :'paid_on' => :'DateTime',
        :'planned_purge_date' => :'DateTime',
        :'space_view_id' => :'Integer',
        :'state' => :'TransactionInvoiceState',
        :'tax_amount' => :'Float',
        :'time_zone' => :'String',
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

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'completion')
        self.completion = attributes[:'completion']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'derecognizedBy')
        self.derecognized_by = attributes[:'derecognizedBy']
      end

      if attributes.has_key?(:'derecognizedOn')
        self.derecognized_on = attributes[:'derecognizedOn']
      end

      if attributes.has_key?(:'dueOn')
        self.due_on = attributes[:'dueOn']
      end

      if attributes.has_key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'merchantReference')
        self.merchant_reference = attributes[:'merchantReference']
      end

      if attributes.has_key?(:'outstandingAmount')
        self.outstanding_amount = attributes[:'outstandingAmount']
      end

      if attributes.has_key?(:'paidOn')
        self.paid_on = attributes[:'paidOn']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'spaceViewId')
        self.space_view_id = attributes[:'spaceViewId']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
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

      if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "merchant_reference", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
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

    # Custom attribute writer method with validation
    # @param [Object] merchant_reference Value to be assigned
    def merchant_reference=(merchant_reference)
      if !merchant_reference.nil? && merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "merchant_reference", the character length must be smaller than or equal to 100.'
      end

      @merchant_reference = merchant_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          linked_transaction == o.linked_transaction &&
          amount == o.amount &&
          billing_address == o.billing_address &&
          completion == o.completion &&
          created_on == o.created_on &&
          derecognized_by == o.derecognized_by &&
          derecognized_on == o.derecognized_on &&
          due_on == o.due_on &&
          environment == o.environment &&
          external_id == o.external_id &&
          language == o.language &&
          line_items == o.line_items &&
          merchant_reference == o.merchant_reference &&
          outstanding_amount == o.outstanding_amount &&
          paid_on == o.paid_on &&
          planned_purge_date == o.planned_purge_date &&
          space_view_id == o.space_view_id &&
          state == o.state &&
          tax_amount == o.tax_amount &&
          time_zone == o.time_zone &&
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
      [id, linked_space_id, linked_transaction, amount, billing_address, completion, created_on, derecognized_by, derecognized_on, due_on, environment, external_id, language, line_items, merchant_reference, outstanding_amount, paid_on, planned_purge_date, space_view_id, state, tax_amount, time_zone, version].hash
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
