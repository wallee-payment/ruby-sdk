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
  # A refund is a credit issued to the customer, which can be initiated either by the merchant or by the customer as a reversal.
  class Refund
    # The total monetary amount of the refund, representing the exact credit issued to the customer.
    attr_accessor :amount

    # The original base line items from the transaction prior to the refund, serving as a reference for the refunded amounts.
    attr_accessor :base_line_items

    # The transaction completion that the refund belongs to.
    attr_accessor :completion

    # The ID of the user the refund was created by.
    attr_accessor :created_by

    # The date and time when the object was created.
    attr_accessor :created_on

    # The environment used when rendering resources.
    attr_accessor :environment

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The date and time when the refund failed.
    attr_accessor :failed_on

    # The reason for the failure of the refund.
    attr_accessor :failure_reason

    # A unique identifier for the object.
    attr_accessor :id

    # The labels providing additional information about the object.
    attr_accessor :labels

    # The language that is linked to the object.
    attr_accessor :language

    # The line items included in the refund, representing the reductions.
    attr_accessor :line_items

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The merchant's reference used to identify the refund.
    attr_accessor :merchant_reference

    # The date and time when the next update of the object's state is planned.
    attr_accessor :next_update_on

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The date and time when the processing of the refund was started.
    attr_accessor :processing_on

    # The reference ID provided by the payment processor, used to trace the refund through the external payment system.
    attr_accessor :processor_reference

    # The line items from the original transaction, adjusted to reflect any reductions applied during the refund process.
    attr_accessor :reduced_line_items

    # The reductions applied on the original transaction items, detailing specific adjustments associated with the refund.
    attr_accessor :reductions

    # The object's current state.
    attr_accessor :state

    # The date and time when the refund succeeded.
    attr_accessor :succeeded_on

    # The tax breakdown applied to the refund amount, helping with tax calculations or reporting.
    attr_accessor :taxes

    # The time zone that this object is associated with.
    attr_accessor :time_zone

    # The date and time when the object will expire.
    attr_accessor :timeout_on

    # The sum of fees applied to the refund transaction, such as processing or service charges.
    attr_accessor :total_applied_fees

    # The total amount settled for the refund, factoring in reductions, taxes, and any additional applied fees.
    attr_accessor :total_settled_amount

    # The transaction that the refund belongs to.
    attr_accessor :transaction

    # The type specifying the method and origin of the refund (e.g., initiated by the customer or merchant).
    attr_accessor :type

    # An updated invoice reflecting adjustments made by the refund.
    attr_accessor :updated_invoice

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'base_line_items' => :'baseLineItems',
        :'completion' => :'completion',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'environment' => :'environment',
        :'external_id' => :'externalId',
        :'failed_on' => :'failedOn',
        :'failure_reason' => :'failureReason',
        :'id' => :'id',
        :'labels' => :'labels',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'linked_space_id' => :'linkedSpaceId',
        :'merchant_reference' => :'merchantReference',
        :'next_update_on' => :'nextUpdateOn',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'processing_on' => :'processingOn',
        :'processor_reference' => :'processorReference',
        :'reduced_line_items' => :'reducedLineItems',
        :'reductions' => :'reductions',
        :'state' => :'state',
        :'succeeded_on' => :'succeededOn',
        :'taxes' => :'taxes',
        :'time_zone' => :'timeZone',
        :'timeout_on' => :'timeoutOn',
        :'total_applied_fees' => :'totalAppliedFees',
        :'total_settled_amount' => :'totalSettledAmount',
        :'transaction' => :'transaction',
        :'type' => :'type',
        :'updated_invoice' => :'updatedInvoice',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'base_line_items' => :'Array<LineItem>',
        :'completion' => :'Integer',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'environment' => :'Environment',
        :'external_id' => :'String',
        :'failed_on' => :'DateTime',
        :'failure_reason' => :'FailureReason',
        :'id' => :'Integer',
        :'labels' => :'Array<Label>',
        :'language' => :'String',
        :'line_items' => :'Array<LineItem>',
        :'linked_space_id' => :'Integer',
        :'merchant_reference' => :'String',
        :'next_update_on' => :'DateTime',
        :'planned_purge_date' => :'DateTime',
        :'processing_on' => :'DateTime',
        :'processor_reference' => :'String',
        :'reduced_line_items' => :'Array<LineItem>',
        :'reductions' => :'Array<LineItemReduction>',
        :'state' => :'RefundState',
        :'succeeded_on' => :'DateTime',
        :'taxes' => :'Array<Tax>',
        :'time_zone' => :'String',
        :'timeout_on' => :'DateTime',
        :'total_applied_fees' => :'Float',
        :'total_settled_amount' => :'Float',
        :'transaction' => :'Transaction',
        :'type' => :'RefundType',
        :'updated_invoice' => :'Integer',
        :'version' => :'Integer'
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

      if attributes.has_key?(:'baseLineItems')
        if (value = attributes[:'baseLineItems']).is_a?(Array)
          self.base_line_items = value
        end
      end

      if attributes.has_key?(:'completion')
        self.completion = attributes[:'completion']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'failedOn')
        self.failed_on = attributes[:'failedOn']
      end

      if attributes.has_key?(:'failureReason')
        self.failure_reason = attributes[:'failureReason']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'merchantReference')
        self.merchant_reference = attributes[:'merchantReference']
      end

      if attributes.has_key?(:'nextUpdateOn')
        self.next_update_on = attributes[:'nextUpdateOn']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'processingOn')
        self.processing_on = attributes[:'processingOn']
      end

      if attributes.has_key?(:'processorReference')
        self.processor_reference = attributes[:'processorReference']
      end

      if attributes.has_key?(:'reducedLineItems')
        if (value = attributes[:'reducedLineItems']).is_a?(Array)
          self.reduced_line_items = value
        end
      end

      if attributes.has_key?(:'reductions')
        if (value = attributes[:'reductions']).is_a?(Array)
          self.reductions = value
        end
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'succeededOn')
        self.succeeded_on = attributes[:'succeededOn']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'timeoutOn')
        self.timeout_on = attributes[:'timeoutOn']
      end

      if attributes.has_key?(:'totalAppliedFees')
        self.total_applied_fees = attributes[:'totalAppliedFees']
      end

      if attributes.has_key?(:'totalSettledAmount')
        self.total_settled_amount = attributes[:'totalSettledAmount']
      end

      if attributes.has_key?(:'transaction')
        self.transaction = attributes[:'transaction']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'updatedInvoice')
        self.updated_invoice = attributes[:'updatedInvoice']
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

      if !@processor_reference.nil? && @processor_reference.to_s.length > 150
        invalid_properties.push('invalid value for "processor_reference", the character length must be smaller than or equal to 150.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
      return false if !@processor_reference.nil? && @processor_reference.to_s.length > 150
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

    # Custom attribute writer method with validation
    # @param [Object] processor_reference Value to be assigned
    def processor_reference=(processor_reference)
      if !processor_reference.nil? && processor_reference.to_s.length > 150
        fail ArgumentError, 'invalid value for "processor_reference", the character length must be smaller than or equal to 150.'
      end

      @processor_reference = processor_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          base_line_items == o.base_line_items &&
          completion == o.completion &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          environment == o.environment &&
          external_id == o.external_id &&
          failed_on == o.failed_on &&
          failure_reason == o.failure_reason &&
          id == o.id &&
          labels == o.labels &&
          language == o.language &&
          line_items == o.line_items &&
          linked_space_id == o.linked_space_id &&
          merchant_reference == o.merchant_reference &&
          next_update_on == o.next_update_on &&
          planned_purge_date == o.planned_purge_date &&
          processing_on == o.processing_on &&
          processor_reference == o.processor_reference &&
          reduced_line_items == o.reduced_line_items &&
          reductions == o.reductions &&
          state == o.state &&
          succeeded_on == o.succeeded_on &&
          taxes == o.taxes &&
          time_zone == o.time_zone &&
          timeout_on == o.timeout_on &&
          total_applied_fees == o.total_applied_fees &&
          total_settled_amount == o.total_settled_amount &&
          transaction == o.transaction &&
          type == o.type &&
          updated_invoice == o.updated_invoice &&
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
      [amount, base_line_items, completion, created_by, created_on, environment, external_id, failed_on, failure_reason, id, labels, language, line_items, linked_space_id, merchant_reference, next_update_on, planned_purge_date, processing_on, processor_reference, reduced_line_items, reductions, state, succeeded_on, taxes, time_zone, timeout_on, total_applied_fees, total_settled_amount, transaction, type, updated_invoice, version].hash
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
