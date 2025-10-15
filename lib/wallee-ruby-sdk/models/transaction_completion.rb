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
  class TransactionCompletion
    # The total amount to be captured in this completion, including taxes.
    attr_accessor :amount

    # The original line items from the transaction that serve as the baseline for this completion.
    attr_accessor :base_line_items

    # The ID of the user the transaction completion was created by.
    attr_accessor :created_by

    # The date and time when the object was created.
    attr_accessor :created_on

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The date and time when the transaction completion failed.
    attr_accessor :failed_on

    # The reason for the failure of the transaction completion.
    attr_accessor :failure_reason

    # A unique identifier for the object.
    attr_accessor :id

    # The merchant's reference used to identify the invoice.
    attr_accessor :invoice_merchant_reference

    # The labels providing additional information about the object.
    attr_accessor :labels

    # The language that is linked to the object.
    attr_accessor :language

    # Whether this is the final completion for the transaction. After the last completion is successfully created, the transaction enters its final state, and no further completions can occur.
    attr_accessor :last_completion

    # The specific version of the line items that are being used for this completion.
    attr_accessor :line_item_version

    # The line items captured in this transaction completion.
    attr_accessor :line_items

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    # The mode of transaction completion, such as online or offline, determining how the completion process is executed.
    attr_accessor :mode

    # The date and time when the next update of the object's state is planned.
    attr_accessor :next_update_on

    # Payment-specific details related to this transaction completion such as payment instructions or references needed for processing.
    attr_accessor :payment_information

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The date and time when the processing of the transaction completion was started.
    attr_accessor :processing_on

    # The reference ID provided by the payment processor, used to trace the completion through the external payment system.
    attr_accessor :processor_reference

    # The line items yet to be captured in the transaction.
    attr_accessor :remaining_line_items

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    # The object's current state.
    attr_accessor :state

    # The statement descriptor that appears on a customer's bank statement, providing an explanation for charges or payments, helping customers identify the transaction.
    attr_accessor :statement_descriptor

    # The date and time when the transaction completion succeeded.
    attr_accessor :succeeded_on

    # The portion of the captured amount that corresponds to taxes.
    attr_accessor :tax_amount

    # The time zone that this object is associated with.
    attr_accessor :time_zone

    # The date and time when the object will expire.
    attr_accessor :timeout_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'base_line_items' => :'baseLineItems',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'external_id' => :'externalId',
        :'failed_on' => :'failedOn',
        :'failure_reason' => :'failureReason',
        :'id' => :'id',
        :'invoice_merchant_reference' => :'invoiceMerchantReference',
        :'labels' => :'labels',
        :'language' => :'language',
        :'last_completion' => :'lastCompletion',
        :'line_item_version' => :'lineItemVersion',
        :'line_items' => :'lineItems',
        :'linked_space_id' => :'linkedSpaceId',
        :'linked_transaction' => :'linkedTransaction',
        :'mode' => :'mode',
        :'next_update_on' => :'nextUpdateOn',
        :'payment_information' => :'paymentInformation',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'processing_on' => :'processingOn',
        :'processor_reference' => :'processorReference',
        :'remaining_line_items' => :'remainingLineItems',
        :'space_view_id' => :'spaceViewId',
        :'state' => :'state',
        :'statement_descriptor' => :'statementDescriptor',
        :'succeeded_on' => :'succeededOn',
        :'tax_amount' => :'taxAmount',
        :'time_zone' => :'timeZone',
        :'timeout_on' => :'timeoutOn',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount' => :'Float',
        :'base_line_items' => :'Array<LineItem>',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'external_id' => :'String',
        :'failed_on' => :'DateTime',
        :'failure_reason' => :'FailureReason',
        :'id' => :'Integer',
        :'invoice_merchant_reference' => :'String',
        :'labels' => :'Array<Label>',
        :'language' => :'String',
        :'last_completion' => :'BOOLEAN',
        :'line_item_version' => :'TransactionLineItemVersion',
        :'line_items' => :'Array<LineItem>',
        :'linked_space_id' => :'Integer',
        :'linked_transaction' => :'Integer',
        :'mode' => :'TransactionCompletionMode',
        :'next_update_on' => :'DateTime',
        :'payment_information' => :'String',
        :'planned_purge_date' => :'DateTime',
        :'processing_on' => :'DateTime',
        :'processor_reference' => :'String',
        :'remaining_line_items' => :'Array<LineItem>',
        :'space_view_id' => :'Integer',
        :'state' => :'TransactionCompletionState',
        :'statement_descriptor' => :'String',
        :'succeeded_on' => :'DateTime',
        :'tax_amount' => :'Float',
        :'time_zone' => :'String',
        :'timeout_on' => :'DateTime',
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

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
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

      if attributes.has_key?(:'invoiceMerchantReference')
        self.invoice_merchant_reference = attributes[:'invoiceMerchantReference']
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lastCompletion')
        self.last_completion = attributes[:'lastCompletion']
      end

      if attributes.has_key?(:'lineItemVersion')
        self.line_item_version = attributes[:'lineItemVersion']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'linkedTransaction')
        self.linked_transaction = attributes[:'linkedTransaction']
      end

      if attributes.has_key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.has_key?(:'nextUpdateOn')
        self.next_update_on = attributes[:'nextUpdateOn']
      end

      if attributes.has_key?(:'paymentInformation')
        self.payment_information = attributes[:'paymentInformation']
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

      if attributes.has_key?(:'remainingLineItems')
        if (value = attributes[:'remainingLineItems']).is_a?(Array)
          self.remaining_line_items = value
        end
      end

      if attributes.has_key?(:'spaceViewId')
        self.space_view_id = attributes[:'spaceViewId']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'statementDescriptor')
        self.statement_descriptor = attributes[:'statementDescriptor']
      end

      if attributes.has_key?(:'succeededOn')
        self.succeeded_on = attributes[:'succeededOn']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'timeoutOn')
        self.timeout_on = attributes[:'timeoutOn']
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

      if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.')
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.length > 80
        invalid_properties.push('invalid value for "statement_descriptor", the character length must be smaller than or equal to 80.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      return false if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.length > 80
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
    # @param [Object] invoice_merchant_reference Value to be assigned
    def invoice_merchant_reference=(invoice_merchant_reference)
      if !invoice_merchant_reference.nil? && invoice_merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.'
      end

      @invoice_merchant_reference = invoice_merchant_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.length > 80
        fail ArgumentError, 'invalid value for "statement_descriptor", the character length must be smaller than or equal to 80.'
      end

      @statement_descriptor = statement_descriptor
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          base_line_items == o.base_line_items &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          external_id == o.external_id &&
          failed_on == o.failed_on &&
          failure_reason == o.failure_reason &&
          id == o.id &&
          invoice_merchant_reference == o.invoice_merchant_reference &&
          labels == o.labels &&
          language == o.language &&
          last_completion == o.last_completion &&
          line_item_version == o.line_item_version &&
          line_items == o.line_items &&
          linked_space_id == o.linked_space_id &&
          linked_transaction == o.linked_transaction &&
          mode == o.mode &&
          next_update_on == o.next_update_on &&
          payment_information == o.payment_information &&
          planned_purge_date == o.planned_purge_date &&
          processing_on == o.processing_on &&
          processor_reference == o.processor_reference &&
          remaining_line_items == o.remaining_line_items &&
          space_view_id == o.space_view_id &&
          state == o.state &&
          statement_descriptor == o.statement_descriptor &&
          succeeded_on == o.succeeded_on &&
          tax_amount == o.tax_amount &&
          time_zone == o.time_zone &&
          timeout_on == o.timeout_on &&
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
      [amount, base_line_items, created_by, created_on, external_id, failed_on, failure_reason, id, invoice_merchant_reference, labels, language, last_completion, line_item_version, line_items, linked_space_id, linked_transaction, mode, next_update_on, payment_information, planned_purge_date, processing_on, processor_reference, remaining_line_items, space_view_id, state, statement_descriptor, succeeded_on, tax_amount, time_zone, timeout_on, version].hash
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
