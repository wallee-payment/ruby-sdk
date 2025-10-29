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
  # The subscription charge represents a single charge carried out for a particular subscription.
  class SubscriptionCharge
    # The date and time when the charge was discarded.
    attr_accessor :discarded_on

    # The date and time when the execution of the charge is planned.
    attr_accessor :planned_execution_date

    attr_accessor :processing_type

    # The ledger entries that belong to the charge.
    attr_accessor :ledger_entries

    # The ID of the user the charge was discarded by.
    attr_accessor :discarded_by

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The URL to redirect the customer back to after they successfully authenticated their payment.
    attr_accessor :success_url

    # The language that is linked to the object.
    attr_accessor :language

    attr_accessor :subscription

    attr_accessor :type

    # The date and time when the charge was created.
    attr_accessor :created_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The merchant's reference used to identify the charge.
    attr_accessor :reference

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The date and time when the charge failed.
    attr_accessor :failed_on

    attr_accessor :transaction

    # The URL to redirect the customer back to after they canceled or failed to authenticated their payment.
    attr_accessor :failed_url

    # The date and time when the charge succeeded.
    attr_accessor :succeed_on

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
        :'planned_execution_date' => :'plannedExecutionDate',
        :'processing_type' => :'processingType',
        :'ledger_entries' => :'ledgerEntries',
        :'discarded_by' => :'discardedBy',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'external_id' => :'externalId',
        :'success_url' => :'successUrl',
        :'language' => :'language',
        :'subscription' => :'subscription',
        :'type' => :'type',
        :'created_on' => :'createdOn',
        :'version' => :'version',
        :'reference' => :'reference',
        :'linked_space_id' => :'linkedSpaceId',
        :'id' => :'id',
        :'state' => :'state',
        :'failed_on' => :'failedOn',
        :'transaction' => :'transaction',
        :'failed_url' => :'failedUrl',
        :'succeed_on' => :'succeedOn'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'discarded_on' => :'Time',
        :'planned_execution_date' => :'Time',
        :'processing_type' => :'SubscriptionChargeProcessingType',
        :'ledger_entries' => :'Array<SubscriptionLedgerEntry>',
        :'discarded_by' => :'Integer',
        :'planned_purge_date' => :'Time',
        :'external_id' => :'String',
        :'success_url' => :'String',
        :'language' => :'String',
        :'subscription' => :'Subscription',
        :'type' => :'SubscriptionChargeType',
        :'created_on' => :'Time',
        :'version' => :'Integer',
        :'reference' => :'String',
        :'linked_space_id' => :'Integer',
        :'id' => :'Integer',
        :'state' => :'SubscriptionChargeState',
        :'failed_on' => :'Time',
        :'transaction' => :'Transaction',
        :'failed_url' => :'String',
        :'succeed_on' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::SubscriptionCharge` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::SubscriptionCharge`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'discarded_on')
        self.discarded_on = attributes[:'discarded_on']
      end

      if attributes.key?(:'planned_execution_date')
        self.planned_execution_date = attributes[:'planned_execution_date']
      end

      if attributes.key?(:'processing_type')
        self.processing_type = attributes[:'processing_type']
      end

      if attributes.key?(:'ledger_entries')
        if (value = attributes[:'ledger_entries']).is_a?(Array)
          self.ledger_entries = value
        end
      end

      if attributes.key?(:'discarded_by')
        self.discarded_by = attributes[:'discarded_by']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'subscription')
        self.subscription = attributes[:'subscription']
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

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'failed_on')
        self.failed_on = attributes[:'failed_on']
      end

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
      end

      if attributes.key?(:'failed_url')
        self.failed_url = attributes[:'failed_url']
      end

      if attributes.key?(:'succeed_on')
        self.succeed_on = attributes[:'succeed_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@success_url.nil? && @success_url.to_s.length > 500
        invalid_properties.push('invalid value for "success_url", the character length must be smaller than or equal to 500.')
      end

      if !@success_url.nil? && @success_url.to_s.length < 9
        invalid_properties.push('invalid value for "success_url", the character length must be greater than or equal to 9.')
      end

      if !@reference.nil? && @reference.to_s.length > 100
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@reference.nil? && @reference !~ pattern
        invalid_properties.push("invalid value for \"reference\", must conform to the pattern #{pattern}.")
      end

      if !@failed_url.nil? && @failed_url.to_s.length > 500
        invalid_properties.push('invalid value for "failed_url", the character length must be smaller than or equal to 500.')
      end

      if !@failed_url.nil? && @failed_url.to_s.length < 9
        invalid_properties.push('invalid value for "failed_url", the character length must be greater than or equal to 9.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@success_url.nil? && @success_url.to_s.length > 500
      return false if !@success_url.nil? && @success_url.to_s.length < 9
      return false if !@reference.nil? && @reference.to_s.length > 100
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@reference.nil? && @reference !~ pattern
      return false if !@failed_url.nil? && @failed_url.to_s.length > 500
      return false if !@failed_url.nil? && @failed_url.to_s.length < 9
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] ledger_entries Value to be assigned
    def ledger_entries=(ledger_entries)
      if ledger_entries.nil?
        fail ArgumentError, 'ledger_entries cannot be nil'
      end

      @ledger_entries = ledger_entries
    end

    # Custom attribute writer method with validation
    # @param [Object] success_url Value to be assigned
    def success_url=(success_url)
      if success_url.nil?
        fail ArgumentError, 'success_url cannot be nil'
      end

      if success_url.to_s.length > 500
        fail ArgumentError, 'invalid value for "success_url", the character length must be smaller than or equal to 500.'
      end

      if success_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "success_url", the character length must be greater than or equal to 9.'
      end

      @success_url = success_url
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if reference.nil?
        fail ArgumentError, 'reference cannot be nil'
      end

      if reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if reference !~ pattern
        fail ArgumentError, "invalid value for \"reference\", must conform to the pattern #{pattern}."
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] failed_url Value to be assigned
    def failed_url=(failed_url)
      if failed_url.nil?
        fail ArgumentError, 'failed_url cannot be nil'
      end

      if failed_url.to_s.length > 500
        fail ArgumentError, 'invalid value for "failed_url", the character length must be smaller than or equal to 500.'
      end

      if failed_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "failed_url", the character length must be greater than or equal to 9.'
      end

      @failed_url = failed_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          discarded_on == o.discarded_on &&
          planned_execution_date == o.planned_execution_date &&
          processing_type == o.processing_type &&
          ledger_entries == o.ledger_entries &&
          discarded_by == o.discarded_by &&
          planned_purge_date == o.planned_purge_date &&
          external_id == o.external_id &&
          success_url == o.success_url &&
          language == o.language &&
          subscription == o.subscription &&
          type == o.type &&
          created_on == o.created_on &&
          version == o.version &&
          reference == o.reference &&
          linked_space_id == o.linked_space_id &&
          id == o.id &&
          state == o.state &&
          failed_on == o.failed_on &&
          transaction == o.transaction &&
          failed_url == o.failed_url &&
          succeed_on == o.succeed_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [discarded_on, planned_execution_date, processing_type, ledger_entries, discarded_by, planned_purge_date, external_id, success_url, language, subscription, type, created_on, version, reference, linked_space_id, id, state, failed_on, transaction, failed_url, succeed_on].hash
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
