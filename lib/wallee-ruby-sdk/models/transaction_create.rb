=begin
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
=end

require 'date'
require 'time'

module WalleeRubySdk
  class TransactionCreate
    # The customer's email address.
    attr_accessor :customer_email_address

    # The name of the shipping method used to ship the products.
    attr_accessor :shipping_method

    # The merchant's reference used to identify the invoice.
    attr_accessor :invoice_merchant_reference

    # The URL to redirect the customer back to after they successfully authenticated their payment.
    attr_accessor :success_url

    # The customer's time zone, which affects how dates and times are formatted when communicating with the customer.
    attr_accessor :time_zone

    # The language that is linked to the object.
    attr_accessor :language

    attr_accessor :tokenization_mode

    # The payment method brands that can be used to authorize the transaction.
    attr_accessor :allowed_payment_method_brands

    attr_accessor :completion_behavior

    # The payment token that should be used to charge the customer.
    attr_accessor :token

    # The line items purchased by the customer.
    attr_accessor :line_items

    # Allow to store additional information about the object.
    attr_accessor :meta_data

    # The unique identifier of the customer in the external system.
    attr_accessor :customer_id

    attr_accessor :shipping_address

    # The three-letter code (ISO 4217 format) of the transaction's currency.
    attr_accessor :currency

    attr_accessor :billing_address

    # The merchant's reference used to identify the transaction.
    attr_accessor :merchant_reference

    # The payment method configurations that can be used to authorize the transaction.
    attr_accessor :allowed_payment_method_configurations

    # The URL to redirect the customer back to after they canceled or failed to authenticated their payment.
    attr_accessor :failed_url

    # Whether the customer can make further payment attempts if the first one has failed. Default is true.
    attr_accessor :charge_retry_enabled

    # Whether email sending is deactivated for the transaction. Default is false.
    attr_accessor :emails_disabled

    attr_accessor :environment

    attr_accessor :environment_selection_strategy

    # Allows to link the transaction to the data collected from the customer's device.
    attr_accessor :device_session_identifier

    # Whether the transaction can be confirmed automatically or whether this must be done explicitly via the API. Default is true.
    attr_accessor :auto_confirmation_enabled

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    attr_accessor :customers_presence

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
        :'customer_email_address' => :'customerEmailAddress',
        :'shipping_method' => :'shippingMethod',
        :'invoice_merchant_reference' => :'invoiceMerchantReference',
        :'success_url' => :'successUrl',
        :'time_zone' => :'timeZone',
        :'language' => :'language',
        :'tokenization_mode' => :'tokenizationMode',
        :'allowed_payment_method_brands' => :'allowedPaymentMethodBrands',
        :'completion_behavior' => :'completionBehavior',
        :'token' => :'token',
        :'line_items' => :'lineItems',
        :'meta_data' => :'metaData',
        :'customer_id' => :'customerId',
        :'shipping_address' => :'shippingAddress',
        :'currency' => :'currency',
        :'billing_address' => :'billingAddress',
        :'merchant_reference' => :'merchantReference',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'failed_url' => :'failedUrl',
        :'charge_retry_enabled' => :'chargeRetryEnabled',
        :'emails_disabled' => :'emailsDisabled',
        :'environment' => :'environment',
        :'environment_selection_strategy' => :'environmentSelectionStrategy',
        :'device_session_identifier' => :'deviceSessionIdentifier',
        :'auto_confirmation_enabled' => :'autoConfirmationEnabled',
        :'space_view_id' => :'spaceViewId',
        :'customers_presence' => :'customersPresence'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'customer_email_address' => :'String',
        :'shipping_method' => :'String',
        :'invoice_merchant_reference' => :'String',
        :'success_url' => :'String',
        :'time_zone' => :'String',
        :'language' => :'String',
        :'tokenization_mode' => :'TokenizationMode',
        :'allowed_payment_method_brands' => :'Array<Integer>',
        :'completion_behavior' => :'TransactionCompletionBehavior',
        :'token' => :'Integer',
        :'line_items' => :'Array<LineItemCreate>',
        :'meta_data' => :'Hash<String, String>',
        :'customer_id' => :'String',
        :'shipping_address' => :'AddressCreate',
        :'currency' => :'String',
        :'billing_address' => :'AddressCreate',
        :'merchant_reference' => :'String',
        :'allowed_payment_method_configurations' => :'Array<Integer>',
        :'failed_url' => :'String',
        :'charge_retry_enabled' => :'Boolean',
        :'emails_disabled' => :'Boolean',
        :'environment' => :'Environment',
        :'environment_selection_strategy' => :'TransactionEnvironmentSelectionStrategy',
        :'device_session_identifier' => :'String',
        :'auto_confirmation_enabled' => :'Boolean',
        :'space_view_id' => :'Integer',
        :'customers_presence' => :'CustomersPresence'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'AbstractTransactionPending'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::TransactionCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::TransactionCreate`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'customer_email_address')
        self.customer_email_address = attributes[:'customer_email_address']
      end

      if attributes.key?(:'shipping_method')
        self.shipping_method = attributes[:'shipping_method']
      end

      if attributes.key?(:'invoice_merchant_reference')
        self.invoice_merchant_reference = attributes[:'invoice_merchant_reference']
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'tokenization_mode')
        self.tokenization_mode = attributes[:'tokenization_mode']
      end

      if attributes.key?(:'allowed_payment_method_brands')
        if (value = attributes[:'allowed_payment_method_brands']).is_a?(Array)
          self.allowed_payment_method_brands = value
        end
      end

      if attributes.key?(:'completion_behavior')
        self.completion_behavior = attributes[:'completion_behavior']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      else
        self.line_items = nil
      end

      if attributes.key?(:'meta_data')
        if (value = attributes[:'meta_data']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'merchant_reference')
        self.merchant_reference = attributes[:'merchant_reference']
      end

      if attributes.key?(:'allowed_payment_method_configurations')
        if (value = attributes[:'allowed_payment_method_configurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.key?(:'failed_url')
        self.failed_url = attributes[:'failed_url']
      end

      if attributes.key?(:'charge_retry_enabled')
        self.charge_retry_enabled = attributes[:'charge_retry_enabled']
      end

      if attributes.key?(:'emails_disabled')
        self.emails_disabled = attributes[:'emails_disabled']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'environment_selection_strategy')
        self.environment_selection_strategy = attributes[:'environment_selection_strategy']
      end

      if attributes.key?(:'device_session_identifier')
        self.device_session_identifier = attributes[:'device_session_identifier']
      end

      if attributes.key?(:'auto_confirmation_enabled')
        self.auto_confirmation_enabled = attributes[:'auto_confirmation_enabled']
      end

      if attributes.key?(:'space_view_id')
        self.space_view_id = attributes[:'space_view_id']
      end

      if attributes.key?(:'customers_presence')
        self.customers_presence = attributes[:'customers_presence']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
        invalid_properties.push('invalid value for "customer_email_address", the character length must be smaller than or equal to 254.')
      end

      if !@shipping_method.nil? && @shipping_method.to_s.length > 200
        invalid_properties.push('invalid value for "shipping_method", the character length must be smaller than or equal to 200.')
      end

      if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@invoice_merchant_reference.nil? && @invoice_merchant_reference !~ pattern
        invalid_properties.push("invalid value for \"invoice_merchant_reference\", must conform to the pattern #{pattern}.")
      end

      if !@success_url.nil? && @success_url.to_s.length > 2000
        invalid_properties.push('invalid value for "success_url", the character length must be smaller than or equal to 2000.')
      end

      if !@success_url.nil? && @success_url.to_s.length < 9
        invalid_properties.push('invalid value for "success_url", the character length must be great than or equal to 9.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "merchant_reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@merchant_reference.nil? && @merchant_reference !~ pattern
        invalid_properties.push("invalid value for \"merchant_reference\", must conform to the pattern #{pattern}.")
      end

      if !@failed_url.nil? && @failed_url.to_s.length > 2000
        invalid_properties.push('invalid value for "failed_url", the character length must be smaller than or equal to 2000.')
      end

      if !@failed_url.nil? && @failed_url.to_s.length < 9
        invalid_properties.push('invalid value for "failed_url", the character length must be great than or equal to 9.')
      end

      if !@device_session_identifier.nil? && @device_session_identifier.to_s.length > 40
        invalid_properties.push('invalid value for "device_session_identifier", the character length must be smaller than or equal to 40.')
      end

      if !@device_session_identifier.nil? && @device_session_identifier.to_s.length < 10
        invalid_properties.push('invalid value for "device_session_identifier", the character length must be great than or equal to 10.')
      end

      pattern = Regexp.new(/([a-zA-Z0-9_-])*/)
      if !@device_session_identifier.nil? && @device_session_identifier !~ pattern
        invalid_properties.push("invalid value for \"device_session_identifier\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
      return false if !@shipping_method.nil? && @shipping_method.to_s.length > 200
      return false if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
      return false if !@invoice_merchant_reference.nil? && @invoice_merchant_reference !~ Regexp.new(/[	\x20-\x7e]*/)
      return false if !@success_url.nil? && @success_url.to_s.length > 2000
      return false if !@success_url.nil? && @success_url.to_s.length < 9
      return false if @line_items.nil?
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
      return false if !@merchant_reference.nil? && @merchant_reference !~ Regexp.new(/[	\x20-\x7e]*/)
      return false if !@failed_url.nil? && @failed_url.to_s.length > 2000
      return false if !@failed_url.nil? && @failed_url.to_s.length < 9
      return false if !@device_session_identifier.nil? && @device_session_identifier.to_s.length > 40
      return false if !@device_session_identifier.nil? && @device_session_identifier.to_s.length < 10
      return false if !@device_session_identifier.nil? && @device_session_identifier !~ Regexp.new(/([a-zA-Z0-9_-])*/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_email_address Value to be assigned
    def customer_email_address=(customer_email_address)
      if customer_email_address.nil?
        fail ArgumentError, 'customer_email_address cannot be nil'
      end

      if customer_email_address.to_s.length > 254
        fail ArgumentError, 'invalid value for "customer_email_address", the character length must be smaller than or equal to 254.'
      end

      @customer_email_address = customer_email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_method Value to be assigned
    def shipping_method=(shipping_method)
      if shipping_method.nil?
        fail ArgumentError, 'shipping_method cannot be nil'
      end

      if shipping_method.to_s.length > 200
        fail ArgumentError, 'invalid value for "shipping_method", the character length must be smaller than or equal to 200.'
      end

      @shipping_method = shipping_method
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_merchant_reference Value to be assigned
    def invoice_merchant_reference=(invoice_merchant_reference)
      if invoice_merchant_reference.nil?
        fail ArgumentError, 'invoice_merchant_reference cannot be nil'
      end

      if invoice_merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if invoice_merchant_reference !~ pattern
        fail ArgumentError, "invalid value for \"invoice_merchant_reference\", must conform to the pattern #{pattern}."
      end

      @invoice_merchant_reference = invoice_merchant_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] success_url Value to be assigned
    def success_url=(success_url)
      if success_url.nil?
        fail ArgumentError, 'success_url cannot be nil'
      end

      if success_url.to_s.length > 2000
        fail ArgumentError, 'invalid value for "success_url", the character length must be smaller than or equal to 2000.'
      end

      if success_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "success_url", the character length must be great than or equal to 9.'
      end

      @success_url = success_url
    end

    # Custom attribute writer method with validation
    # @param [Object] line_items Value to be assigned
    def line_items=(line_items)
      if line_items.nil?
        fail ArgumentError, 'line_items cannot be nil'
      end

      @line_items = line_items
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_reference Value to be assigned
    def merchant_reference=(merchant_reference)
      if merchant_reference.nil?
        fail ArgumentError, 'merchant_reference cannot be nil'
      end

      if merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "merchant_reference", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if merchant_reference !~ pattern
        fail ArgumentError, "invalid value for \"merchant_reference\", must conform to the pattern #{pattern}."
      end

      @merchant_reference = merchant_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] failed_url Value to be assigned
    def failed_url=(failed_url)
      if failed_url.nil?
        fail ArgumentError, 'failed_url cannot be nil'
      end

      if failed_url.to_s.length > 2000
        fail ArgumentError, 'invalid value for "failed_url", the character length must be smaller than or equal to 2000.'
      end

      if failed_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "failed_url", the character length must be great than or equal to 9.'
      end

      @failed_url = failed_url
    end

    # Custom attribute writer method with validation
    # @param [Object] device_session_identifier Value to be assigned
    def device_session_identifier=(device_session_identifier)
      if device_session_identifier.nil?
        fail ArgumentError, 'device_session_identifier cannot be nil'
      end

      if device_session_identifier.to_s.length > 40
        fail ArgumentError, 'invalid value for "device_session_identifier", the character length must be smaller than or equal to 40.'
      end

      if device_session_identifier.to_s.length < 10
        fail ArgumentError, 'invalid value for "device_session_identifier", the character length must be great than or equal to 10.'
      end

      pattern = Regexp.new(/([a-zA-Z0-9_-])*/)
      if device_session_identifier !~ pattern
        fail ArgumentError, "invalid value for \"device_session_identifier\", must conform to the pattern #{pattern}."
      end

      @device_session_identifier = device_session_identifier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customer_email_address == o.customer_email_address &&
          shipping_method == o.shipping_method &&
          invoice_merchant_reference == o.invoice_merchant_reference &&
          success_url == o.success_url &&
          time_zone == o.time_zone &&
          language == o.language &&
          tokenization_mode == o.tokenization_mode &&
          allowed_payment_method_brands == o.allowed_payment_method_brands &&
          completion_behavior == o.completion_behavior &&
          token == o.token &&
          line_items == o.line_items &&
          meta_data == o.meta_data &&
          customer_id == o.customer_id &&
          shipping_address == o.shipping_address &&
          currency == o.currency &&
          billing_address == o.billing_address &&
          merchant_reference == o.merchant_reference &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          failed_url == o.failed_url &&
          charge_retry_enabled == o.charge_retry_enabled &&
          emails_disabled == o.emails_disabled &&
          environment == o.environment &&
          environment_selection_strategy == o.environment_selection_strategy &&
          device_session_identifier == o.device_session_identifier &&
          auto_confirmation_enabled == o.auto_confirmation_enabled &&
          space_view_id == o.space_view_id &&
          customers_presence == o.customers_presence
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [customer_email_address, shipping_method, invoice_merchant_reference, success_url, time_zone, language, tokenization_mode, allowed_payment_method_brands, completion_behavior, token, line_items, meta_data, customer_id, shipping_address, currency, billing_address, merchant_reference, allowed_payment_method_configurations, failed_url, charge_retry_enabled, emails_disabled, environment, environment_selection_strategy, device_session_identifier, auto_confirmation_enabled, space_view_id, customers_presence].hash
    end

    # Builds the object from hash
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
