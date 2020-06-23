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
  class TokenVersion
    # 
    attr_accessor :activated_on

    # 
    attr_accessor :billing_address

    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # 
    attr_accessor :environment

    # The expires on date indicates when token version expires. Once this date is reached the token version is marked as obsolete.
    attr_accessor :expires_on

    # 
    attr_accessor :icon_url

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :labels

    # 
    attr_accessor :language

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :name

    # 
    attr_accessor :obsoleted_on

    # 
    attr_accessor :payment_connector_configuration

    # The payment information hash set contains hashes of the payment information represented by this token version.
    attr_accessor :payment_information_hashes

    # 
    attr_accessor :payment_method

    # 
    attr_accessor :payment_method_brand

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :processor_token

    # 
    attr_accessor :shipping_address

    # 
    attr_accessor :state

    # 
    attr_accessor :token

    # The token version type determines what kind of token it is and by which payment connector the token can be processed by.
    attr_accessor :type

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activated_on' => :'activatedOn',
        :'billing_address' => :'billingAddress',
        :'created_on' => :'createdOn',
        :'environment' => :'environment',
        :'expires_on' => :'expiresOn',
        :'icon_url' => :'iconUrl',
        :'id' => :'id',
        :'labels' => :'labels',
        :'language' => :'language',
        :'linked_space_id' => :'linkedSpaceId',
        :'name' => :'name',
        :'obsoleted_on' => :'obsoletedOn',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'payment_information_hashes' => :'paymentInformationHashes',
        :'payment_method' => :'paymentMethod',
        :'payment_method_brand' => :'paymentMethodBrand',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'processor_token' => :'processorToken',
        :'shipping_address' => :'shippingAddress',
        :'state' => :'state',
        :'token' => :'token',
        :'type' => :'type',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activated_on' => :'DateTime',
        :'billing_address' => :'Address',
        :'created_on' => :'DateTime',
        :'environment' => :'ChargeAttemptEnvironment',
        :'expires_on' => :'DateTime',
        :'icon_url' => :'String',
        :'id' => :'Integer',
        :'labels' => :'Array<Label>',
        :'language' => :'String',
        :'linked_space_id' => :'Integer',
        :'name' => :'String',
        :'obsoleted_on' => :'DateTime',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'payment_information_hashes' => :'Array<PaymentInformationHash>',
        :'payment_method' => :'Integer',
        :'payment_method_brand' => :'Integer',
        :'planned_purge_date' => :'DateTime',
        :'processor_token' => :'String',
        :'shipping_address' => :'Address',
        :'state' => :'TokenVersionState',
        :'token' => :'Token',
        :'type' => :'TokenVersionType',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'activatedOn')
        self.activated_on = attributes[:'activatedOn']
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.has_key?(:'expiresOn')
        self.expires_on = attributes[:'expiresOn']
      end

      if attributes.has_key?(:'iconUrl')
        self.icon_url = attributes[:'iconUrl']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'obsoletedOn')
        self.obsoleted_on = attributes[:'obsoletedOn']
      end

      if attributes.has_key?(:'paymentConnectorConfiguration')
        self.payment_connector_configuration = attributes[:'paymentConnectorConfiguration']
      end

      if attributes.has_key?(:'paymentInformationHashes')
        if (value = attributes[:'paymentInformationHashes']).is_a?(Array)
          self.payment_information_hashes = value
        end
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'paymentMethodBrand')
        self.payment_method_brand = attributes[:'paymentMethodBrand']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'processorToken')
        self.processor_token = attributes[:'processorToken']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
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
      if !@name.nil? && @name.to_s.length > 150
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 150.')
      end

      if !@processor_token.nil? && @processor_token.to_s.length > 150
        invalid_properties.push('invalid value for "processor_token", the character length must be smaller than or equal to 150.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 150
      return false if !@processor_token.nil? && @processor_token.to_s.length > 150
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 150
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 150.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] processor_token Value to be assigned
    def processor_token=(processor_token)
      if !processor_token.nil? && processor_token.to_s.length > 150
        fail ArgumentError, 'invalid value for "processor_token", the character length must be smaller than or equal to 150.'
      end

      @processor_token = processor_token
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activated_on == o.activated_on &&
          billing_address == o.billing_address &&
          created_on == o.created_on &&
          environment == o.environment &&
          expires_on == o.expires_on &&
          icon_url == o.icon_url &&
          id == o.id &&
          labels == o.labels &&
          language == o.language &&
          linked_space_id == o.linked_space_id &&
          name == o.name &&
          obsoleted_on == o.obsoleted_on &&
          payment_connector_configuration == o.payment_connector_configuration &&
          payment_information_hashes == o.payment_information_hashes &&
          payment_method == o.payment_method &&
          payment_method_brand == o.payment_method_brand &&
          planned_purge_date == o.planned_purge_date &&
          processor_token == o.processor_token &&
          shipping_address == o.shipping_address &&
          state == o.state &&
          token == o.token &&
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
      [activated_on, billing_address, created_on, environment, expires_on, icon_url, id, labels, language, linked_space_id, name, obsoleted_on, payment_connector_configuration, payment_information_hashes, payment_method, payment_method_brand, planned_purge_date, processor_token, shipping_address, state, token, type, version].hash
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
