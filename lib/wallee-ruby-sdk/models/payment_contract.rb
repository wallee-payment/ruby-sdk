=begin
wallee API: 2.2.1

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
  class PaymentContract
    # 
    attr_accessor :account

    # 
    attr_accessor :activated_on

    # 
    attr_accessor :contract_identifier

    # 
    attr_accessor :contract_type

    # 
    attr_accessor :created_by

    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # The external id helps to identify the entity and a subsequent creation of an entity with the same ID will not create a new entity.
    attr_accessor :external_id

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :rejected_on

    # 
    attr_accessor :rejection_reason

    # 
    attr_accessor :start_terminating_on

    # 
    attr_accessor :state

    # 
    attr_accessor :terminated_by

    # 
    attr_accessor :terminated_on

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'activated_on' => :'activatedOn',
        :'contract_identifier' => :'contractIdentifier',
        :'contract_type' => :'contractType',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'external_id' => :'externalId',
        :'id' => :'id',
        :'rejected_on' => :'rejectedOn',
        :'rejection_reason' => :'rejectionReason',
        :'start_terminating_on' => :'startTerminatingOn',
        :'state' => :'state',
        :'terminated_by' => :'terminatedBy',
        :'terminated_on' => :'terminatedOn',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account' => :'Account',
        :'activated_on' => :'DateTime',
        :'contract_identifier' => :'String',
        :'contract_type' => :'PaymentContractType',
        :'created_by' => :'User',
        :'created_on' => :'DateTime',
        :'external_id' => :'String',
        :'id' => :'Integer',
        :'rejected_on' => :'DateTime',
        :'rejection_reason' => :'FailureReason',
        :'start_terminating_on' => :'DateTime',
        :'state' => :'PaymentContractState',
        :'terminated_by' => :'User',
        :'terminated_on' => :'DateTime',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'activatedOn')
        self.activated_on = attributes[:'activatedOn']
      end

      if attributes.has_key?(:'contractIdentifier')
        self.contract_identifier = attributes[:'contractIdentifier']
      end

      if attributes.has_key?(:'contractType')
        self.contract_type = attributes[:'contractType']
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

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'rejectedOn')
        self.rejected_on = attributes[:'rejectedOn']
      end

      if attributes.has_key?(:'rejectionReason')
        self.rejection_reason = attributes[:'rejectionReason']
      end

      if attributes.has_key?(:'startTerminatingOn')
        self.start_terminating_on = attributes[:'startTerminatingOn']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'terminatedBy')
        self.terminated_by = attributes[:'terminatedBy']
      end

      if attributes.has_key?(:'terminatedOn')
        self.terminated_on = attributes[:'terminatedOn']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 100
      return false if !@external_id.nil? && @external_id.to_s.length < 1
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          activated_on == o.activated_on &&
          contract_identifier == o.contract_identifier &&
          contract_type == o.contract_type &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          external_id == o.external_id &&
          id == o.id &&
          rejected_on == o.rejected_on &&
          rejection_reason == o.rejection_reason &&
          start_terminating_on == o.start_terminating_on &&
          state == o.state &&
          terminated_by == o.terminated_by &&
          terminated_on == o.terminated_on &&
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
      [account, activated_on, contract_identifier, contract_type, created_by, created_on, external_id, id, rejected_on, rejection_reason, start_terminating_on, state, terminated_by, terminated_on, version].hash
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
