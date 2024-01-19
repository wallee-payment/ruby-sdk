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
  class PaymentAppConnector
    # 
    attr_accessor :authorization_timeout

    # The completion configuration defines how the deferred completion is processed. If it is not present it means that deferred completion is not supported by this connector.
    attr_accessor :completion_configuration

    # The connector configuration references the configuration that was created as part of this connector within the space. The connector configuration is referenced within transactions created with this connector.
    attr_accessor :connector_configuration

    # The created on date indicates when the connector was added.
    attr_accessor :created_on

    # The external ID corresponds to the ID provided during inserting of the processor.
    attr_accessor :external_id

    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The name of the connector will be displayed within the user interfaces that the merchant is interacting with.
    attr_accessor :name

    # The payment page endpoint is invoked to process the transaction. The endpoint is defined by the external service provider.
    attr_accessor :payment_page_endpoint

    # The processor references the app processor to which this connector belongs to. The relationship is established during the creation of the connector.
    attr_accessor :processor

    # The refund configuration defines how refunds are processed. If it is not present it means that refunds are not supported by this connector.
    attr_accessor :refund_configuration

    # The object's current state.
    attr_accessor :state

    # The updated on date indicates when the last time the connector was updated on.
    attr_accessor :updated_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authorization_timeout' => :'authorizationTimeout',
        :'completion_configuration' => :'completionConfiguration',
        :'connector_configuration' => :'connectorConfiguration',
        :'created_on' => :'createdOn',
        :'external_id' => :'externalId',
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'name' => :'name',
        :'payment_page_endpoint' => :'paymentPageEndpoint',
        :'processor' => :'processor',
        :'refund_configuration' => :'refundConfiguration',
        :'state' => :'state',
        :'updated_on' => :'updatedOn',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'authorization_timeout' => :'String',
        :'completion_configuration' => :'PaymentAppCompletionConfiguration',
        :'connector_configuration' => :'PaymentConnectorConfiguration',
        :'created_on' => :'DateTime',
        :'external_id' => :'String',
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'name' => :'String',
        :'payment_page_endpoint' => :'String',
        :'processor' => :'PaymentAppProcessor',
        :'refund_configuration' => :'PaymentAppRefundConfiguration',
        :'state' => :'PaymentAppConnectorState',
        :'updated_on' => :'DateTime',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'authorizationTimeout')
        self.authorization_timeout = attributes[:'authorizationTimeout']
      end

      if attributes.has_key?(:'completionConfiguration')
        self.completion_configuration = attributes[:'completionConfiguration']
      end

      if attributes.has_key?(:'connectorConfiguration')
        self.connector_configuration = attributes[:'connectorConfiguration']
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

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'paymentPageEndpoint')
        self.payment_page_endpoint = attributes[:'paymentPageEndpoint']
      end

      if attributes.has_key?(:'processor')
        self.processor = attributes[:'processor']
      end

      if attributes.has_key?(:'refundConfiguration')
        self.refund_configuration = attributes[:'refundConfiguration']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'updatedOn')
        self.updated_on = attributes[:'updatedOn']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@external_id.nil? && @external_id.to_s.length > 40
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 40.')
      end

      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@external_id.nil? && @external_id.to_s.length > 40
      return false if !@name.nil? && @name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if !external_id.nil? && external_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 40.'
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authorization_timeout == o.authorization_timeout &&
          completion_configuration == o.completion_configuration &&
          connector_configuration == o.connector_configuration &&
          created_on == o.created_on &&
          external_id == o.external_id &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          name == o.name &&
          payment_page_endpoint == o.payment_page_endpoint &&
          processor == o.processor &&
          refund_configuration == o.refund_configuration &&
          state == o.state &&
          updated_on == o.updated_on &&
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
      [authorization_timeout, completion_configuration, connector_configuration, created_on, external_id, id, linked_space_id, name, payment_page_endpoint, processor, refund_configuration, state, updated_on, version].hash
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
