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
  class Transaction
    # 
    attr_accessor :accept_header

    # The accept language contains the header which indicates the language preferences of the buyer.
    attr_accessor :accept_language_header

    # 
    attr_accessor :allowed_payment_method_brands

    # 
    attr_accessor :allowed_payment_method_configurations

    # 
    attr_accessor :authorization_amount

    # The environment in which this transaction was successfully authorized.
    attr_accessor :authorization_environment

    # The sales channel through which the transaction was placed.
    attr_accessor :authorization_sales_channel

    # This is the time on which the transaction will be timed out when it is not at least authorized. The timeout time may change over time.
    attr_accessor :authorization_timeout_on

    # 
    attr_accessor :authorized_on

    # When auto confirmation is enabled the transaction can be confirmed by the user and does not require an explicit confirmation through the web service API.
    attr_accessor :auto_confirmation_enabled

    # 
    attr_accessor :billing_address

    # When the charging of the customer fails we can retry the charging. This implies that we redirect the user back to the payment page which allows the customer to retry. By default we will retry.
    attr_accessor :charge_retry_enabled

    # The completed amount is the total amount which has been captured so far.
    attr_accessor :completed_amount

    # 
    attr_accessor :completed_on

    # The completion behavior controls when the transaction is completed.
    attr_accessor :completion_behavior

    # 
    attr_accessor :completion_timeout_on

    # 
    attr_accessor :confirmed_by

    # 
    attr_accessor :confirmed_on

    # 
    attr_accessor :created_by

    # The date and time when the object was created.
    attr_accessor :created_on

    # 
    attr_accessor :currency

    # The customer email address is the email address of the customer. If no email address is provided on the shipping or billing address this address is used.
    attr_accessor :customer_email_address

    # 
    attr_accessor :customer_id

    # The customer's presence indicates what kind of authentication method was finally used during authorization of the transaction. If no value is provided, 'Virtually Present' is used by default.
    attr_accessor :customers_presence

    # This date indicates when the decision has been made if a transaction should be delivered or not.
    attr_accessor :delivery_decision_made_on

    # The device session identifier links the transaction with the session identifier provided in the URL of the device data JavaScript. This allows to link the transaction with the collected device data of the buyer.
    attr_accessor :device_session_identifier

    # Flag indicating whether email sending is disabled for this particular transaction. Defaults to false.
    attr_accessor :emails_disabled

    # The transaction's end of life indicates the date from which on no operation can be carried out anymore.
    attr_accessor :end_of_life

    # 
    attr_accessor :environment

    # The environment selection strategy determines how the environment (test or production) for processing the transaction is selected.
    attr_accessor :environment_selection_strategy

    # 
    attr_accessor :failed_on

    # The user will be redirected to failed URL when the transaction could not be authorized or completed. In case no failed URL is specified a default failed page will be displayed.
    attr_accessor :failed_url

    # The failure reason describes why the transaction failed. This is only provided when the transaction is marked as failed.
    attr_accessor :failure_reason

    # 
    attr_accessor :group

    # A unique identifier for the object.
    attr_accessor :id

    # The Internet Protocol (IP) address identifies the device of the buyer.
    attr_accessor :internet_protocol_address

    # 
    attr_accessor :internet_protocol_address_country

    # 
    attr_accessor :invoice_merchant_reference

    # 
    attr_accessor :java_enabled

    # The language that is linked to the object.
    attr_accessor :language

    # 
    attr_accessor :line_items

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :merchant_reference

    # Allow to store additional information about the object.
    attr_accessor :meta_data

    # 
    attr_accessor :parent

    # 
    attr_accessor :payment_connector_configuration

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :processing_on

    # The refunded amount is the total amount which has been refunded so far.
    attr_accessor :refunded_amount

    # 
    attr_accessor :screen_color_depth

    # 
    attr_accessor :screen_height

    # 
    attr_accessor :screen_width

    # 
    attr_accessor :shipping_address

    # 
    attr_accessor :shipping_method

    # 
    attr_accessor :space_view_id

    # The object's current state.
    attr_accessor :state

    # The user will be redirected to success URL when the transaction could be authorized or completed. In case no success URL is specified a default success page will be displayed.
    attr_accessor :success_url

    # The terminal on which the payment was processed.
    attr_accessor :terminal

    # The time zone defines in which time zone the customer is located in. The time zone may affects how dates are formatted when interacting with the customer.
    attr_accessor :time_zone

    # 
    attr_accessor :token

    # The tokenization mode controls if and how the tokenization of payment information is applied to the transaction.
    attr_accessor :tokenization_mode

    # The total applied fees is the sum of all fees that have been applied so far.
    attr_accessor :total_applied_fees

    # The total settled amount is the total amount which has been settled so far.
    attr_accessor :total_settled_amount

    # The user agent header provides the exact string which contains the user agent of the buyer.
    attr_accessor :user_agent_header

    # The failure message describes for an end user why the transaction is failed in the language of the user. This is only provided when the transaction is marked as failed.
    attr_accessor :user_failure_message

    # The user interface type defines through which user interface the transaction has been processed resp. created.
    attr_accessor :user_interface_type

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # 
    attr_accessor :window_height

    # 
    attr_accessor :window_width

    # The number of years the transaction will be stored after it has been authorized.
    attr_accessor :years_to_keep

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accept_header' => :'acceptHeader',
        :'accept_language_header' => :'acceptLanguageHeader',
        :'allowed_payment_method_brands' => :'allowedPaymentMethodBrands',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'authorization_amount' => :'authorizationAmount',
        :'authorization_environment' => :'authorizationEnvironment',
        :'authorization_sales_channel' => :'authorizationSalesChannel',
        :'authorization_timeout_on' => :'authorizationTimeoutOn',
        :'authorized_on' => :'authorizedOn',
        :'auto_confirmation_enabled' => :'autoConfirmationEnabled',
        :'billing_address' => :'billingAddress',
        :'charge_retry_enabled' => :'chargeRetryEnabled',
        :'completed_amount' => :'completedAmount',
        :'completed_on' => :'completedOn',
        :'completion_behavior' => :'completionBehavior',
        :'completion_timeout_on' => :'completionTimeoutOn',
        :'confirmed_by' => :'confirmedBy',
        :'confirmed_on' => :'confirmedOn',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'currency' => :'currency',
        :'customer_email_address' => :'customerEmailAddress',
        :'customer_id' => :'customerId',
        :'customers_presence' => :'customersPresence',
        :'delivery_decision_made_on' => :'deliveryDecisionMadeOn',
        :'device_session_identifier' => :'deviceSessionIdentifier',
        :'emails_disabled' => :'emailsDisabled',
        :'end_of_life' => :'endOfLife',
        :'environment' => :'environment',
        :'environment_selection_strategy' => :'environmentSelectionStrategy',
        :'failed_on' => :'failedOn',
        :'failed_url' => :'failedUrl',
        :'failure_reason' => :'failureReason',
        :'group' => :'group',
        :'id' => :'id',
        :'internet_protocol_address' => :'internetProtocolAddress',
        :'internet_protocol_address_country' => :'internetProtocolAddressCountry',
        :'invoice_merchant_reference' => :'invoiceMerchantReference',
        :'java_enabled' => :'javaEnabled',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'linked_space_id' => :'linkedSpaceId',
        :'merchant_reference' => :'merchantReference',
        :'meta_data' => :'metaData',
        :'parent' => :'parent',
        :'payment_connector_configuration' => :'paymentConnectorConfiguration',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'processing_on' => :'processingOn',
        :'refunded_amount' => :'refundedAmount',
        :'screen_color_depth' => :'screenColorDepth',
        :'screen_height' => :'screenHeight',
        :'screen_width' => :'screenWidth',
        :'shipping_address' => :'shippingAddress',
        :'shipping_method' => :'shippingMethod',
        :'space_view_id' => :'spaceViewId',
        :'state' => :'state',
        :'success_url' => :'successUrl',
        :'terminal' => :'terminal',
        :'time_zone' => :'timeZone',
        :'token' => :'token',
        :'tokenization_mode' => :'tokenizationMode',
        :'total_applied_fees' => :'totalAppliedFees',
        :'total_settled_amount' => :'totalSettledAmount',
        :'user_agent_header' => :'userAgentHeader',
        :'user_failure_message' => :'userFailureMessage',
        :'user_interface_type' => :'userInterfaceType',
        :'version' => :'version',
        :'window_height' => :'windowHeight',
        :'window_width' => :'windowWidth',
        :'years_to_keep' => :'yearsToKeep'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'accept_header' => :'String',
        :'accept_language_header' => :'String',
        :'allowed_payment_method_brands' => :'Array<Integer>',
        :'allowed_payment_method_configurations' => :'Array<Integer>',
        :'authorization_amount' => :'Float',
        :'authorization_environment' => :'ChargeAttemptEnvironment',
        :'authorization_sales_channel' => :'Integer',
        :'authorization_timeout_on' => :'DateTime',
        :'authorized_on' => :'DateTime',
        :'auto_confirmation_enabled' => :'BOOLEAN',
        :'billing_address' => :'Address',
        :'charge_retry_enabled' => :'BOOLEAN',
        :'completed_amount' => :'Float',
        :'completed_on' => :'DateTime',
        :'completion_behavior' => :'TransactionCompletionBehavior',
        :'completion_timeout_on' => :'DateTime',
        :'confirmed_by' => :'Integer',
        :'confirmed_on' => :'DateTime',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'currency' => :'String',
        :'customer_email_address' => :'String',
        :'customer_id' => :'String',
        :'customers_presence' => :'CustomersPresence',
        :'delivery_decision_made_on' => :'DateTime',
        :'device_session_identifier' => :'String',
        :'emails_disabled' => :'BOOLEAN',
        :'end_of_life' => :'DateTime',
        :'environment' => :'Environment',
        :'environment_selection_strategy' => :'TransactionEnvironmentSelectionStrategy',
        :'failed_on' => :'DateTime',
        :'failed_url' => :'String',
        :'failure_reason' => :'FailureReason',
        :'group' => :'TransactionGroup',
        :'id' => :'Integer',
        :'internet_protocol_address' => :'String',
        :'internet_protocol_address_country' => :'String',
        :'invoice_merchant_reference' => :'String',
        :'java_enabled' => :'BOOLEAN',
        :'language' => :'String',
        :'line_items' => :'Array<LineItem>',
        :'linked_space_id' => :'Integer',
        :'merchant_reference' => :'String',
        :'meta_data' => :'Hash<String, String>',
        :'parent' => :'Integer',
        :'payment_connector_configuration' => :'PaymentConnectorConfiguration',
        :'planned_purge_date' => :'DateTime',
        :'processing_on' => :'DateTime',
        :'refunded_amount' => :'Float',
        :'screen_color_depth' => :'String',
        :'screen_height' => :'String',
        :'screen_width' => :'String',
        :'shipping_address' => :'Address',
        :'shipping_method' => :'String',
        :'space_view_id' => :'Integer',
        :'state' => :'TransactionState',
        :'success_url' => :'String',
        :'terminal' => :'PaymentTerminal',
        :'time_zone' => :'String',
        :'token' => :'Token',
        :'tokenization_mode' => :'TokenizationMode',
        :'total_applied_fees' => :'Float',
        :'total_settled_amount' => :'Float',
        :'user_agent_header' => :'String',
        :'user_failure_message' => :'String',
        :'user_interface_type' => :'TransactionUserInterfaceType',
        :'version' => :'Integer',
        :'window_height' => :'String',
        :'window_width' => :'String',
        :'years_to_keep' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acceptHeader')
        self.accept_header = attributes[:'acceptHeader']
      end

      if attributes.has_key?(:'acceptLanguageHeader')
        self.accept_language_header = attributes[:'acceptLanguageHeader']
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

      if attributes.has_key?(:'authorizationEnvironment')
        self.authorization_environment = attributes[:'authorizationEnvironment']
      end

      if attributes.has_key?(:'authorizationSalesChannel')
        self.authorization_sales_channel = attributes[:'authorizationSalesChannel']
      end

      if attributes.has_key?(:'authorizationTimeoutOn')
        self.authorization_timeout_on = attributes[:'authorizationTimeoutOn']
      end

      if attributes.has_key?(:'authorizedOn')
        self.authorized_on = attributes[:'authorizedOn']
      end

      if attributes.has_key?(:'autoConfirmationEnabled')
        self.auto_confirmation_enabled = attributes[:'autoConfirmationEnabled']
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'chargeRetryEnabled')
        self.charge_retry_enabled = attributes[:'chargeRetryEnabled']
      end

      if attributes.has_key?(:'completedAmount')
        self.completed_amount = attributes[:'completedAmount']
      end

      if attributes.has_key?(:'completedOn')
        self.completed_on = attributes[:'completedOn']
      end

      if attributes.has_key?(:'completionBehavior')
        self.completion_behavior = attributes[:'completionBehavior']
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

      if attributes.has_key?(:'deliveryDecisionMadeOn')
        self.delivery_decision_made_on = attributes[:'deliveryDecisionMadeOn']
      end

      if attributes.has_key?(:'deviceSessionIdentifier')
        self.device_session_identifier = attributes[:'deviceSessionIdentifier']
      end

      if attributes.has_key?(:'emailsDisabled')
        self.emails_disabled = attributes[:'emailsDisabled']
      end

      if attributes.has_key?(:'endOfLife')
        self.end_of_life = attributes[:'endOfLife']
      end

      if attributes.has_key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.has_key?(:'environmentSelectionStrategy')
        self.environment_selection_strategy = attributes[:'environmentSelectionStrategy']
      end

      if attributes.has_key?(:'failedOn')
        self.failed_on = attributes[:'failedOn']
      end

      if attributes.has_key?(:'failedUrl')
        self.failed_url = attributes[:'failedUrl']
      end

      if attributes.has_key?(:'failureReason')
        self.failure_reason = attributes[:'failureReason']
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

      if attributes.has_key?(:'javaEnabled')
        self.java_enabled = attributes[:'javaEnabled']
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
        if (value = attributes[:'metaData']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.has_key?(:'parent')
        self.parent = attributes[:'parent']
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

      if attributes.has_key?(:'screenColorDepth')
        self.screen_color_depth = attributes[:'screenColorDepth']
      end

      if attributes.has_key?(:'screenHeight')
        self.screen_height = attributes[:'screenHeight']
      end

      if attributes.has_key?(:'screenWidth')
        self.screen_width = attributes[:'screenWidth']
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

      if attributes.has_key?(:'terminal')
        self.terminal = attributes[:'terminal']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'tokenizationMode')
        self.tokenization_mode = attributes[:'tokenizationMode']
      end

      if attributes.has_key?(:'totalAppliedFees')
        self.total_applied_fees = attributes[:'totalAppliedFees']
      end

      if attributes.has_key?(:'totalSettledAmount')
        self.total_settled_amount = attributes[:'totalSettledAmount']
      end

      if attributes.has_key?(:'userAgentHeader')
        self.user_agent_header = attributes[:'userAgentHeader']
      end

      if attributes.has_key?(:'userFailureMessage')
        self.user_failure_message = attributes[:'userFailureMessage']
      end

      if attributes.has_key?(:'userInterfaceType')
        self.user_interface_type = attributes[:'userInterfaceType']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'windowHeight')
        self.window_height = attributes[:'windowHeight']
      end

      if attributes.has_key?(:'windowWidth')
        self.window_width = attributes[:'windowWidth']
      end

      if attributes.has_key?(:'yearsToKeep')
        self.years_to_keep = attributes[:'yearsToKeep']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
        invalid_properties.push('invalid value for "customer_email_address", the character length must be smaller than or equal to 254.')
      end

      if !@device_session_identifier.nil? && @device_session_identifier.to_s.length > 40
        invalid_properties.push('invalid value for "device_session_identifier", the character length must be smaller than or equal to 40.')
      end

      if !@device_session_identifier.nil? && @device_session_identifier.to_s.length < 10
        invalid_properties.push('invalid value for "device_session_identifier", the character length must be great than or equal to 10.')
      end

      if !@failed_url.nil? && @failed_url.to_s.length > 2000
        invalid_properties.push('invalid value for "failed_url", the character length must be smaller than or equal to 2000.')
      end

      if !@failed_url.nil? && @failed_url.to_s.length < 9
        invalid_properties.push('invalid value for "failed_url", the character length must be great than or equal to 9.')
      end

      if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.')
      end

      if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
        invalid_properties.push('invalid value for "merchant_reference", the character length must be smaller than or equal to 100.')
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
      return false if !@device_session_identifier.nil? && @device_session_identifier.to_s.length > 40
      return false if !@device_session_identifier.nil? && @device_session_identifier.to_s.length < 10
      return false if !@failed_url.nil? && @failed_url.to_s.length > 2000
      return false if !@failed_url.nil? && @failed_url.to_s.length < 9
      return false if !@invoice_merchant_reference.nil? && @invoice_merchant_reference.to_s.length > 100
      return false if !@merchant_reference.nil? && @merchant_reference.to_s.length > 100
      return false if !@shipping_method.nil? && @shipping_method.to_s.length > 200
      return false if !@success_url.nil? && @success_url.to_s.length > 2000
      return false if !@success_url.nil? && @success_url.to_s.length < 9
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_email_address Value to be assigned
    def customer_email_address=(customer_email_address)
      if !customer_email_address.nil? && customer_email_address.to_s.length > 254
        fail ArgumentError, 'invalid value for "customer_email_address", the character length must be smaller than or equal to 254.'
      end

      @customer_email_address = customer_email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] device_session_identifier Value to be assigned
    def device_session_identifier=(device_session_identifier)
      if !device_session_identifier.nil? && device_session_identifier.to_s.length > 40
        fail ArgumentError, 'invalid value for "device_session_identifier", the character length must be smaller than or equal to 40.'
      end

      if !device_session_identifier.nil? && device_session_identifier.to_s.length < 10
        fail ArgumentError, 'invalid value for "device_session_identifier", the character length must be great than or equal to 10.'
      end

      @device_session_identifier = device_session_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] failed_url Value to be assigned
    def failed_url=(failed_url)
      if !failed_url.nil? && failed_url.to_s.length > 2000
        fail ArgumentError, 'invalid value for "failed_url", the character length must be smaller than or equal to 2000.'
      end

      if !failed_url.nil? && failed_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "failed_url", the character length must be great than or equal to 9.'
      end

      @failed_url = failed_url
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_merchant_reference Value to be assigned
    def invoice_merchant_reference=(invoice_merchant_reference)
      if !invoice_merchant_reference.nil? && invoice_merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "invoice_merchant_reference", the character length must be smaller than or equal to 100.'
      end

      @invoice_merchant_reference = invoice_merchant_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_reference Value to be assigned
    def merchant_reference=(merchant_reference)
      if !merchant_reference.nil? && merchant_reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "merchant_reference", the character length must be smaller than or equal to 100.'
      end

      @merchant_reference = merchant_reference
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_method Value to be assigned
    def shipping_method=(shipping_method)
      if !shipping_method.nil? && shipping_method.to_s.length > 200
        fail ArgumentError, 'invalid value for "shipping_method", the character length must be smaller than or equal to 200.'
      end

      @shipping_method = shipping_method
    end

    # Custom attribute writer method with validation
    # @param [Object] success_url Value to be assigned
    def success_url=(success_url)
      if !success_url.nil? && success_url.to_s.length > 2000
        fail ArgumentError, 'invalid value for "success_url", the character length must be smaller than or equal to 2000.'
      end

      if !success_url.nil? && success_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "success_url", the character length must be great than or equal to 9.'
      end

      @success_url = success_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accept_header == o.accept_header &&
          accept_language_header == o.accept_language_header &&
          allowed_payment_method_brands == o.allowed_payment_method_brands &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          authorization_amount == o.authorization_amount &&
          authorization_environment == o.authorization_environment &&
          authorization_sales_channel == o.authorization_sales_channel &&
          authorization_timeout_on == o.authorization_timeout_on &&
          authorized_on == o.authorized_on &&
          auto_confirmation_enabled == o.auto_confirmation_enabled &&
          billing_address == o.billing_address &&
          charge_retry_enabled == o.charge_retry_enabled &&
          completed_amount == o.completed_amount &&
          completed_on == o.completed_on &&
          completion_behavior == o.completion_behavior &&
          completion_timeout_on == o.completion_timeout_on &&
          confirmed_by == o.confirmed_by &&
          confirmed_on == o.confirmed_on &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          currency == o.currency &&
          customer_email_address == o.customer_email_address &&
          customer_id == o.customer_id &&
          customers_presence == o.customers_presence &&
          delivery_decision_made_on == o.delivery_decision_made_on &&
          device_session_identifier == o.device_session_identifier &&
          emails_disabled == o.emails_disabled &&
          end_of_life == o.end_of_life &&
          environment == o.environment &&
          environment_selection_strategy == o.environment_selection_strategy &&
          failed_on == o.failed_on &&
          failed_url == o.failed_url &&
          failure_reason == o.failure_reason &&
          group == o.group &&
          id == o.id &&
          internet_protocol_address == o.internet_protocol_address &&
          internet_protocol_address_country == o.internet_protocol_address_country &&
          invoice_merchant_reference == o.invoice_merchant_reference &&
          java_enabled == o.java_enabled &&
          language == o.language &&
          line_items == o.line_items &&
          linked_space_id == o.linked_space_id &&
          merchant_reference == o.merchant_reference &&
          meta_data == o.meta_data &&
          parent == o.parent &&
          payment_connector_configuration == o.payment_connector_configuration &&
          planned_purge_date == o.planned_purge_date &&
          processing_on == o.processing_on &&
          refunded_amount == o.refunded_amount &&
          screen_color_depth == o.screen_color_depth &&
          screen_height == o.screen_height &&
          screen_width == o.screen_width &&
          shipping_address == o.shipping_address &&
          shipping_method == o.shipping_method &&
          space_view_id == o.space_view_id &&
          state == o.state &&
          success_url == o.success_url &&
          terminal == o.terminal &&
          time_zone == o.time_zone &&
          token == o.token &&
          tokenization_mode == o.tokenization_mode &&
          total_applied_fees == o.total_applied_fees &&
          total_settled_amount == o.total_settled_amount &&
          user_agent_header == o.user_agent_header &&
          user_failure_message == o.user_failure_message &&
          user_interface_type == o.user_interface_type &&
          version == o.version &&
          window_height == o.window_height &&
          window_width == o.window_width &&
          years_to_keep == o.years_to_keep
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [accept_header, accept_language_header, allowed_payment_method_brands, allowed_payment_method_configurations, authorization_amount, authorization_environment, authorization_sales_channel, authorization_timeout_on, authorized_on, auto_confirmation_enabled, billing_address, charge_retry_enabled, completed_amount, completed_on, completion_behavior, completion_timeout_on, confirmed_by, confirmed_on, created_by, created_on, currency, customer_email_address, customer_id, customers_presence, delivery_decision_made_on, device_session_identifier, emails_disabled, end_of_life, environment, environment_selection_strategy, failed_on, failed_url, failure_reason, group, id, internet_protocol_address, internet_protocol_address_country, invoice_merchant_reference, java_enabled, language, line_items, linked_space_id, merchant_reference, meta_data, parent, payment_connector_configuration, planned_purge_date, processing_on, refunded_amount, screen_color_depth, screen_height, screen_width, shipping_address, shipping_method, space_view_id, state, success_url, terminal, time_zone, token, tokenization_mode, total_applied_fees, total_settled_amount, user_agent_header, user_failure_message, user_interface_type, version, window_height, window_width, years_to_keep].hash
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
