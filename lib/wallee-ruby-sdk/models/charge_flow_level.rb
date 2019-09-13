=begin
wallee API: 2.0.0

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
  class ChargeFlowLevel
    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :linked_transaction

    # 
    attr_accessor :asynchronous_charge

    # 
    attr_accessor :configuration

    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :state

    # 
    attr_accessor :synchronous_charge

    # 
    attr_accessor :timeout_on

    # 
    attr_accessor :token_charge

    # 
    attr_accessor :transaction

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'linked_transaction' => :'linkedTransaction',
        :'asynchronous_charge' => :'asynchronousCharge',
        :'configuration' => :'configuration',
        :'created_on' => :'createdOn',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'state' => :'state',
        :'synchronous_charge' => :'synchronousCharge',
        :'timeout_on' => :'timeoutOn',
        :'token_charge' => :'tokenCharge',
        :'transaction' => :'transaction',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'linked_transaction' => :'Integer',
        :'asynchronous_charge' => :'Integer',
        :'configuration' => :'ChargeFlowLevelConfiguration',
        :'created_on' => :'DateTime',
        :'planned_purge_date' => :'DateTime',
        :'state' => :'ChargeFlowLevelState',
        :'synchronous_charge' => :'Integer',
        :'timeout_on' => :'DateTime',
        :'token_charge' => :'Integer',
        :'transaction' => :'Transaction',
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

      if attributes.has_key?(:'asynchronousCharge')
        self.asynchronous_charge = attributes[:'asynchronousCharge']
      end

      if attributes.has_key?(:'configuration')
        self.configuration = attributes[:'configuration']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'synchronousCharge')
        self.synchronous_charge = attributes[:'synchronousCharge']
      end

      if attributes.has_key?(:'timeoutOn')
        self.timeout_on = attributes[:'timeoutOn']
      end

      if attributes.has_key?(:'tokenCharge')
        self.token_charge = attributes[:'tokenCharge']
      end

      if attributes.has_key?(:'transaction')
        self.transaction = attributes[:'transaction']
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
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          linked_transaction == o.linked_transaction &&
          asynchronous_charge == o.asynchronous_charge &&
          configuration == o.configuration &&
          created_on == o.created_on &&
          planned_purge_date == o.planned_purge_date &&
          state == o.state &&
          synchronous_charge == o.synchronous_charge &&
          timeout_on == o.timeout_on &&
          token_charge == o.token_charge &&
          transaction == o.transaction &&
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
      [id, linked_space_id, linked_transaction, asynchronous_charge, configuration, created_on, planned_purge_date, state, synchronous_charge, timeout_on, token_charge, transaction, version].hash
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
