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
  class AbstractTransactionPending
    # 
    attr_accessor :allowed_payment_method_brands

    # 
    attr_accessor :allowed_payment_method_configurations

    # 
    attr_accessor :billing_address

    # The completion behavior controls when the transaction is completed.
    attr_accessor :completion_behavior

    # 
    attr_accessor :currency

    # The customer email address is the email address of the customer. If no email address is provided on the shipping or billing address this address is used.
    attr_accessor :customer_email_address

    # 
    attr_accessor :customer_id

    # The user will be redirected to failed URL when the transaction could not be authorized or completed. In case no failed URL is specified a default failed page will be displayed.
    attr_accessor :failed_url

    # 
    attr_accessor :invoice_merchant_reference

    # 
    attr_accessor :language

    # 
    attr_accessor :line_items

    # 
    attr_accessor :merchant_reference

    # Meta data allow to store additional data along the object.
    attr_accessor :meta_data

    # 
    attr_accessor :shipping_address

    # 
    attr_accessor :shipping_method

    # The user will be redirected to success URL when the transaction could be authorized or completed. In case no success URL is specified a default success page will be displayed.
    attr_accessor :success_url

    # The time zone defines in which time zone the customer is located in. The time zone may affects how dates are formatted when interacting with the customer.
    attr_accessor :time_zone

    # 
    attr_accessor :token

    # The tokenization mode controls if and how the tokenization of payment information is applied to the transaction.
    attr_accessor :tokenization_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_payment_method_brands' => :'allowedPaymentMethodBrands',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'billing_address' => :'billingAddress',
        :'completion_behavior' => :'completionBehavior',
        :'currency' => :'currency',
        :'customer_email_address' => :'customerEmailAddress',
        :'customer_id' => :'customerId',
        :'failed_url' => :'failedUrl',
        :'invoice_merchant_reference' => :'invoiceMerchantReference',
        :'language' => :'language',
        :'line_items' => :'lineItems',
        :'merchant_reference' => :'merchantReference',
        :'meta_data' => :'metaData',
        :'shipping_address' => :'shippingAddress',
        :'shipping_method' => :'shippingMethod',
        :'success_url' => :'successUrl',
        :'time_zone' => :'timeZone',
        :'token' => :'token',
        :'tokenization_mode' => :'tokenizationMode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allowed_payment_method_brands' => :'Array<Integer>',
        :'allowed_payment_method_configurations' => :'Array<Integer>',
        :'billing_address' => :'AddressCreate',
        :'completion_behavior' => :'TransactionCompletionBehavior',
        :'currency' => :'String',
        :'customer_email_address' => :'String',
        :'customer_id' => :'String',
        :'failed_url' => :'String',
        :'invoice_merchant_reference' => :'String',
        :'language' => :'String',
        :'line_items' => :'Array<LineItemCreate>',
        :'merchant_reference' => :'String',
        :'meta_data' => :'Hash<String, String>',
        :'shipping_address' => :'AddressCreate',
        :'shipping_method' => :'String',
        :'success_url' => :'String',
        :'time_zone' => :'String',
        :'token' => :'Integer',
        :'tokenization_mode' => :'TokenizationMode'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

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

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'completionBehavior')
        self.completion_behavior = attributes[:'completionBehavior']
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

      if attributes.has_key?(:'failedUrl')
        self.failed_url = attributes[:'failedUrl']
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

      if attributes.has_key?(:'merchantReference')
        self.merchant_reference = attributes[:'merchantReference']
      end

      if attributes.has_key?(:'metaData')
        if (value = attributes[:'metaData']).is_a?(Hash)
          self.meta_data = value
        end
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'shippingMethod')
        self.shipping_method = attributes[:'shippingMethod']
      end

      if attributes.has_key?(:'successUrl')
        self.success_url = attributes[:'successUrl']
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
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@customer_email_address.nil? && @customer_email_address.to_s.length > 254
        invalid_properties.push('invalid value for "customer_email_address", the character length must be smaller than or equal to 254.')
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
          allowed_payment_method_brands == o.allowed_payment_method_brands &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          billing_address == o.billing_address &&
          completion_behavior == o.completion_behavior &&
          currency == o.currency &&
          customer_email_address == o.customer_email_address &&
          customer_id == o.customer_id &&
          failed_url == o.failed_url &&
          invoice_merchant_reference == o.invoice_merchant_reference &&
          language == o.language &&
          line_items == o.line_items &&
          merchant_reference == o.merchant_reference &&
          meta_data == o.meta_data &&
          shipping_address == o.shipping_address &&
          shipping_method == o.shipping_method &&
          success_url == o.success_url &&
          time_zone == o.time_zone &&
          token == o.token &&
          tokenization_mode == o.tokenization_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allowed_payment_method_brands, allowed_payment_method_configurations, billing_address, completion_behavior, currency, customer_email_address, customer_id, failed_url, invoice_merchant_reference, language, line_items, merchant_reference, meta_data, shipping_address, shipping_method, success_url, time_zone, token, tokenization_mode].hash
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
