=begin
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
  class ShopifySubscription
    # 
    attr_accessor :created_by

    # 
    attr_accessor :created_on

    # The external id helps to identify the entity and a subsequent creation of an entity with the same ID will not create a new entity.
    attr_accessor :external_id

    # A unique identifier for the object.
    attr_accessor :id

    # 
    attr_accessor :initial_execution_date

    # 
    attr_accessor :initial_payment_transaction

    # 
    attr_accessor :initial_shopify_transaction

    # The language that is linked to the object.
    attr_accessor :language

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :order_recurrence_number

    # 
    attr_accessor :shop

    # The object's current state.
    attr_accessor :state

    # 
    attr_accessor :subscriber

    # 
    attr_accessor :terminated_by

    # 
    attr_accessor :terminated_on

    # 
    attr_accessor :termination_request_date

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'external_id' => :'externalId',
        :'id' => :'id',
        :'initial_execution_date' => :'initialExecutionDate',
        :'initial_payment_transaction' => :'initialPaymentTransaction',
        :'initial_shopify_transaction' => :'initialShopifyTransaction',
        :'language' => :'language',
        :'linked_space_id' => :'linkedSpaceId',
        :'order_recurrence_number' => :'orderRecurrenceNumber',
        :'shop' => :'shop',
        :'state' => :'state',
        :'subscriber' => :'subscriber',
        :'terminated_by' => :'terminatedBy',
        :'terminated_on' => :'terminatedOn',
        :'termination_request_date' => :'terminationRequestDate',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'external_id' => :'String',
        :'id' => :'Integer',
        :'initial_execution_date' => :'DateTime',
        :'initial_payment_transaction' => :'Integer',
        :'initial_shopify_transaction' => :'Integer',
        :'language' => :'String',
        :'linked_space_id' => :'Integer',
        :'order_recurrence_number' => :'Integer',
        :'shop' => :'Integer',
        :'state' => :'ShopifySubscriptionState',
        :'subscriber' => :'ShopifySubscriber',
        :'terminated_by' => :'Integer',
        :'terminated_on' => :'DateTime',
        :'termination_request_date' => :'DateTime',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

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

      if attributes.has_key?(:'initialExecutionDate')
        self.initial_execution_date = attributes[:'initialExecutionDate']
      end

      if attributes.has_key?(:'initialPaymentTransaction')
        self.initial_payment_transaction = attributes[:'initialPaymentTransaction']
      end

      if attributes.has_key?(:'initialShopifyTransaction')
        self.initial_shopify_transaction = attributes[:'initialShopifyTransaction']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'orderRecurrenceNumber')
        self.order_recurrence_number = attributes[:'orderRecurrenceNumber']
      end

      if attributes.has_key?(:'shop')
        self.shop = attributes[:'shop']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'subscriber')
        self.subscriber = attributes[:'subscriber']
      end

      if attributes.has_key?(:'terminatedBy')
        self.terminated_by = attributes[:'terminatedBy']
      end

      if attributes.has_key?(:'terminatedOn')
        self.terminated_on = attributes[:'terminatedOn']
      end

      if attributes.has_key?(:'terminationRequestDate')
        self.termination_request_date = attributes[:'terminationRequestDate']
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
          created_by == o.created_by &&
          created_on == o.created_on &&
          external_id == o.external_id &&
          id == o.id &&
          initial_execution_date == o.initial_execution_date &&
          initial_payment_transaction == o.initial_payment_transaction &&
          initial_shopify_transaction == o.initial_shopify_transaction &&
          language == o.language &&
          linked_space_id == o.linked_space_id &&
          order_recurrence_number == o.order_recurrence_number &&
          shop == o.shop &&
          state == o.state &&
          subscriber == o.subscriber &&
          terminated_by == o.terminated_by &&
          terminated_on == o.terminated_on &&
          termination_request_date == o.termination_request_date &&
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
      [created_by, created_on, external_id, id, initial_execution_date, initial_payment_transaction, initial_shopify_transaction, language, linked_space_id, order_recurrence_number, shop, state, subscriber, terminated_by, terminated_on, termination_request_date, version].hash
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
