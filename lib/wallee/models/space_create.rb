=begin
Wallee API: 1.0.0

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
  class SpaceCreate
    # The account to which the space belongs to.
    attr_accessor :account

    # Active means that this account and all accounts in the hierarchy are active.
    attr_accessor :active

    # This property is true when all accounts in the hierarchy are active or restricted active.
    attr_accessor :active_or_restricted_active

    # The database in which the space's data are stored in.
    attr_accessor :database

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The space name is used internally to identify the space in administrative interfaces. For example it is used within search fields and hence it should be distinct and descriptive.
    attr_accessor :name

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # The address to use in communication with clients for example in email, documents etc.
    attr_accessor :postal_address

    # The request limit defines the maximum number of API request accepted within 2 minutes per cluster node. This limit can only be changed with special privileges.
    attr_accessor :request_limit

    # Restricted active means that at least one account in the hierarchy is only restricted active, but all are either restricted active or active.
    attr_accessor :restricted_active

    # 
    attr_accessor :state

    # The email address provided as contact addresses will be informed about technical issues or errors triggered by the space.
    attr_accessor :technical_contact_addresses

    # The time zone assigned to the space determines the time offset for calculating dates within the space. This is typically used for background processed which needs to be triggered on a specific hour within the day. Changing the space time zone will not change the display of dates.
    attr_accessor :time_zone

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'active' => :'active',
        :'active_or_restricted_active' => :'activeOrRestrictedActive',
        :'database' => :'database',
        :'id' => :'id',
        :'name' => :'name',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'postal_address' => :'postalAddress',
        :'request_limit' => :'requestLimit',
        :'restricted_active' => :'restrictedActive',
        :'state' => :'state',
        :'technical_contact_addresses' => :'technicalContactAddresses',
        :'time_zone' => :'timeZone',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account' => :'Integer',
        :'active' => :'BOOLEAN',
        :'active_or_restricted_active' => :'BOOLEAN',
        :'database' => :'TenantDatabase',
        :'id' => :'Integer',
        :'name' => :'String',
        :'planned_purge_date' => :'DateTime',
        :'postal_address' => :'SpaceAddressSetter',
        :'request_limit' => :'Integer',
        :'restricted_active' => :'BOOLEAN',
        :'state' => :'CreationEntityState',
        :'technical_contact_addresses' => :'Array<String>',
        :'time_zone' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.has_key?(:'activeOrRestrictedActive')
        self.active_or_restricted_active = attributes[:'activeOrRestrictedActive']
      end

      if attributes.has_key?(:'database')
        self.database = attributes[:'database']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'postalAddress')
        self.postal_address = attributes[:'postalAddress']
      end

      if attributes.has_key?(:'requestLimit')
        self.request_limit = attributes[:'requestLimit']
      end

      if attributes.has_key?(:'restrictedActive')
        self.restricted_active = attributes[:'restrictedActive']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'technicalContactAddresses')
        if (value = attributes[:'technicalContactAddresses']).is_a?(Array)
          self.technical_contact_addresses = value
        end
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account.nil?
        invalid_properties.push("invalid value for 'account', account cannot be nil.")
      end

      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      if @version.nil?
        invalid_properties.push("invalid value for 'version', version cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account.nil?
      return false if @id.nil?
      return false if @state.nil?
      return false if @version.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          active == o.active &&
          active_or_restricted_active == o.active_or_restricted_active &&
          database == o.database &&
          id == o.id &&
          name == o.name &&
          planned_purge_date == o.planned_purge_date &&
          postal_address == o.postal_address &&
          request_limit == o.request_limit &&
          restricted_active == o.restricted_active &&
          state == o.state &&
          technical_contact_addresses == o.technical_contact_addresses &&
          time_zone == o.time_zone &&
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
      [account, active, active_or_restricted_active, database, id, name, planned_purge_date, postal_address, request_limit, restricted_active, state, technical_contact_addresses, time_zone, version].hash
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
