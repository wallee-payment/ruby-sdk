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
  class ChargeAttempt
    # The language that is linked to the object.
    attr_accessor :language

    # The sales channel through which the charge attempt was made.
    attr_accessor :sales_channel

    # The date and time when the object was created.
    attr_accessor :created_on

    # Whether a new token version is being initialized.
    attr_accessor :initializing_token_version

    attr_accessor :token_version

    # The date and time when the charge attempt succeeded.
    attr_accessor :succeeded_on

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The payment transaction this object is linked to.
    attr_accessor :linked_transaction

    # The URL to redirect the customer to after payment processing.
    attr_accessor :redirection_url

    attr_accessor :charge

    attr_accessor :wallet

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The time zone that this object is associated with.
    attr_accessor :time_zone

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    attr_accessor :terminal

    # The message that can be displayed to the customer explaining why the charge attempt failed, in the customer's language.
    attr_accessor :user_failure_message

    attr_accessor :completion_behavior

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The labels providing additional information about the object.
    attr_accessor :labels

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The date and time when the object will expire.
    attr_accessor :timeout_on

    attr_accessor :environment

    attr_accessor :invocation

    attr_accessor :connector_configuration

    # The date and time when the next update of the object's state is planned.
    attr_accessor :next_update_on

    attr_accessor :failure_reason

    attr_accessor :customers_presence

    # The date and time when the charge attempt failed.
    attr_accessor :failed_on

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
        :'language' => :'language',
        :'sales_channel' => :'salesChannel',
        :'created_on' => :'createdOn',
        :'initializing_token_version' => :'initializingTokenVersion',
        :'token_version' => :'tokenVersion',
        :'succeeded_on' => :'succeededOn',
        :'id' => :'id',
        :'state' => :'state',
        :'linked_transaction' => :'linkedTransaction',
        :'redirection_url' => :'redirectionUrl',
        :'charge' => :'charge',
        :'wallet' => :'wallet',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'time_zone' => :'timeZone',
        :'space_view_id' => :'spaceViewId',
        :'terminal' => :'terminal',
        :'user_failure_message' => :'userFailureMessage',
        :'completion_behavior' => :'completionBehavior',
        :'version' => :'version',
        :'labels' => :'labels',
        :'linked_space_id' => :'linkedSpaceId',
        :'timeout_on' => :'timeoutOn',
        :'environment' => :'environment',
        :'invocation' => :'invocation',
        :'connector_configuration' => :'connectorConfiguration',
        :'next_update_on' => :'nextUpdateOn',
        :'failure_reason' => :'failureReason',
        :'customers_presence' => :'customersPresence',
        :'failed_on' => :'failedOn'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'language' => :'String',
        :'sales_channel' => :'Integer',
        :'created_on' => :'Time',
        :'initializing_token_version' => :'Boolean',
        :'token_version' => :'TokenVersion',
        :'succeeded_on' => :'Time',
        :'id' => :'Integer',
        :'state' => :'ChargeAttemptState',
        :'linked_transaction' => :'Integer',
        :'redirection_url' => :'String',
        :'charge' => :'Charge',
        :'wallet' => :'WalletType',
        :'planned_purge_date' => :'Time',
        :'time_zone' => :'String',
        :'space_view_id' => :'Integer',
        :'terminal' => :'PaymentTerminal',
        :'user_failure_message' => :'String',
        :'completion_behavior' => :'TransactionCompletionBehavior',
        :'version' => :'Integer',
        :'labels' => :'Array<Label>',
        :'linked_space_id' => :'Integer',
        :'timeout_on' => :'Time',
        :'environment' => :'ChargeAttemptEnvironment',
        :'invocation' => :'ConnectorInvocation',
        :'connector_configuration' => :'PaymentConnectorConfiguration',
        :'next_update_on' => :'Time',
        :'failure_reason' => :'FailureReason',
        :'customers_presence' => :'CustomersPresence',
        :'failed_on' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::ChargeAttempt` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::ChargeAttempt`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'sales_channel')
        self.sales_channel = attributes[:'sales_channel']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'initializing_token_version')
        self.initializing_token_version = attributes[:'initializing_token_version']
      end

      if attributes.key?(:'token_version')
        self.token_version = attributes[:'token_version']
      end

      if attributes.key?(:'succeeded_on')
        self.succeeded_on = attributes[:'succeeded_on']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'linked_transaction')
        self.linked_transaction = attributes[:'linked_transaction']
      end

      if attributes.key?(:'redirection_url')
        self.redirection_url = attributes[:'redirection_url']
      end

      if attributes.key?(:'charge')
        self.charge = attributes[:'charge']
      end

      if attributes.key?(:'wallet')
        self.wallet = attributes[:'wallet']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'space_view_id')
        self.space_view_id = attributes[:'space_view_id']
      end

      if attributes.key?(:'terminal')
        self.terminal = attributes[:'terminal']
      end

      if attributes.key?(:'user_failure_message')
        self.user_failure_message = attributes[:'user_failure_message']
      end

      if attributes.key?(:'completion_behavior')
        self.completion_behavior = attributes[:'completion_behavior']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'timeout_on')
        self.timeout_on = attributes[:'timeout_on']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'invocation')
        self.invocation = attributes[:'invocation']
      end

      if attributes.key?(:'connector_configuration')
        self.connector_configuration = attributes[:'connector_configuration']
      end

      if attributes.key?(:'next_update_on')
        self.next_update_on = attributes[:'next_update_on']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'customers_presence')
        self.customers_presence = attributes[:'customers_presence']
      end

      if attributes.key?(:'failed_on')
        self.failed_on = attributes[:'failed_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@user_failure_message.nil? && @user_failure_message.to_s.length > 2000
        invalid_properties.push('invalid value for "user_failure_message", the character length must be smaller than or equal to 2000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@user_failure_message.nil? && @user_failure_message.to_s.length > 2000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_failure_message Value to be assigned
    def user_failure_message=(user_failure_message)
      if user_failure_message.nil?
        fail ArgumentError, 'user_failure_message cannot be nil'
      end

      if user_failure_message.to_s.length > 2000
        fail ArgumentError, 'invalid value for "user_failure_message", the character length must be smaller than or equal to 2000.'
      end

      @user_failure_message = user_failure_message
    end

    # Custom attribute writer method with validation
    # @param [Object] labels Value to be assigned
    def labels=(labels)
      if labels.nil?
        fail ArgumentError, 'labels cannot be nil'
      end

      @labels = labels
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          language == o.language &&
          sales_channel == o.sales_channel &&
          created_on == o.created_on &&
          initializing_token_version == o.initializing_token_version &&
          token_version == o.token_version &&
          succeeded_on == o.succeeded_on &&
          id == o.id &&
          state == o.state &&
          linked_transaction == o.linked_transaction &&
          redirection_url == o.redirection_url &&
          charge == o.charge &&
          wallet == o.wallet &&
          planned_purge_date == o.planned_purge_date &&
          time_zone == o.time_zone &&
          space_view_id == o.space_view_id &&
          terminal == o.terminal &&
          user_failure_message == o.user_failure_message &&
          completion_behavior == o.completion_behavior &&
          version == o.version &&
          labels == o.labels &&
          linked_space_id == o.linked_space_id &&
          timeout_on == o.timeout_on &&
          environment == o.environment &&
          invocation == o.invocation &&
          connector_configuration == o.connector_configuration &&
          next_update_on == o.next_update_on &&
          failure_reason == o.failure_reason &&
          customers_presence == o.customers_presence &&
          failed_on == o.failed_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [language, sales_channel, created_on, initializing_token_version, token_version, succeeded_on, id, state, linked_transaction, redirection_url, charge, wallet, planned_purge_date, time_zone, space_view_id, terminal, user_failure_message, completion_behavior, version, labels, linked_space_id, timeout_on, environment, invocation, connector_configuration, next_update_on, failure_reason, customers_presence, failed_on].hash
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
