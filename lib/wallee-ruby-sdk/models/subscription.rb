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
  class Subscription
    attr_accessor :subscriber

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The ID of the user the subscription was terminated by.
    attr_accessor :terminated_by

    # A description used to identify the subscription.
    attr_accessor :description

    # The language that is linked to the object.
    attr_accessor :language

    # The date and time when the subscription was initialized.
    attr_accessor :initialized_on

    # The date and time when the subscription was created.
    attr_accessor :created_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    attr_accessor :token

    # The merchant's reference used to identify the subscription.
    attr_accessor :reference

    # The date and time when the subscription was terminated.
    attr_accessor :terminated_on

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The date and time when the subscription was activate.
    attr_accessor :activated_on

    # The date and time when the termination of the subscription started.
    attr_accessor :terminating_on

    attr_accessor :current_product_version

    # The date and time when the subscription is planned to be terminated.
    attr_accessor :planned_termination_date

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    attr_accessor :affiliate

    # The date and time when the subscription was scheduled to be terminated.
    attr_accessor :termination_scheduled_on

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
        :'subscriber' => :'subscriber',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'terminated_by' => :'terminatedBy',
        :'description' => :'description',
        :'language' => :'language',
        :'initialized_on' => :'initializedOn',
        :'created_on' => :'createdOn',
        :'version' => :'version',
        :'token' => :'token',
        :'reference' => :'reference',
        :'terminated_on' => :'terminatedOn',
        :'linked_space_id' => :'linkedSpaceId',
        :'activated_on' => :'activatedOn',
        :'terminating_on' => :'terminatingOn',
        :'current_product_version' => :'currentProductVersion',
        :'planned_termination_date' => :'plannedTerminationDate',
        :'id' => :'id',
        :'state' => :'state',
        :'affiliate' => :'affiliate',
        :'termination_scheduled_on' => :'terminationScheduledOn'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'subscriber' => :'Subscriber',
        :'planned_purge_date' => :'Time',
        :'terminated_by' => :'Integer',
        :'description' => :'String',
        :'language' => :'String',
        :'initialized_on' => :'Time',
        :'created_on' => :'Time',
        :'version' => :'Integer',
        :'token' => :'Token',
        :'reference' => :'String',
        :'terminated_on' => :'Time',
        :'linked_space_id' => :'Integer',
        :'activated_on' => :'Time',
        :'terminating_on' => :'Time',
        :'current_product_version' => :'SubscriptionProductVersion',
        :'planned_termination_date' => :'Time',
        :'id' => :'Integer',
        :'state' => :'SubscriptionState',
        :'affiliate' => :'SubscriptionAffiliate',
        :'termination_scheduled_on' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::Subscription` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::Subscription`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'subscriber')
        self.subscriber = attributes[:'subscriber']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'terminated_by')
        self.terminated_by = attributes[:'terminated_by']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'initialized_on')
        self.initialized_on = attributes[:'initialized_on']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'terminated_on')
        self.terminated_on = attributes[:'terminated_on']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'activated_on')
        self.activated_on = attributes[:'activated_on']
      end

      if attributes.key?(:'terminating_on')
        self.terminating_on = attributes[:'terminating_on']
      end

      if attributes.key?(:'current_product_version')
        self.current_product_version = attributes[:'current_product_version']
      end

      if attributes.key?(:'planned_termination_date')
        self.planned_termination_date = attributes[:'planned_termination_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'affiliate')
        self.affiliate = attributes[:'affiliate']
      end

      if attributes.key?(:'termination_scheduled_on')
        self.termination_scheduled_on = attributes[:'termination_scheduled_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 200
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 200.')
      end

      if !@reference.nil? && @reference.to_s.length > 100
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@reference.nil? && @reference !~ pattern
        invalid_properties.push("invalid value for \"reference\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@description.nil? && @description.to_s.length > 200
      return false if !@reference.nil? && @reference.to_s.length > 100
      pattern = Regexp.new(/[	\x20-\x7e]*/)
      return false if !@reference.nil? && @reference !~ pattern
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 200
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 200.'
      end

      @description = description
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          subscriber == o.subscriber &&
          planned_purge_date == o.planned_purge_date &&
          terminated_by == o.terminated_by &&
          description == o.description &&
          language == o.language &&
          initialized_on == o.initialized_on &&
          created_on == o.created_on &&
          version == o.version &&
          token == o.token &&
          reference == o.reference &&
          terminated_on == o.terminated_on &&
          linked_space_id == o.linked_space_id &&
          activated_on == o.activated_on &&
          terminating_on == o.terminating_on &&
          current_product_version == o.current_product_version &&
          planned_termination_date == o.planned_termination_date &&
          id == o.id &&
          state == o.state &&
          affiliate == o.affiliate &&
          termination_scheduled_on == o.termination_scheduled_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [subscriber, planned_purge_date, terminated_by, description, language, initialized_on, created_on, version, token, reference, terminated_on, linked_space_id, activated_on, terminating_on, current_product_version, planned_termination_date, id, state, affiliate, termination_scheduled_on].hash
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
