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
  class Transaction
    attr_accessor :parent

    # The total amount that was settled, in the transaction's currency.
    attr_accessor :total_settled_amount

    # Allows to link the transaction to the data collected from the customer's device.
    attr_accessor :device_session_identifier

    # The date and time when the processing of the transaction was started.
    attr_accessor :processing_on

    # The merchant's reference used to identify the invoice.
    attr_accessor :invoice_merchant_reference

    # The language that is linked to the object.
    attr_accessor :language

    # The date and time when the transaction was created.
    attr_accessor :confirmed_on

    # The line items purchased by the customer.
    attr_accessor :line_items

    # The 'Accept Language' header of the customer's web browser.
    attr_accessor :accept_language_header

    # Whether Java is enabled on the customer's web browser.
    attr_accessor :java_enabled

    # The ID of the user the transaction was confirmed by.
    attr_accessor :confirmed_by

    attr_accessor :payment_connector_configuration

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

    # The window width of the customer's web browser.
    attr_accessor :window_width

    # The payment method configurations that can be used to authorize the transaction.
    attr_accessor :allowed_payment_method_configurations

    attr_accessor :group

    # Whether the customer can make further payment attempts if the first one has failed. Default is true.
    attr_accessor :charge_retry_enabled

    # The 'Accept' header of the customer's web browser.
    attr_accessor :accept_header

    # The 'User Agent' header of the customer's web browser.
    attr_accessor :user_agent_header

    # The name of the shipping method used to ship the products.
    attr_accessor :shipping_method

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The URL to redirect the customer back to after they successfully authenticated their payment.
    attr_accessor :success_url

    # The customer's time zone, which affects how dates and times are formatted when communicating with the customer.
    attr_accessor :time_zone

    # The ID of the space view this object is linked to.
    attr_accessor :space_view_id

    # The message that can be displayed to the customer explaining why the transaction failed, in the customer's language.
    attr_accessor :user_failure_message

    attr_accessor :completion_behavior

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The country determined from the IP address of the customer's device.
    attr_accessor :internet_protocol_address_country

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # This date and time when the decision was made as to whether the order should be shipped.
    attr_accessor :delivery_decision_made_on

    attr_accessor :authorization_environment

    # Whether the transaction can be confirmed automatically or whether this must be done explicitly via the API. Default is true.
    attr_accessor :auto_confirmation_enabled

    attr_accessor :failure_reason

    # The total of all fees charged, in the transaction's currency.
    attr_accessor :total_applied_fees

    attr_accessor :customers_presence

    # The date and time when the transaction failed.
    attr_accessor :failed_on

    # The total amount that was refunded, in the transaction's currency.
    attr_accessor :refunded_amount

    # The sum of all line item prices including taxes in the transaction's currency.
    attr_accessor :authorization_amount

    # The screen width of the customer's web browser.
    attr_accessor :screen_width

    attr_accessor :environment_selection_strategy

    # The customer's email address.
    attr_accessor :customer_email_address

    # The window height of the customer's web browser.
    attr_accessor :window_height

    attr_accessor :tokenization_mode

    # The date and time when the transaction must be authorized, otherwise it will canceled.
    attr_accessor :authorization_timeout_on

    # The payment method brands that can be used to authorize the transaction.
    attr_accessor :allowed_payment_method_brands

    # The date and time when the object was created.
    attr_accessor :created_on

    # Allow to store additional information about the object.
    attr_accessor :meta_data

    # Whether email sending is deactivated for the transaction. Default is false.
    attr_accessor :emails_disabled

    attr_accessor :user_interface_type

    # The unique identifier of the customer in the external system.
    attr_accessor :customer_id

    # The three-letter code (ISO 4217 format) of the transaction's currency.
    attr_accessor :currency

    # The merchant's reference used to identify the transaction.
    attr_accessor :merchant_reference

    # The sales channel through which the transaction was placed.
    attr_accessor :authorization_sales_channel

    # The number of years the transaction is kept after its authorization.
    attr_accessor :years_to_keep

    # The total amount that was completed, in the transaction's currency.
    attr_accessor :completed_amount

    # The screen height of the customer's web browser.
    attr_accessor :screen_height

    # The IP address of the customer's device.
    attr_accessor :internet_protocol_address

    attr_accessor :terminal

    # The date and time when the transaction reaches its end of live. No further actions can be carried out at this time.
    attr_accessor :end_of_life

    attr_accessor :token

    attr_accessor :environment

    # The screen color depth of the customer's web browser.
    attr_accessor :screen_color_depth

    # The ID of the user the transaction was created by.
    attr_accessor :created_by

    # The date and time when the transaction was completed.
    attr_accessor :completed_on

    # The date and time when the transaction is completed automatically.
    attr_accessor :completion_timeout_on

    attr_accessor :shipping_address

    attr_accessor :billing_address

    # The date and time when the transaction was authorized.
    attr_accessor :authorized_on

    # The URL to redirect the customer back to after they canceled or failed to authenticated their payment.
    attr_accessor :failed_url

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
        :'parent' => :'parent',
        :'total_settled_amount' => :'totalSettledAmount',
        :'device_session_identifier' => :'deviceSessionIdentifier',
        :'processing_on' => :'processingOn',
        :'invoice_merchant_reference' => :'invoiceMerchantReference',
        :'language' => :'language',
        :'confirmed_on' => :'confirmedOn',
        :'line_items' => :'lineItems',
        :'accept_language_header' => :'acceptLanguageHeader',
        :'java_enabled' => :'javaEnabled',
        :'confirmed_by' => :'confirmedBy',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'id' => :'id',
        :'state' => :'state',
        :'window_width' => :'windowWidth',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'group' => :'group',
        :'charge_retry_enabled' => :'chargeRetryEnabled',
        :'accept_header' => :'acceptHeader',
        :'user_agent_header' => :'userAgentHeader',
        :'shipping_method' => :'shippingMethod',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'success_url' => :'successUrl',
        :'time_zone' => :'timeZone',
        :'space_view_id' => :'spaceViewId',
        :'user_failure_message' => :'userFailureMessage',
        :'completion_behavior' => :'completionBehavior',
        :'version' => :'version',
        :'internet_protocol_address_country' => :'internetProtocolAddressCountry',
        :'linked_space_id' => :'linkedSpaceId',
        :'delivery_decision_made_on' => :'deliveryDecisionMadeOn',
        :'authorization_environment' => :'authorizationEnvironment',
        :'auto_confirmation_enabled' => :'autoConfirmationEnabled',
        :'failure_reason' => :'failureReason',
        :'total_applied_fees' => :'totalAppliedFees',
        :'customers_presence' => :'customersPresence',
        :'failed_on' => :'failedOn',
        :'refunded_amount' => :'refundedAmount',
        :'authorization_amount' => :'authorizationAmount',
        :'screen_width' => :'screenWidth',
        :'environment_selection_strategy' => :'environmentSelectionStrategy',
        :'customer_email_address' => :'customerEmailAddress',
        :'window_height' => :'windowHeight',
        :'tokenization_mode' => :'tokenizationMode',
        :'authorization_timeout_on' => :'authorizationTimeoutOn',
        :'allowed_payment_method_brands' => :'allowedPaymentMethodBrands',
        :'created_on' => :'createdOn',
        :'meta_data' => :'metaData',
        :'emails_disabled' => :'emailsDisabled',
        :'user_interface_type' => :'userInterfaceType',
        :'customer_id' => :'customerId',
        :'currency' => :'currency',
        :'merchant_reference' => :'merchantReference',
        :'authorization_sales_channel' => :'authorizationSalesChannel',
        :'years_to_keep' => :'yearsToKeep',
        :'completed_amount' => :'completedAmount',
        :'screen_height' => :'screenHeight',
        :'internet_protocol_address' => :'internetProtocolAddress',
        :'terminal' => :'terminal',
        :'end_of_life' => :'endOfLife',
        :'token' => :'token',
        :'environment' => :'environment',
        :'screen_color_depth' => :'screenColorDepth',
        :'created_by' => :'createdBy',
        :'completed_on' => :'completedOn',
        :'completion_timeout_on' => :'completionTimeoutOn',
        :'shipping_address' => :'shippingAddress',
        :'billing_address' => :'billingAddress',
        :'authorized_on' => :'authorizedOn',
        :'failed_url' => :'failedUrl'
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
        :'parent' => :'Transaction',
        :'total_settled_amount' => :'Float',
        :'device_session_identifier' => :'String',
        :'processing_on' => :'Time',
        :'invoice_merchant_reference' => :'String',
        :'language' => :'String',
        :'confirmed_on' => :'Time',
        :'line_items' => :'Array<LineItem>',
        :'accept_language_header' => :'String',
        :'java_enabled' => :'Boolean',
        :'confirmed_by' => :'Integer',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'id' => :'Integer',
        :'state' => :'TransactionState',
        :'window_width' => :'String',
        :'allowed_payment_method_configurations' => :'Array<Integer>',
        :'group' => :'TransactionGroup',
        :'charge_retry_enabled' => :'Boolean',
        :'accept_header' => :'String',
        :'user_agent_header' => :'String',
        :'shipping_method' => :'String',
        :'planned_purge_date' => :'Time',
        :'success_url' => :'String',
        :'time_zone' => :'String',
        :'space_view_id' => :'Integer',
        :'user_failure_message' => :'String',
        :'completion_behavior' => :'TransactionCompletionBehavior',
        :'version' => :'Integer',
        :'internet_protocol_address_country' => :'String',
        :'linked_space_id' => :'Integer',
        :'delivery_decision_made_on' => :'Time',
        :'authorization_environment' => :'ChargeAttemptEnvironment',
        :'auto_confirmation_enabled' => :'Boolean',
        :'failure_reason' => :'FailureReason',
        :'total_applied_fees' => :'Float',
        :'customers_presence' => :'CustomersPresence',
        :'failed_on' => :'Time',
        :'refunded_amount' => :'Float',
        :'authorization_amount' => :'Float',
        :'screen_width' => :'String',
        :'environment_selection_strategy' => :'TransactionEnvironmentSelectionStrategy',
        :'customer_email_address' => :'String',
        :'window_height' => :'String',
        :'tokenization_mode' => :'TokenizationMode',
        :'authorization_timeout_on' => :'Time',
        :'allowed_payment_method_brands' => :'Array<Integer>',
        :'created_on' => :'Time',
        :'meta_data' => :'Hash<String, String>',
        :'emails_disabled' => :'Boolean',
        :'user_interface_type' => :'TransactionUserInterfaceType',
        :'customer_id' => :'String',
        :'currency' => :'String',
        :'merchant_reference' => :'String',
        :'authorization_sales_channel' => :'Integer',
        :'years_to_keep' => :'Integer',
        :'completed_amount' => :'Float',
        :'screen_height' => :'String',
        :'internet_protocol_address' => :'String',
        :'terminal' => :'PaymentTerminal',
        :'end_of_life' => :'Time',
        :'token' => :'Token',
        :'environment' => :'Environment',
        :'screen_color_depth' => :'String',
        :'created_by' => :'Integer',
        :'completed_on' => :'Time',
        :'completion_timeout_on' => :'Time',
        :'shipping_address' => :'Address',
        :'billing_address' => :'Address',
        :'authorized_on' => :'Time',
        :'failed_url' => :'String'
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
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::Transaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::Transaction`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'total_settled_amount')
        self.total_settled_amount = attributes[:'total_settled_amount']
      end

      if attributes.key?(:'device_session_identifier')
        self.device_session_identifier = attributes[:'device_session_identifier']
      end

      if attributes.key?(:'processing_on')
        self.processing_on = attributes[:'processing_on']
      end

      if attributes.key?(:'invoice_merchant_reference')
        self.invoice_merchant_reference = attributes[:'invoice_merchant_reference']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'confirmed_on')
        self.confirmed_on = attributes[:'confirmed_on']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'accept_language_header')
        self.accept_language_header = attributes[:'accept_language_header']
      end

      if attributes.key?(:'java_enabled')
        self.java_enabled = attributes[:'java_enabled']
      end

      if attributes.key?(:'confirmed_by')
        self.confirmed_by = attributes[:'confirmed_by']
      end

      if attributes.key?(:'payment_connector_configuration')
        self.payment_connector_configuration = attributes[:'payment_connector_configuration']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'window_width')
        self.window_width = attributes[:'window_width']
      end

      if attributes.key?(:'allowed_payment_method_configurations')
        if (value = attributes[:'allowed_payment_method_configurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'charge_retry_enabled')
        self.charge_retry_enabled = attributes[:'charge_retry_enabled']
      end

      if attributes.key?(:'accept_header')
        self.accept_header = attributes[:'accept_header']
      end

      if attributes.key?(:'user_agent_header')
        self.user_agent_header = attributes[:'user_agent_header']
      end

      if attributes.key?(:'shipping_method')
        self.shipping_method = attributes[:'shipping_method']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'space_view_id')
        self.space_view_id = attributes[:'space_view_id']
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

      if attributes.key?(:'internet_protocol_address_country')
        self.internet_protocol_address_country = attributes[:'internet_protocol_address_country']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'delivery_decision_made_on')
        self.delivery_decision_made_on = attributes[:'delivery_decision_made_on']
      end

      if attributes.key?(:'authorization_environment')
        self.authorization_environment = attributes[:'authorization_environment']
      end

      if attributes.key?(:'auto_confirmation_enabled')
        self.auto_confirmation_enabled = attributes[:'auto_confirmation_enabled']
      end

      if attributes.key?(:'failure_reason')
        self.failure_reason = attributes[:'failure_reason']
      end

      if attributes.key?(:'total_applied_fees')
        self.total_applied_fees = attributes[:'total_applied_fees']
      end

      if attributes.key?(:'customers_presence')
        self.customers_presence = attributes[:'customers_presence']
      end

      if attributes.key?(:'failed_on')
        self.failed_on = attributes[:'failed_on']
      end

      if attributes.key?(:'refunded_amount')
        self.refunded_amount = attributes[:'refunded_amount']
      end

      if attributes.key?(:'authorization_amount')
        self.authorization_amount = attributes[:'authorization_amount']
      end

      if attributes.key?(:'screen_width')
        self.screen_width = attributes[:'screen_width']
      end

      if attributes.key?(:'environment_selection_strategy')
        self.environment_selection_strategy = attributes[:'environment_selection_strategy']
      end

      if attributes.key?(:'customer_email_address')
        self.customer_email_address = attributes[:'customer_email_address']
      end

      if attributes.key?(:'window_height')
        self.window_height = attributes[:'window_height']
      end

      if attributes.key?(:'tokenization_mode')
        self.tokenization_mode = attributes[:'tokenization_mode']
      end

      if attributes.key?(:'authorization_timeout_on')
        self.authorization_timeout_on = attributes[:'authorization_timeout_on']
      end

      if attributes.key?(:'allowed_payment_method_brands')
        if (value = attributes[:'allowed_payment_method_brands']).is_a?(Array)
          self.allowed_payment_method_brands = value
        end
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'meta_data')
        if (value = attributes[:'meta_data']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.key?(:'emails_disabled')
        self.emails_disabled = attributes[:'emails_disabled']
      end

      if attributes.key?(:'user_interface_type')
        self.user_interface_type = attributes[:'user_interface_type']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'merchant_reference')
        self.merchant_reference = attributes[:'merchant_reference']
      end

      if attributes.key?(:'authorization_sales_channel')
        self.authorization_sales_channel = attributes[:'authorization_sales_channel']
      end

      if attributes.key?(:'years_to_keep')
        self.years_to_keep = attributes[:'years_to_keep']
      end

      if attributes.key?(:'completed_amount')
        self.completed_amount = attributes[:'completed_amount']
      end

      if attributes.key?(:'screen_height')
        self.screen_height = attributes[:'screen_height']
      end

      if attributes.key?(:'internet_protocol_address')
        self.internet_protocol_address = attributes[:'internet_protocol_address']
      end

      if attributes.key?(:'terminal')
        self.terminal = attributes[:'terminal']
      end

      if attributes.key?(:'end_of_life')
        self.end_of_life = attributes[:'end_of_life']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'screen_color_depth')
        self.screen_color_depth = attributes[:'screen_color_depth']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'completed_on')
        self.completed_on = attributes[:'completed_on']
      end

      if attributes.key?(:'completion_timeout_on')
        self.completion_timeout_on = attributes[:'completion_timeout_on']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'authorized_on')
        self.authorized_on = attributes[:'authorized_on']
      end

      if attributes.key?(:'failed_url')
        self.failed_url = attributes[:'failed_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
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

      if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@invoice_merchant_reference.nil? && @invoice_merchant_reference !~ pattern
        invalid_properties.push("invalid value for \"invoice_merchant_reference\", must conform to the pattern #{pattern}.")
      end

      if !@shipping_method.nil? && @shipping_method.to_s.length > 200
        invalid_properties.push('invalid value for "shipping_method", the character length must be smaller than or equal to 200.')
      end

      if !@success_url.nil? && @success_url.to_s.length > 2000
        invalid_properties.push('invalid value for "success_url", the character length must be smaller than or equal to 2000.')
      end

      if !@success_url.nil? && @success_url.to_s.length < 9
        invalid_properties.push('invalid value for "success_url", the character length must be great than or equal to 9.')
      end

      if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
        invalid_properties.push('invalid value for "customer_email_address", the character length must be smaller than or equal to 254.')
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@device_session_identifier.nil? && @device_session_identifier.to_s.length > 40
      return false if !@device_session_identifier.nil? && @device_session_identifier.to_s.length < 10
      return false if !@device_session_identifier.nil? && @device_session_identifier !~ Regexp.new(/([a-zA-Z0-9_-])*/)
      return false if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
      return false if !@invoice_merchant_reference.nil? && @invoice_merchant_reference !~ Regexp.new(/[	\x20-\x7e]*/)
      return false if !@shipping_method.nil? && @shipping_method.to_s.length > 200
      return false if !@success_url.nil? && @success_url.to_s.length > 2000
      return false if !@success_url.nil? && @success_url.to_s.length < 9
      return false if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
      return false if !@merchant_reference.nil? && @merchant_reference !~ Regexp.new(/[	\x20-\x7e]*/)
      return false if !@failed_url.nil? && @failed_url.to_s.length > 2000
      return false if !@failed_url.nil? && @failed_url.to_s.length < 9
      true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent == o.parent &&
          total_settled_amount == o.total_settled_amount &&
          device_session_identifier == o.device_session_identifier &&
          processing_on == o.processing_on &&
          invoice_merchant_reference == o.invoice_merchant_reference &&
          language == o.language &&
          confirmed_on == o.confirmed_on &&
          line_items == o.line_items &&
          accept_language_header == o.accept_language_header &&
          java_enabled == o.java_enabled &&
          confirmed_by == o.confirmed_by &&
          payment_connector_configuration == o.payment_connector_configuration &&
          id == o.id &&
          state == o.state &&
          window_width == o.window_width &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          group == o.group &&
          charge_retry_enabled == o.charge_retry_enabled &&
          accept_header == o.accept_header &&
          user_agent_header == o.user_agent_header &&
          shipping_method == o.shipping_method &&
          planned_purge_date == o.planned_purge_date &&
          success_url == o.success_url &&
          time_zone == o.time_zone &&
          space_view_id == o.space_view_id &&
          user_failure_message == o.user_failure_message &&
          completion_behavior == o.completion_behavior &&
          version == o.version &&
          internet_protocol_address_country == o.internet_protocol_address_country &&
          linked_space_id == o.linked_space_id &&
          delivery_decision_made_on == o.delivery_decision_made_on &&
          authorization_environment == o.authorization_environment &&
          auto_confirmation_enabled == o.auto_confirmation_enabled &&
          failure_reason == o.failure_reason &&
          total_applied_fees == o.total_applied_fees &&
          customers_presence == o.customers_presence &&
          failed_on == o.failed_on &&
          refunded_amount == o.refunded_amount &&
          authorization_amount == o.authorization_amount &&
          screen_width == o.screen_width &&
          environment_selection_strategy == o.environment_selection_strategy &&
          customer_email_address == o.customer_email_address &&
          window_height == o.window_height &&
          tokenization_mode == o.tokenization_mode &&
          authorization_timeout_on == o.authorization_timeout_on &&
          allowed_payment_method_brands == o.allowed_payment_method_brands &&
          created_on == o.created_on &&
          meta_data == o.meta_data &&
          emails_disabled == o.emails_disabled &&
          user_interface_type == o.user_interface_type &&
          customer_id == o.customer_id &&
          currency == o.currency &&
          merchant_reference == o.merchant_reference &&
          authorization_sales_channel == o.authorization_sales_channel &&
          years_to_keep == o.years_to_keep &&
          completed_amount == o.completed_amount &&
          screen_height == o.screen_height &&
          internet_protocol_address == o.internet_protocol_address &&
          terminal == o.terminal &&
          end_of_life == o.end_of_life &&
          token == o.token &&
          environment == o.environment &&
          screen_color_depth == o.screen_color_depth &&
          created_by == o.created_by &&
          completed_on == o.completed_on &&
          completion_timeout_on == o.completion_timeout_on &&
          shipping_address == o.shipping_address &&
          billing_address == o.billing_address &&
          authorized_on == o.authorized_on &&
          failed_url == o.failed_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [parent, total_settled_amount, device_session_identifier, processing_on, invoice_merchant_reference, language, confirmed_on, line_items, accept_language_header, java_enabled, confirmed_by, payment_connector_configuration, id, state, window_width, allowed_payment_method_configurations, group, charge_retry_enabled, accept_header, user_agent_header, shipping_method, planned_purge_date, success_url, time_zone, space_view_id, user_failure_message, completion_behavior, version, internet_protocol_address_country, linked_space_id, delivery_decision_made_on, authorization_environment, auto_confirmation_enabled, failure_reason, total_applied_fees, customers_presence, failed_on, refunded_amount, authorization_amount, screen_width, environment_selection_strategy, customer_email_address, window_height, tokenization_mode, authorization_timeout_on, allowed_payment_method_brands, created_on, meta_data, emails_disabled, user_interface_type, customer_id, currency, merchant_reference, authorization_sales_channel, years_to_keep, completed_amount, screen_height, internet_protocol_address, terminal, end_of_life, token, environment, screen_color_depth, created_by, completed_on, completion_timeout_on, shipping_address, billing_address, authorized_on, failed_url].hash
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
