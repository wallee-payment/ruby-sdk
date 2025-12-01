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
  class DeliveryIndication
    attr_accessor :completion

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    attr_accessor :automatic_decision_reason

    # The date and time when an automatic decision was made.
    attr_accessor :automatically_decided_on

    # The date and time when the object was created.
    attr_accessor :created_on

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The ID of the user who manually decided the delivery indication's state.
    attr_accessor :manually_decided_by

    # The date and time when the delivery indication will expire.
    attr_accessor :timeout_on

    # The date and time by which a decision must be made before the system automatically proceeds according to the connector's predefined settings.
    attr_accessor :manual_decision_timeout_on

    # The date and time when a manual decision was made.
    attr_accessor :manually_decided_on

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    attr_accessor :transaction

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
        :'planned_purge_date' => :'plannedPurgeDate',
        :'automatic_decision_reason' => :'automaticDecisionReason',
        :'automatically_decided_on' => :'automaticallyDecidedOn',
        :'created_on' => :'createdOn',
        :'linked_space_id' => :'linkedSpaceId',
        :'manually_decided_by' => :'manuallyDecidedBy',
        :'timeout_on' => :'timeoutOn',
        :'manual_decision_timeout_on' => :'manualDecisionTimeoutOn',
        :'manually_decided_on' => :'manuallyDecidedOn',
        :'id' => :'id',
        :'state' => :'state',
        :'linked_transaction' => :'linkedTransaction',
        :'transaction' => :'transaction'
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
        :'completion' => :'TransactionCompletion',
        :'planned_purge_date' => :'Time',
        :'automatic_decision_reason' => :'DeliveryIndicationDecisionReason',
        :'automatically_decided_on' => :'Time',
        :'created_on' => :'Time',
        :'linked_space_id' => :'Integer',
        :'manually_decided_by' => :'Integer',
        :'timeout_on' => :'Time',
        :'manual_decision_timeout_on' => :'Time',
        :'manually_decided_on' => :'Time',
        :'id' => :'Integer',
        :'state' => :'DeliveryIndicationState',
        :'linked_transaction' => :'Integer',
        :'transaction' => :'Transaction'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::DeliveryIndication` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::DeliveryIndication`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'completion')
        self.completion = attributes[:'completion']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'automatic_decision_reason')
        self.automatic_decision_reason = attributes[:'automatic_decision_reason']
      end

      if attributes.key?(:'automatically_decided_on')
        self.automatically_decided_on = attributes[:'automatically_decided_on']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'manually_decided_by')
        self.manually_decided_by = attributes[:'manually_decided_by']
      end

      if attributes.key?(:'timeout_on')
        self.timeout_on = attributes[:'timeout_on']
      end

      if attributes.key?(:'manual_decision_timeout_on')
        self.manual_decision_timeout_on = attributes[:'manual_decision_timeout_on']
      end

      if attributes.key?(:'manually_decided_on')
        self.manually_decided_on = attributes[:'manually_decided_on']
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

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          completion == o.completion &&
          planned_purge_date == o.planned_purge_date &&
          automatic_decision_reason == o.automatic_decision_reason &&
          automatically_decided_on == o.automatically_decided_on &&
          created_on == o.created_on &&
          linked_space_id == o.linked_space_id &&
          manually_decided_by == o.manually_decided_by &&
          timeout_on == o.timeout_on &&
          manual_decision_timeout_on == o.manual_decision_timeout_on &&
          manually_decided_on == o.manually_decided_on &&
          id == o.id &&
          state == o.state &&
          linked_transaction == o.linked_transaction &&
          transaction == o.transaction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [completion, planned_purge_date, automatic_decision_reason, automatically_decided_on, created_on, linked_space_id, manually_decided_by, timeout_on, manual_decision_timeout_on, manually_decided_on, id, state, linked_transaction, transaction].hash
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
