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
  # A refund is a credit issued to the customer, which can be initiated either by the merchant or by the customer as a reversal.
  class Refund
    # The total amount settled for the refund, factoring in reductions, taxes, and any additional applied fees.
    attr_accessor :total_settled_amount

    # The reductions applied on the original transaction items, detailing specific adjustments associated with the refund.
    attr_accessor :reductions

    # The original base line items from the transaction prior to the refund, serving as a reference for the refunded amounts.
    attr_accessor :base_line_items

    # The date and time when the processing of the refund was started.
    attr_accessor :processing_on

    # The tax breakdown applied to the refund amount, helping with tax calculations or reporting.
    attr_accessor :taxes

    # The language that is linked to the object.
    attr_accessor :language

    attr_accessor :type

    # The date and time when the object was created.
    attr_accessor :created_on

    # The line items included in the refund, representing the reductions.
    attr_accessor :line_items

    # The date and time when the refund succeeded.
    attr_accessor :succeeded_on

    # The line items from the original transaction, adjusted to reflect any reductions applied during the refund process.
    attr_accessor :reduced_line_items

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The merchant's reference used to identify the refund.
    attr_accessor :merchant_reference

    # The transaction completion that the refund belongs to.
    attr_accessor :completion

    # The total monetary amount of the refund, representing the exact credit issued to the customer.
    attr_accessor :amount

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The time zone that this object is associated with.
    attr_accessor :time_zone

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The labels providing additional information about the object.
    attr_accessor :labels

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The date and time when the object will expire.
    attr_accessor :timeout_on

    attr_accessor :environment

    # The ID of the user the refund was created by.
    attr_accessor :created_by

    # The date and time when the next update of the object's state is planned.
    attr_accessor :next_update_on

    # An updated invoice reflecting adjustments made by the refund.
    attr_accessor :updated_invoice

    attr_accessor :failure_reason

    # The sum of fees applied to the refund transaction, such as processing or service charges.
    attr_accessor :total_applied_fees

    # The date and time when the refund failed.
    attr_accessor :failed_on

    attr_accessor :transaction

    # The reference ID provided by the payment processor, used to trace the refund through the external payment system.
    attr_accessor :processor_reference

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
        :'total_settled_amount' => :'totalSettledAmount',
        :'reductions' => :'reductions',
        :'base_line_items' => :'baseLineItems',
        :'processing_on' => :'processingOn',
        :'taxes' => :'taxes',
        :'language' => :'language',
        :'type' => :'type',
        :'created_on' => :'createdOn',
        :'line_items' => :'lineItems',
        :'succeeded_on' => :'succeededOn',
        :'reduced_line_items' => :'reducedLineItems',
        :'id' => :'id',
        :'state' => :'state',
        :'merchant_reference' => :'merchantReference',
        :'completion' => :'completion',
        :'amount' => :'amount',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'external_id' => :'externalId',
        :'time_zone' => :'timeZone',
        :'version' => :'version',
        :'labels' => :'labels',
        :'linked_space_id' => :'linkedSpaceId',
        :'timeout_on' => :'timeoutOn',
        :'environment' => :'environment',
        :'created_by' => :'createdBy',
        :'next_update_on' => :'nextUpdateOn',
        :'updated_invoice' => :'updatedInvoice',
        :'failure_reason' => :'failureReason',
        :'total_applied_fees' => :'totalAppliedFees',
        :'failed_on' => :'failedOn',
        :'transaction' => :'transaction',
        :'processor_reference' => :'processorReference'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total_settled_amount' => :'Float',
        :'reductions' => :'Array<LineItemReduction>',
        :'base_line_items' => :'Array<LineItem>',
        :'processing_on' => :'Time',
        :'taxes' => :'Array<Tax>',
        :'language' => :'String',
        :'type' => :'RefundType',
        :'created_on' => :'Time',
        :'line_items' => :'Array<LineItem>',
        :'succeeded_on' => :'Time',
        :'reduced_line_items' => :'Array<LineItem>',
        :'id' => :'Integer',
        :'state' => :'RefundState',
        :'merchant_reference' => :'String',
        :'completion' => :'Integer',
        :'amount' => :'Float',
        :'planned_purge_date' => :'Time',
        :'external_id' => :'String',
        :'time_zone' => :'String',
        :'version' => :'Integer',
        :'labels' => :'Array<Label>',
        :'linked_space_id' => :'Integer',
        :'timeout_on' => :'Time',
        :'environment' => :'Environment',
        :'created_by' => :'Integer',
        :'next_update_on' => :'Time',
        :'updated_invoice' => :'Integer',
        :'failure_reason' => :'FailureReason',
        :'total_applied_fees' => :'Float',
        :'failed_on' => :'Time',
        :'transaction' => :'Transaction',
        :'processor_reference' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::Refund` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::Refund`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_settled_amount')
        self.total_settled_amount = attributes[:'total_settled_amount']
      end

      if attributes.key?(:'reductions')
        if (value = attributes[:'reductions']).is_a?(Array)
          self.reductions = value
        end
      end

      if attributes.key?(:'base_line_items')
        if (value = attributes[:'base_line_items']).is_a?(Array)
          self.base_line_items = value
        end
      end

      if attributes.key?(:'processing_on')
        self.processing_on = attributes[:'processing_on']
      end

      if attributes.key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'succeeded_on')
        self.succeeded_on = attributes[:'succeeded_on']
      end

      if attributes.key?(:'reduced_line_items')
        if (value = attributes[:'reduced_line_items']).is_a?(Array)
          self.reduced_line_items = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'merchant_reference')
        self.merchant_reference = attributes[:'merchant_reference']
      end

      if attributes.key?(:'completion')
        self.completion = attributes[:'completion']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
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

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'timeout_on')
        self.timeout_on = attributes[:'timeout_on']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'next_update_on')
        self.next_update_on = attributes[:'next_update_on']
      end

      if attributes.key?(:'updated_invoice')
        self.updated_invoice = attributes[:'updated_invoice']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'total_applied_fees')
        self.total_applied_fees = attributes[:'total_applied_fees']
      end

      if attributes.key?(:'failed_on')
        self.failed_on = attributes[:'failed_on']
      end

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
      end

      if attributes.key?(:'processor_reference')
        self.processor_reference = attributes[:'processor_reference']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "merchant_reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@merchant_reference.nil? && @merchant_reference !~ pattern
        invalid_properties.push("invalid value for \"merchant_reference\", must conform to the pattern #{pattern}.")
      end

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

      if !@processor_reference.nil? && @processor_reference.to_s.length > 150
        invalid_properties.push('invalid value for "processor_reference", the character length must be smaller than or equal to 150.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@merchant_reference.nil? && @merchant_reference !~ pattern
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@external_id.nil? && @external_id !~ pattern
      return false if !@processor_reference.nil? && @processor_reference.to_s.length > 150
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] taxes Value to be assigned
    def taxes=(taxes)
      if taxes.nil?
        fail ArgumentError, 'taxes cannot be nil'
      end

      @taxes = taxes
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
    # @param [Object] labels Value to be assigned
    def labels=(labels)
      if labels.nil?
        fail ArgumentError, 'labels cannot be nil'
      end

      @labels = labels
    end

    # Custom attribute writer method with validation
    # @param [Object] processor_reference Value to be assigned
    def processor_reference=(processor_reference)
      if processor_reference.nil?
        fail ArgumentError, 'processor_reference cannot be nil'
      end

      if processor_reference.to_s.length > 150
        fail ArgumentError, 'invalid value for "processor_reference", the character length must be smaller than or equal to 150.'
      end

      @processor_reference = processor_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_settled_amount == o.total_settled_amount &&
          reductions == o.reductions &&
          base_line_items == o.base_line_items &&
          processing_on == o.processing_on &&
          taxes == o.taxes &&
          language == o.language &&
          type == o.type &&
          created_on == o.created_on &&
          line_items == o.line_items &&
          succeeded_on == o.succeeded_on &&
          reduced_line_items == o.reduced_line_items &&
          id == o.id &&
          state == o.state &&
          merchant_reference == o.merchant_reference &&
          completion == o.completion &&
          amount == o.amount &&
          planned_purge_date == o.planned_purge_date &&
          external_id == o.external_id &&
          time_zone == o.time_zone &&
          version == o.version &&
          labels == o.labels &&
          linked_space_id == o.linked_space_id &&
          timeout_on == o.timeout_on &&
          environment == o.environment &&
          created_by == o.created_by &&
          next_update_on == o.next_update_on &&
          updated_invoice == o.updated_invoice &&
          failure_reason == o.failure_reason &&
          total_applied_fees == o.total_applied_fees &&
          failed_on == o.failed_on &&
          transaction == o.transaction &&
          processor_reference == o.processor_reference
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_settled_amount, reductions, base_line_items, processing_on, taxes, language, type, created_on, line_items, succeeded_on, reduced_line_items, id, state, merchant_reference, completion, amount, planned_purge_date, external_id, time_zone, version, labels, linked_space_id, timeout_on, environment, created_by, next_update_on, updated_invoice, failure_reason, total_applied_fees, failed_on, transaction, processor_reference].hash
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
