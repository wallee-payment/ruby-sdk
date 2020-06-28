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
  # A Shopify Integration allows to connect a Shopify shop.
  class ShopifyIntegration
    # 
    attr_accessor :allow_invoice_download

    # 
    attr_accessor :allowed_payment_method_configurations

    # 
    attr_accessor :app_version

    # 
    attr_accessor :currency

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :installed

    # Enabling the integrated payment form will embed the payment form in the Shopify shop. The app needs to be installed for this to be possible.
    attr_accessor :integrated_payment_form_enabled

    # The checkout language forces a specific language in the checkout. Without a checkout language the browser setting of the buyer is used to determine the language.
    attr_accessor :language

    # The login name is used to link a specific Shopify payment gateway to this integration.This login name is to be filled into the appropriate field in the shops payment gateway configuration.
    attr_accessor :login_name

    # The integration name is used internally to identify a specific integration.For example the name is used withinsearch fields and hence it should be distinct and descriptive.
    attr_accessor :name

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # Define the path of the proxy URL. This only needs to be changed if the apps proxy URL is overwritten in the Shopify store.
    attr_accessor :proxy_path

    # 
    attr_accessor :replace_payment_method_image

    # The store address is used to link a specific Shopify shop to this integration. This is the name used in the Shopifys admin URL: [storeAddress].myshopify.com
    attr_accessor :shop_name

    # 
    attr_accessor :show_payment_information

    # 
    attr_accessor :show_subscription_information

    # 
    attr_accessor :space_id

    # 
    attr_accessor :space_view_id

    # 
    attr_accessor :state

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_invoice_download' => :'allowInvoiceDownload',
        :'allowed_payment_method_configurations' => :'allowedPaymentMethodConfigurations',
        :'app_version' => :'appVersion',
        :'currency' => :'currency',
        :'id' => :'id',
        :'installed' => :'installed',
        :'integrated_payment_form_enabled' => :'integratedPaymentFormEnabled',
        :'language' => :'language',
        :'login_name' => :'loginName',
        :'name' => :'name',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'proxy_path' => :'proxyPath',
        :'replace_payment_method_image' => :'replacePaymentMethodImage',
        :'shop_name' => :'shopName',
        :'show_payment_information' => :'showPaymentInformation',
        :'show_subscription_information' => :'showSubscriptionInformation',
        :'space_id' => :'spaceId',
        :'space_view_id' => :'spaceViewId',
        :'state' => :'state',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_invoice_download' => :'BOOLEAN',
        :'allowed_payment_method_configurations' => :'Array<PaymentMethodConfiguration>',
        :'app_version' => :'ShopifyIntegrationAppVersion',
        :'currency' => :'String',
        :'id' => :'Integer',
        :'installed' => :'BOOLEAN',
        :'integrated_payment_form_enabled' => :'BOOLEAN',
        :'language' => :'String',
        :'login_name' => :'String',
        :'name' => :'String',
        :'planned_purge_date' => :'DateTime',
        :'proxy_path' => :'String',
        :'replace_payment_method_image' => :'BOOLEAN',
        :'shop_name' => :'String',
        :'show_payment_information' => :'BOOLEAN',
        :'show_subscription_information' => :'BOOLEAN',
        :'space_id' => :'Integer',
        :'space_view_id' => :'Integer',
        :'state' => :'CreationEntityState',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'allowInvoiceDownload')
        self.allow_invoice_download = attributes[:'allowInvoiceDownload']
      end

      if attributes.has_key?(:'allowedPaymentMethodConfigurations')
        if (value = attributes[:'allowedPaymentMethodConfigurations']).is_a?(Array)
          self.allowed_payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'appVersion')
        self.app_version = attributes[:'appVersion']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'installed')
        self.installed = attributes[:'installed']
      end

      if attributes.has_key?(:'integratedPaymentFormEnabled')
        self.integrated_payment_form_enabled = attributes[:'integratedPaymentFormEnabled']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'loginName')
        self.login_name = attributes[:'loginName']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'proxyPath')
        self.proxy_path = attributes[:'proxyPath']
      end

      if attributes.has_key?(:'replacePaymentMethodImage')
        self.replace_payment_method_image = attributes[:'replacePaymentMethodImage']
      end

      if attributes.has_key?(:'shopName')
        self.shop_name = attributes[:'shopName']
      end

      if attributes.has_key?(:'showPaymentInformation')
        self.show_payment_information = attributes[:'showPaymentInformation']
      end

      if attributes.has_key?(:'showSubscriptionInformation')
        self.show_subscription_information = attributes[:'showSubscriptionInformation']
      end

      if attributes.has_key?(:'spaceId')
        self.space_id = attributes[:'spaceId']
      end

      if attributes.has_key?(:'spaceViewId')
        self.space_view_id = attributes[:'spaceViewId']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@login_name.nil? && @login_name.to_s.length > 100
        invalid_properties.push('invalid value for "login_name", the character length must be smaller than or equal to 100.')
      end

      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if !@shop_name.nil? && @shop_name.to_s.length > 100
        invalid_properties.push('invalid value for "shop_name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@login_name.nil? && @login_name.to_s.length > 100
      return false if !@name.nil? && @name.to_s.length > 100
      return false if !@shop_name.nil? && @shop_name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] login_name Value to be assigned
    def login_name=(login_name)
      if !login_name.nil? && login_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "login_name", the character length must be smaller than or equal to 100.'
      end

      @login_name = login_name
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] shop_name Value to be assigned
    def shop_name=(shop_name)
      if !shop_name.nil? && shop_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "shop_name", the character length must be smaller than or equal to 100.'
      end

      @shop_name = shop_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_invoice_download == o.allow_invoice_download &&
          allowed_payment_method_configurations == o.allowed_payment_method_configurations &&
          app_version == o.app_version &&
          currency == o.currency &&
          id == o.id &&
          installed == o.installed &&
          integrated_payment_form_enabled == o.integrated_payment_form_enabled &&
          language == o.language &&
          login_name == o.login_name &&
          name == o.name &&
          planned_purge_date == o.planned_purge_date &&
          proxy_path == o.proxy_path &&
          replace_payment_method_image == o.replace_payment_method_image &&
          shop_name == o.shop_name &&
          show_payment_information == o.show_payment_information &&
          show_subscription_information == o.show_subscription_information &&
          space_id == o.space_id &&
          space_view_id == o.space_view_id &&
          state == o.state &&
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
      [allow_invoice_download, allowed_payment_method_configurations, app_version, currency, id, installed, integrated_payment_form_enabled, language, login_name, name, planned_purge_date, proxy_path, replace_payment_method_image, shop_name, show_payment_information, show_subscription_information, space_id, space_view_id, state, version].hash
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
