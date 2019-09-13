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
  class Account
    # Active means that this account and all accounts in the hierarchy are active.
    attr_accessor :active

    # This property is true when all accounts in the hierarchy are active or restricted active.
    attr_accessor :active_or_restricted_active

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The name of the account identifies the account within the administrative interface.
    attr_accessor :name

    # The account which is responsible for administering the account.
    attr_accessor :parent_account

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # Restricted active means that at least one account in the hierarchy is only restricted active, but all are either restricted active or active.
    attr_accessor :restricted_active

    # This is the scope to which the account belongs to.
    attr_accessor :scope

    # 
    attr_accessor :state

    # This property restricts the number of subaccounts which can be created within this account.
    attr_accessor :subaccount_limit

    # The account type defines which role and capabilities it has.
    attr_accessor :type

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'active_or_restricted_active' => :'activeOrRestrictedActive',
        :'id' => :'id',
        :'name' => :'name',
        :'parent_account' => :'parentAccount',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'restricted_active' => :'restrictedActive',
        :'scope' => :'scope',
        :'state' => :'state',
        :'subaccount_limit' => :'subaccountLimit',
        :'type' => :'type',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'active' => :'BOOLEAN',
        :'active_or_restricted_active' => :'BOOLEAN',
        :'id' => :'Integer',
        :'name' => :'String',
        :'parent_account' => :'Account',
        :'planned_purge_date' => :'DateTime',
        :'restricted_active' => :'BOOLEAN',
        :'scope' => :'Integer',
        :'state' => :'AccountState',
        :'subaccount_limit' => :'Integer',
        :'type' => :'AccountType',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'activeOrRestrictedActive')
        self.active_or_restricted_active = attributes[:'activeOrRestrictedActive']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'parentAccount')
        self.parent_account = attributes[:'parentAccount']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'restrictedActive')
        self.restricted_active = attributes[:'restrictedActive']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'subaccountLimit')
        self.subaccount_limit = attributes[:'subaccountLimit']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
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
          active == o.active &&
          active_or_restricted_active == o.active_or_restricted_active &&
          id == o.id &&
          name == o.name &&
          parent_account == o.parent_account &&
          planned_purge_date == o.planned_purge_date &&
          restricted_active == o.restricted_active &&
          scope == o.scope &&
          state == o.state &&
          subaccount_limit == o.subaccount_limit &&
          type == o.type &&
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
      [active, active_or_restricted_active, id, name, parent_account, planned_purge_date, restricted_active, scope, state, subaccount_limit, type, version].hash
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
