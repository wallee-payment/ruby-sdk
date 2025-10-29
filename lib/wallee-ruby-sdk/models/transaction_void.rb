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
  class TransactionVoid
    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The language that is linked to the object.
    attr_accessor :language

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    # The date and time when the object was created.
    attr_accessor :created_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The labels providing additional information about the object.
    attr_accessor :labels

    attr_accessor :mode

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The date and time when the object will expire.
    attr_accessor :timeout_on

    # The ID of the user the transaction void was created by.
    attr_accessor :created_by

    # The date and time when the next update of the object's state is planned.
    attr_accessor :next_update_on

    attr_accessor :failure_reason

    # The date and time when the transaction void succeeded.
    attr_accessor :succeeded_on

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    # The date and time when the transaction void failed.
    attr_accessor :failed_on

    attr_accessor :transaction

    # The reference ID provided by the payment processor, used to trace the void through the external payment system.
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
        :'planned_purge_date' => :'plannedPurgeDate',
        :'language' => :'language',
        :'space_view_id' => :'spaceViewId',
        :'created_on' => :'createdOn',
        :'version' => :'version',
        :'labels' => :'labels',
        :'mode' => :'mode',
        :'linked_space_id' => :'linkedSpaceId',
        :'timeout_on' => :'timeoutOn',
        :'created_by' => :'createdBy',
        :'next_update_on' => :'nextUpdateOn',
        :'failure_reason' => :'failureReason',
        :'succeeded_on' => :'succeededOn',
        :'id' => :'id',
        :'state' => :'state',
        :'linked_transaction' => :'linkedTransaction',
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
        :'planned_purge_date' => :'Time',
        :'language' => :'String',
        :'space_view_id' => :'Integer',
        :'created_on' => :'Time',
        :'version' => :'Integer',
        :'labels' => :'Array<Label>',
        :'mode' => :'TransactionVoidMode',
        :'linked_space_id' => :'Integer',
        :'timeout_on' => :'Time',
        :'created_by' => :'Integer',
        :'next_update_on' => :'Time',
        :'failure_reason' => :'FailureReason',
        :'succeeded_on' => :'Time',
        :'id' => :'Integer',
        :'state' => :'TransactionVoidState',
        :'linked_transaction' => :'Integer',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::TransactionVoid` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::TransactionVoid`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
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

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'timeout_on')
        self.timeout_on = attributes[:'timeout_on']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'next_update_on')
        self.next_update_on = attributes[:'next_update_on']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'succeeded_on')
        self.succeeded_on = attributes[:'succeeded_on']
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
          planned_purge_date == o.planned_purge_date &&
          language == o.language &&
          space_view_id == o.space_view_id &&
          created_on == o.created_on &&
          version == o.version &&
          labels == o.labels &&
          mode == o.mode &&
          linked_space_id == o.linked_space_id &&
          timeout_on == o.timeout_on &&
          created_by == o.created_by &&
          next_update_on == o.next_update_on &&
          failure_reason == o.failure_reason &&
          succeeded_on == o.succeeded_on &&
          id == o.id &&
          state == o.state &&
          linked_transaction == o.linked_transaction &&
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
      [planned_purge_date, language, space_view_id, created_on, version, labels, mode, linked_space_id, timeout_on, created_by, next_update_on, failure_reason, succeeded_on, id, state, linked_transaction, failed_on, transaction, processor_reference].hash
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
