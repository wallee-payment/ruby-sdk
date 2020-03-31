=begin
wallee API: 2.0.2

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
  # The refund represents a credit back to the customer. It can be issued by the merchant or by the customer (reversal).
  class Refund
    # 
    attr_accessor :amount

    # 
    attr_accessor :base_line_items

    # 
    attr_accessor :completion

    # 
    attr_accessor :created_by

    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # 
    attr_accessor :environment

    # The external id helps to identify duplicate calls to the refund service. As such the external ID has to be unique per transaction.
    attr_accessor :external_id

    # 
    attr_accessor :failed_on

    # 
    attr_accessor :failure_reason

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :labels

    # 
    attr_accessor :language

    # 
    attr_accessor :line_items

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :merchant_reference

    # 
    attr_accessor :next_update_on

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :processing_on

    # 
    attr_accessor :processor_reference

    # 
    attr_accessor :reduced_line_items

    # 
    attr_accessor :reductions

    # 
    attr_accessor :state

    # 
    attr_accessor :succeeded_on

    # 
    attr_accessor :taxes

    # 
    attr_accessor :time_zone

    # 
    attr_accessor :timeout_on

    # 
    attr_accessor :transaction

    # 
    attr_accessor :type

    # 
    attr_accessor :updated_invoice

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
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
      [amount, base_line_items, completion, created_by, created_on, environment, external_id, failed_on, failure_reason, id, labels, language, line_items, linked_space_id, merchant_reference, next_update_on, planned_purge_date, processing_on, processor_reference, reduced_line_items, reductions, state, succeeded_on, taxes, time_zone, timeout_on, transaction, type, updated_invoice, version].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
