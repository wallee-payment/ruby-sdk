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
  class TokenVersion
    # The hashed payment information that the token version represents.
    attr_accessor :payment_information_hashes

    # The language that is linked to the object.
    attr_accessor :language

    attr_accessor :type

    # The date and time when the object was created.
    attr_accessor :created_on

    # Retry interval when the strategy advises retrying later.
    attr_accessor :retry_in

    attr_accessor :payment_connector_configuration

    # The date and time when the token version was marked obsolete.
    attr_accessor :obsoleted_on

    # The date and time when the token version is set to expire, after which it will be marked as obsolete.
    attr_accessor :expires_on

    # The URL to the token's icon displayed to the customer.
    attr_accessor :icon_url

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The token name as specified by the processor.
    attr_accessor :processor_token

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    attr_accessor :payment_method_brand

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The date and time when the system last attempted a retry for this token version.
    attr_accessor :last_retried_on

    # The labels providing additional information about the object.
    attr_accessor :labels

    attr_accessor :token

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    attr_accessor :environment

    # The date and time when the token version was activated.
    attr_accessor :activated_on

    # The name used to identify the token.
    attr_accessor :name

    attr_accessor :payment_method

    attr_accessor :shipping_address

    attr_accessor :billing_address

    attr_accessor :retry_strategy

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
        :'payment_information_hashes' => :'paymentInformationHashes',
        :'language' => :'language',
        :'type' => :'type',
        :'created_on' => :'createdOn',
        :'retry_in' => :'retryIn',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'obsoleted_on' => :'obsoletedOn',
        :'expires_on' => :'expiresOn',
        :'icon_url' => :'iconUrl',
        :'id' => :'id',
        :'state' => :'state',
        :'processor_token' => :'processorToken',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'payment_method_brand' => :'paymentMethodBrand',
        :'version' => :'version',
        :'last_retried_on' => :'lastRetriedOn',
        :'labels' => :'labels',
        :'token' => :'token',
        :'linked_space_id' => :'linkedSpaceId',
        :'environment' => :'environment',
        :'activated_on' => :'activatedOn',
        :'name' => :'name',
        :'payment_method' => :'paymentMethod',
        :'shipping_address' => :'shippingAddress',
        :'billing_address' => :'billingAddress',
        :'retry_strategy' => :'retryStrategy'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_information_hashes' => :'Array<PaymentInformationHash>',
        :'language' => :'String',
        :'type' => :'TokenVersionType',
        :'created_on' => :'Time',
        :'retry_in' => :'String',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'obsoleted_on' => :'Time',
        :'expires_on' => :'Time',
        :'icon_url' => :'String',
        :'id' => :'Integer',
        :'state' => :'TokenVersionState',
        :'processor_token' => :'String',
        :'planned_purge_date' => :'Time',
        :'payment_method_brand' => :'PaymentMethodBrand',
        :'version' => :'Integer',
        :'last_retried_on' => :'Time',
        :'labels' => :'Array<Label>',
        :'token' => :'Token',
        :'linked_space_id' => :'Integer',
        :'environment' => :'ChargeAttemptEnvironment',
        :'activated_on' => :'Time',
        :'name' => :'String',
        :'payment_method' => :'PaymentMethod',
        :'shipping_address' => :'Address',
        :'billing_address' => :'Address',
        :'retry_strategy' => :'TokenVersionRetryStrategy'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::TokenVersion` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::TokenVersion`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_information_hashes')
        if (value = attributes[:'payment_information_hashes']).is_a?(Array)
          self.payment_information_hashes = value
        end
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'retry_in')
        self.retry_in = attributes[:'retry_in']
      end

      if attributes.key?(:'payment_connector_configuration')
        self.payment_connector_configuration = attributes[:'payment_connector_configuration']
      end

      if attributes.key?(:'obsoleted_on')
        self.obsoleted_on = attributes[:'obsoleted_on']
      end

      if attributes.key?(:'expires_on')
        self.expires_on = attributes[:'expires_on']
      end

      if attributes.key?(:'icon_url')
        self.icon_url = attributes[:'icon_url']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'processor_token')
        self.processor_token = attributes[:'processor_token']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'payment_method_brand')
        self.payment_method_brand = attributes[:'payment_method_brand']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'last_retried_on')
        self.last_retried_on = attributes[:'last_retried_on']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'activated_on')
        self.activated_on = attributes[:'activated_on']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'retry_strategy')
        self.retry_strategy = attributes[:'retry_strategy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@processor_token.nil? && @processor_token.to_s.length > 150
        invalid_properties.push('invalid value for "processor_token", the character length must be smaller than or equal to 150.')
      end

      if !@name.nil? && @name.to_s.length > 150
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 150.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@processor_token.nil? && @processor_token.to_s.length > 150
      return false if !@name.nil? && @name.to_s.length > 150
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_information_hashes Value to be assigned
    def payment_information_hashes=(payment_information_hashes)
      if payment_information_hashes.nil?
        fail ArgumentError, 'payment_information_hashes cannot be nil'
      end

      @payment_information_hashes = payment_information_hashes
    end

    # Custom attribute writer method with validation
    # @param [Object] processor_token Value to be assigned
    def processor_token=(processor_token)
      if processor_token.nil?
        fail ArgumentError, 'processor_token cannot be nil'
      end

      if processor_token.to_s.length > 150
        fail ArgumentError, 'invalid value for "processor_token", the character length must be smaller than or equal to 150.'
      end

      @processor_token = processor_token
    end

    # Custom attribute writer method with validation
    # @param [Object] labels Value to be assigned
    def labels=(labels)
      if labels.nil?
        fail ArgumentError, 'labels cannot be nil'
      end

      @labels = labels
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 150
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 150.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_information_hashes == o.payment_information_hashes &&
          language == o.language &&
          type == o.type &&
          created_on == o.created_on &&
          retry_in == o.retry_in &&
          payment_connector_configuration == o.payment_connector_configuration &&
          obsoleted_on == o.obsoleted_on &&
          expires_on == o.expires_on &&
          icon_url == o.icon_url &&
          id == o.id &&
          state == o.state &&
          processor_token == o.processor_token &&
          planned_purge_date == o.planned_purge_date &&
          payment_method_brand == o.payment_method_brand &&
          version == o.version &&
          last_retried_on == o.last_retried_on &&
          labels == o.labels &&
          token == o.token &&
          linked_space_id == o.linked_space_id &&
          environment == o.environment &&
          activated_on == o.activated_on &&
          name == o.name &&
          payment_method == o.payment_method &&
          shipping_address == o.shipping_address &&
          billing_address == o.billing_address &&
          retry_strategy == o.retry_strategy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_information_hashes, language, type, created_on, retry_in, payment_connector_configuration, obsoleted_on, expires_on, icon_url, id, state, processor_token, planned_purge_date, payment_method_brand, version, last_retried_on, labels, token, linked_space_id, environment, activated_on, name, payment_method, shipping_address, billing_address, retry_strategy].hash
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
