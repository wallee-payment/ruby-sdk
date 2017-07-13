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
  class TransactionCreate
    # 
    attr_accessor :accept_header

    # 
    attr_accessor :allowed_payment_method_brands

    # 
    attr_accessor :allowed_payment_method_configurations

    # 
    attr_accessor :authorization_amount

    # 
    attr_accessor :authorized_on

    # 
    attr_accessor :billing_address

    # When the charging of the customer fails we can retry the charging. This implies that we redirect the user back to the payment page which allows the customer to retry. By default we will retry.
    attr_accessor :charge_retry_enabled

    # 
    attr_accessor :completed_on

    # 
    attr_accessor :completion_timeout_on

    # 
    attr_accessor :confirmed_by

    # 
    attr_accessor :confirmed_on

    # 
    attr_accessor :created_by

    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # 
    attr_accessor :currency

    # The customer email address is the email address of the customer. If no email address is used provided on the shipping or billing address this address is used.
    attr_accessor :customer_email_address

    # 
    attr_accessor :customer_id

    # 
    attr_accessor :customers_presence

    # The transaction's end of life indicates the date from which on no operation can be carried out anymore.
    attr_accessor :end_of_life

    # 
    attr_accessor :failed_on

    # The user will be redirected to failed URL when the transaction could not be authorized or completed. In case no failed URL is specified a default failed page will be displayed.
    attr_accessor :failed_url

    # 
    attr_accessor :group

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :internet_protocol_address

    # 
    attr_accessor :internet_protocol_address_country

    # 
    attr_accessor :invoice_merchant_reference

    # 
    attr_accessor :language

    # 
    attr_accessor :line_items

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :merchant_reference

    # Meta data allow to store additional data along the object.
    attr_accessor :meta_data

    # 
    attr_accessor :payment_connector_configuration

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :processing_on

    # The refunded amount is the total amount which has been refunded so far.
    attr_accessor :refunded_amount

    # 
    attr_accessor :shipping_address

    # 
    attr_accessor :shipping_method

    # 
    attr_accessor :space_view_id

    # 
    attr_accessor :state

    # The user will be redirected to success URL when the transaction could be authorized or completed. In case no success URL is specified a default success page will be displayed.
    attr_accessor :success_url

    # 
    attr_accessor :token

    # 
    attr_accessor :user_agent_header

    # The user interface type defines through which user interface the transaction has been processed resp. created.
    attr_accessor :user_interface_type

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accept_header' => :'acceptHeader',
        :'allowed_payment_method_brands' => :'allowedPaymentMethodBrands',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'authorization_amount' => :'authorizationAmount',
        :'authorized_on' => :'authorizedOn',
        :'billing_address' => :'billingAddress',
        :'charge_retry_enabled' => :'chargeRetryEnabled',
        :'completed_on' => :'completedOn',
        :'completion_timeout_on' => :'completionTimeoutOn',
        :'confirmed_by' => :'confirmedBy',
        :'confirmed_on' => :'confirmedOn',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'currency' => :'currency',
        :'customer_email_address' => :'customerEmailAddress',
        :'customer_id' => :'customerId',
        :'customers_presence' => :'customersPresence',
        :'end_of_life' => :'endOfLife',
        :'failed_on' => :'failedOn',
        :'failed_url' => :'failedUrl',
        :'group' => :'group',
        :'id' => :'id',
        :'internet_protocol_address' => :'internetProtocolAddress',
        :'internet_protocol_address_country' => :'internetProtocolAddressCountry',
        :'invoice_merchant_reference' => :'invoiceMerchantReference',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'linked_space_id' => :'linkedSpaceId',
        :'merchant_reference' => :'merchantReference',
        :'meta_data' => :'metaData',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'processing_on' => :'processingOn',
        :'refunded_amount' => :'refundedAmount',
        :'shipping_address' => :'shippingAddress',
        :'shipping_method' => :'shippingMethod',
        :'space_view_id' => :'spaceViewId',
        :'state' => :'state',
        :'success_url' => :'successUrl',
        :'token' => :'token',
        :'user_agent_header' => :'userAgentHeader',
        :'user_interface_type' => :'userInterfaceType',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'accept_header' => :'String',
        :'allowed_payment_method_brands' => :'Array<PaymentMethodBrand>',
        :'allowed_payment_method_configurations' => :'Array<Integer>',
        :'authorization_amount' => :'Float',
        :'authorized_on' => :'DateTime',
        :'billing_address' => :'AddressCreate',
        :'charge_retry_enabled' => :'BOOLEAN',
        :'completed_on' => :'DateTime',
        :'completion_timeout_on' => :'DateTime',
        :'confirmed_by' => :'Integer',
        :'confirmed_on' => :'DateTime',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'currency' => :'String',
        :'customer_email_address' => :'String',
        :'customer_id' => :'String',
        :'customers_presence' => :'CustomersPresence',
        :'end_of_life' => :'DateTime',
        :'failed_on' => :'DateTime',
        :'failed_url' => :'String',
        :'group' => :'TransactionGroup',
        :'id' => :'Integer',
        :'internet_protocol_address' => :'String',
        :'internet_protocol_address_country' => :'String',
        :'invoice_merchant_reference' => :'String',
        :'language' => :'String',
        :'line_items' => :'Array<LineItemCreate>',
        :'linked_space_id' => :'Integer',
        :'merchant_reference' => :'String',
        :'meta_data' => :'Hash<String, String>',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'planned_purge_date' => :'DateTime',
        :'processing_on' => :'DateTime',
        :'refunded_amount' => :'Float',
        :'shipping_address' => :'AddressCreate',
        :'shipping_method' => :'String',
        :'space_view_id' => :'Integer',
        :'state' => :'TransactionState',
        :'success_url' => :'String',
        :'token' => :'Integer',
        :'user_agent_header' => :'String',
        :'user_interface_type' => :'TransactionUserInterfaceType',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'acceptHeader')
        self.accept_header = attributes[:'acceptHeader']
      end

      if attributes.has_key?(:'allowedPaymentMethodBrands')
        if (value = attributes[:'allowedPaymentMethodBrands']).is_a?(Array)
          self.allowed_payment_method_brands = value
        end
      end

      if attributes.has_key?(:'allowedPaymentMethodConfigurations')
        if (value = attributes[:'allowedPaymentMethodConfigurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'authorizationAmount')
        self.authorization_amount = attributes[:'authorizationAmount']
      end

      if attributes.has_key?(:'authorizedOn')
        self.authorized_on = attributes[:'authorizedOn']
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'chargeRetryEnabled')
        self.charge_retry_enabled = attributes[:'chargeRetryEnabled']
      end

      if attributes.has_key?(:'completedOn')
        self.completed_on = attributes[:'completedOn']
      end

      if attributes.has_key?(:'completionTimeoutOn')
        self.completion_timeout_on = attributes[:'completionTimeoutOn']
      end

      if attributes.has_key?(:'confirmedBy')
        self.confirmed_by = attributes[:'confirmedBy']
      end

      if attributes.has_key?(:'confirmedOn')
        self.confirmed_on = attributes[:'confirmedOn']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'customerEmailAddress')
        self.customer_email_address = attributes[:'customerEmailAddress']
      end

      if attributes.has_key?(:'customerId')
        self.customer_id = attributes[:'customerId']
      end

      if attributes.has_key?(:'customersPresence')
        self.customers_presence = attributes[:'customersPresence']
      end

      if attributes.has_key?(:'endOfLife')
        self.end_of_life = attributes[:'endOfLife']
      end

      if attributes.has_key?(:'failedOn')
        self.failed_on = attributes[:'failedOn']
      end

      if attributes.has_key?(:'failedUrl')
        self.failed_url = attributes[:'failedUrl']
      end

      if attributes.has_key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'internetProtocolAddress')
        self.internet_protocol_address = attributes[:'internetProtocolAddress']
      end

      if attributes.has_key?(:'internetProtocolAddressCountry')
        self.internet_protocol_address_country = attributes[:'internetProtocolAddressCountry']
      end

      if attributes.has_key?(:'invoiceMerchantReference')
        self.invoice_merchant_reference = attributes[:'invoiceMerchantReference']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'lineItems')
        if (value = attributes[:'lineItems']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'merchantReference')
        self.merchant_reference = attributes[:'merchantReference']
      end

      if attributes.has_key?(:'metaData')
        if (value = attributes[:'metaData']).is_a?(Array)
          self.meta_data = value
        end
      end

      if attributes.has_key?(:'paymentConnectorConfiguration')
        self.payment_connector_configuration = attributes[:'paymentConnectorConfiguration']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'processingOn')
        self.processing_on = attributes[:'processingOn']
      end

      if attributes.has_key?(:'refundedAmount')
        self.refunded_amount = attributes[:'refundedAmount']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'shippingMethod')
        self.shipping_method = attributes[:'shippingMethod']
      end

      if attributes.has_key?(:'spaceViewId')
        self.space_view_id = attributes[:'spaceViewId']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'successUrl')
        self.success_url = attributes[:'successUrl']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'userAgentHeader')
        self.user_agent_header = attributes[:'userAgentHeader']
      end

      if attributes.has_key?(:'userInterfaceType')
        self.user_interface_type = attributes[:'userInterfaceType']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @customers_presence.nil?
        invalid_properties.push("invalid value for 'customers_presence', customers_presence cannot be nil.")
      end

      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @line_items.nil?
        invalid_properties.push("invalid value for 'line_items', line_items cannot be nil.")
      end

      if @version.nil?
        invalid_properties.push("invalid value for 'version', version cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @customers_presence.nil?
      return false if @id.nil?
      return false if @line_items.nil?
      return false if @version.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accept_header == o.accept_header &&
          allowed_payment_method_brands == o.allowed_payment_method_brands &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          authorization_amount == o.authorization_amount &&
          authorized_on == o.authorized_on &&
          billing_address == o.billing_address &&
          charge_retry_enabled == o.charge_retry_enabled &&
          completed_on == o.completed_on &&
          completion_timeout_on == o.completion_timeout_on &&
          confirmed_by == o.confirmed_by &&
          confirmed_on == o.confirmed_on &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          currency == o.currency &&
          customer_email_address == o.customer_email_address &&
          customer_id == o.customer_id &&
          customers_presence == o.customers_presence &&
          end_of_life == o.end_of_life &&
          failed_on == o.failed_on &&
          failed_url == o.failed_url &&
          group == o.group &&
          id == o.id &&
          internet_protocol_address == o.internet_protocol_address &&
          internet_protocol_address_country == o.internet_protocol_address_country &&
          invoice_merchant_reference == o.invoice_merchant_reference &&
          language == o.language &&
          line_items == o.line_items &&
          linked_space_id == o.linked_space_id &&
          merchant_reference == o.merchant_reference &&
          meta_data == o.meta_data &&
          payment_connector_configuration == o.payment_connector_configuration &&
          planned_purge_date == o.planned_purge_date &&
          processing_on == o.processing_on &&
          refunded_amount == o.refunded_amount &&
          shipping_address == o.shipping_address &&
          shipping_method == o.shipping_method &&
          space_view_id == o.space_view_id &&
          state == o.state &&
          success_url == o.success_url &&
          token == o.token &&
          user_agent_header == o.user_agent_header &&
          user_interface_type == o.user_interface_type &&
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
      [accept_header, allowed_payment_method_brands, allowed_payment_method_configurations, authorization_amount, authorized_on, billing_address, charge_retry_enabled, completed_on, completion_timeout_on, confirmed_by, confirmed_on, created_by, created_on, currency, customer_email_address, customer_id, customers_presence, end_of_life, failed_on, failed_url, group, id, internet_protocol_address, internet_protocol_address_country, invoice_merchant_reference, language, line_items, linked_space_id, merchant_reference, meta_data, payment_connector_configuration, planned_purge_date, processing_on, refunded_amount, shipping_address, shipping_method, space_view_id, state, success_url, token, user_agent_header, user_interface_type, version].hash
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
