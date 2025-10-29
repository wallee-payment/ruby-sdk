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
  # The debt collection case represents a try to collect the money from the debtor.
  class DebtCollectionCase
    # The date and time when the contract with the debtor was signed.
    attr_accessor :contract_date

    # The date and time when the claim was due.
    attr_accessor :due_date

    # The date and time when the case was closed.
    attr_accessor :closed_on

    # The language that is linked to the object.
    attr_accessor :language

    attr_accessor :source

    # The date and time when the object was created.
    attr_accessor :created_on

    # The line items that are subject of this debt collection case.
    attr_accessor :line_items

    # A unique reference to identify the debt collection case in communication with the debtor.
    attr_accessor :reference

    # The three-letter code (ISO 4217 format) of the case's currency.
    attr_accessor :currency

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The date and time when the processing of the case times out.
    attr_accessor :processing_timeout_on

    # The sum of all unpaid item prices in the case's currency. The amount can no longer be changed once the case has been reviewed.
    attr_accessor :amount

    # The ID of the user the case was created by.
    attr_accessor :creator

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    attr_accessor :collector_configuration

    # The ID of the user the case was reviewed by.
    attr_accessor :reviewer

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    # The date and time when the review of the case was started.
    attr_accessor :review_started_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The labels providing additional information about the object.
    attr_accessor :labels

    # The date and time when the processing of the case was started.
    attr_accessor :processing_started_on

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    attr_accessor :environment

    # The date and time when the case was reviewed.
    attr_accessor :reviewed_on

    # The ID of the object that is the source of the case. Only defined if the case was created by an internal process.
    attr_accessor :source_entity_id

    attr_accessor :failure_reason

    attr_accessor :billing_address

    # The date and time when the case failed.
    attr_accessor :failed_on

    # The date and time when the next attempt at processing the case will be made.
    attr_accessor :next_attempt_on

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
        :'contract_date' => :'contractDate',
        :'due_date' => :'dueDate',
        :'closed_on' => :'closedOn',
        :'language' => :'language',
        :'source' => :'source',
        :'created_on' => :'createdOn',
        :'line_items' => :'lineItems',
        :'reference' => :'reference',
        :'currency' => :'currency',
        :'id' => :'id',
        :'state' => :'state',
        :'processing_timeout_on' => :'processingTimeoutOn',
        :'amount' => :'amount',
        :'creator' => :'creator',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'external_id' => :'externalId',
        :'collector_configuration' => :'collectorConfiguration',
        :'reviewer' => :'reviewer',
        :'space_view_id' => :'spaceViewId',
        :'review_started_on' => :'reviewStartedOn',
        :'version' => :'version',
        :'labels' => :'labels',
        :'processing_started_on' => :'processingStartedOn',
        :'linked_space_id' => :'linkedSpaceId',
        :'environment' => :'environment',
        :'reviewed_on' => :'reviewedOn',
        :'source_entity_id' => :'sourceEntityId',
        :'failure_reason' => :'failureReason',
        :'billing_address' => :'billingAddress',
        :'failed_on' => :'failedOn',
        :'next_attempt_on' => :'nextAttemptOn'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contract_date' => :'Time',
        :'due_date' => :'Time',
        :'closed_on' => :'Time',
        :'language' => :'String',
        :'source' => :'DebtCollectionCaseSource',
        :'created_on' => :'Time',
        :'line_items' => :'Array<LineItem>',
        :'reference' => :'String',
        :'currency' => :'String',
        :'id' => :'Integer',
        :'state' => :'DebtCollectionCaseState',
        :'processing_timeout_on' => :'Time',
        :'amount' => :'Float',
        :'creator' => :'Integer',
        :'planned_purge_date' => :'Time',
        :'external_id' => :'String',
        :'collector_configuration' => :'DebtCollectorConfiguration',
        :'reviewer' => :'Integer',
        :'space_view_id' => :'Integer',
        :'review_started_on' => :'Time',
        :'version' => :'Integer',
        :'labels' => :'Array<Label>',
        :'processing_started_on' => :'Time',
        :'linked_space_id' => :'Integer',
        :'environment' => :'DebtCollectionEnvironment',
        :'reviewed_on' => :'Time',
        :'source_entity_id' => :'Integer',
        :'failure_reason' => :'FailureReason',
        :'billing_address' => :'Address',
        :'failed_on' => :'Time',
        :'next_attempt_on' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::DebtCollectionCase` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::DebtCollectionCase`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contract_date')
        self.contract_date = attributes[:'contract_date']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'closed_on')
        self.closed_on = attributes[:'closed_on']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
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

      if attributes.key?(:'processing_timeout_on')
        self.processing_timeout_on = attributes[:'processing_timeout_on']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'collector_configuration')
        self.collector_configuration = attributes[:'collector_configuration']
      end

      if attributes.key?(:'reviewer')
        self.reviewer = attributes[:'reviewer']
      end

      if attributes.key?(:'space_view_id')
        self.space_view_id = attributes[:'space_view_id']
      end

      if attributes.key?(:'review_started_on')
        self.review_started_on = attributes[:'review_started_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'processing_started_on')
        self.processing_started_on = attributes[:'processing_started_on']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'reviewed_on')
        self.reviewed_on = attributes[:'reviewed_on']
      end

      if attributes.key?(:'source_entity_id')
        self.source_entity_id = attributes[:'source_entity_id']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'failed_on')
        self.failed_on = attributes[:'failed_on']
      end

      if attributes.key?(:'next_attempt_on')
        self.next_attempt_on = attributes[:'next_attempt_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] labels Value to be assigned
    def labels=(labels)
      if labels.nil?
        fail ArgumentError, 'labels cannot be nil'
      end

      @labels = labels
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contract_date == o.contract_date &&
          due_date == o.due_date &&
          closed_on == o.closed_on &&
          language == o.language &&
          source == o.source &&
          created_on == o.created_on &&
          line_items == o.line_items &&
          reference == o.reference &&
          currency == o.currency &&
          id == o.id &&
          state == o.state &&
          processing_timeout_on == o.processing_timeout_on &&
          amount == o.amount &&
          creator == o.creator &&
          planned_purge_date == o.planned_purge_date &&
          external_id == o.external_id &&
          collector_configuration == o.collector_configuration &&
          reviewer == o.reviewer &&
          space_view_id == o.space_view_id &&
          review_started_on == o.review_started_on &&
          version == o.version &&
          labels == o.labels &&
          processing_started_on == o.processing_started_on &&
          linked_space_id == o.linked_space_id &&
          environment == o.environment &&
          reviewed_on == o.reviewed_on &&
          source_entity_id == o.source_entity_id &&
          failure_reason == o.failure_reason &&
          billing_address == o.billing_address &&
          failed_on == o.failed_on &&
          next_attempt_on == o.next_attempt_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contract_date, due_date, closed_on, language, source, created_on, line_items, reference, currency, id, state, processing_timeout_on, amount, creator, planned_purge_date, external_id, collector_configuration, reviewer, space_view_id, review_started_on, version, labels, processing_started_on, linked_space_id, environment, reviewed_on, source_entity_id, failure_reason, billing_address, failed_on, next_attempt_on].hash
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
