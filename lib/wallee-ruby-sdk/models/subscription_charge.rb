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
  # The subscription charge represents a single charge carried out for a particular subscription.
  class SubscriptionCharge
    # 
    attr_accessor :created_on

    # 
    attr_accessor :discarded_by

    # 
    attr_accessor :discarded_on

    # The external id helps to identify the entity and a subsequent creation of an entity with the same ID will not create a new entity.
    attr_accessor :external_id

    # 
    attr_accessor :failed_on

    # The user will be redirected to failed URL when the transaction could not be authorized or completed. In case no failed URL is specified a default failed page will be displayed.
    attr_accessor :failed_url

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :ledger_entries

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :planned_execution_date

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :processing_type

    # 
    attr_accessor :reference

    # 
    attr_accessor :state

    # The field subscription indicates the subscription to which the charge belongs to.
    attr_accessor :subscription

    # 
    attr_accessor :succeed_on

    # The user will be redirected to success URL when the transaction could be authorized or completed. In case no success URL is specified a default success page will be displayed.
    attr_accessor :success_url

    # 
    attr_accessor :transaction

    # 
    attr_accessor :type

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_on' => :'createdOn',
        :'discarded_by' => :'discardedBy',
        :'discarded_on' => :'discardedOn',
        :'external_id' => :'externalId',
        :'failed_on' => :'failedOn',
        :'failed_url' => :'failedUrl',
        :'id' => :'id',
        :'ledger_entries' => :'ledgerEntries',
        :'linked_space_id' => :'linkedSpaceId',
        :'planned_execution_date' => :'plannedExecutionDate',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'processing_type' => :'processingType',
        :'reference' => :'reference',
        :'state' => :'state',
        :'subscription' => :'subscription',
        :'succeed_on' => :'succeedOn',
        :'success_url' => :'successUrl',
        :'transaction' => :'transaction',
        :'type' => :'type',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_on' => :'DateTime',
        :'discarded_by' => :'Integer',
        :'discarded_on' => :'DateTime',
        :'external_id' => :'String',
        :'failed_on' => :'DateTime',
        :'failed_url' => :'String',
        :'id' => :'Integer',
        :'ledger_entries' => :'Array<SubscriptionLedgerEntry>',
        :'linked_space_id' => :'Integer',
        :'planned_execution_date' => :'DateTime',
        :'planned_purge_date' => :'DateTime',
        :'processing_type' => :'SubscriptionChargeProcessingType',
        :'reference' => :'String',
        :'state' => :'SubscriptionChargeState',
        :'subscription' => :'Subscription',
        :'succeed_on' => :'DateTime',
        :'success_url' => :'String',
        :'transaction' => :'Transaction',
        :'type' => :'SubscriptionChargeType',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'discardedBy')
        self.discarded_by = attributes[:'discardedBy']
      end

      if attributes.has_key?(:'discardedOn')
        self.discarded_on = attributes[:'discardedOn']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'failedOn')
        self.failed_on = attributes[:'failedOn']
      end

      if attributes.has_key?(:'failedUrl')
        self.failed_url = attributes[:'failedUrl']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'ledgerEntries')
        if (value = attributes[:'ledgerEntries']).is_a?(Array)
          self.ledger_entries = value
        end
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'plannedExecutionDate')
        self.planned_execution_date = attributes[:'plannedExecutionDate']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'processingType')
        self.processing_type = attributes[:'processingType']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end

      if attributes.has_key?(:'succeedOn')
        self.succeed_on = attributes[:'succeedOn']
      end

      if attributes.has_key?(:'successUrl')
        self.success_url = attributes[:'successUrl']
      end

      if attributes.has_key?(:'transaction')
        self.transaction = attributes[:'transaction']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_on == o.created_on &&
          discarded_by == o.discarded_by &&
          discarded_on == o.discarded_on &&
          external_id == o.external_id &&
          failed_on == o.failed_on &&
          failed_url == o.failed_url &&
          id == o.id &&
          ledger_entries == o.ledger_entries &&
          linked_space_id == o.linked_space_id &&
          planned_execution_date == o.planned_execution_date &&
          planned_purge_date == o.planned_purge_date &&
          processing_type == o.processing_type &&
          reference == o.reference &&
          state == o.state &&
          subscription == o.subscription &&
          succeed_on == o.succeed_on &&
          success_url == o.success_url &&
          transaction == o.transaction &&
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
      [created_on, discarded_by, discarded_on, external_id, failed_on, failed_url, id, ledger_entries, linked_space_id, planned_execution_date, planned_purge_date, processing_type, reference, state, subscription, succeed_on, success_url, transaction, type, version].hash
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
