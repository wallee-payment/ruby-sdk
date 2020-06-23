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
  class ShopifySubscriptionProduct
    # 
    attr_accessor :absolute_price_adjustment

    # Define the day of the month on which the recurring orders should be created.
    attr_accessor :billing_day_of_month

    # 
    attr_accessor :billing_interval_amount

    # Define how frequently recurring orders should be created.
    attr_accessor :billing_interval_unit

    # Define the weekday on which the recurring orders should be created.
    attr_accessor :billing_weekday

    # 
    attr_accessor :fixed_price

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # Define the maximum number of orders the subscription will run for.
    attr_accessor :maximal_billing_cycles

    # Define the maximum number of orders the subscription can be suspended for at a time.
    attr_accessor :maximal_suspendable_cycles

    # Define the minimal number of orders the subscription will run for.
    attr_accessor :minimal_billing_cycles

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :pricing_option

    # The ID of the Shopify product that is enabled to be ordered as subscription.
    attr_accessor :product_id

    # 
    attr_accessor :product_name

    # 
    attr_accessor :product_price

    # 
    attr_accessor :product_sku

    # 
    attr_accessor :product_variant_id

    # 
    attr_accessor :product_variant_name

    # 
    attr_accessor :relative_price_adjustment

    # 
    attr_accessor :shipping_required

    # 
    attr_accessor :shop

    # 
    attr_accessor :state

    # 
    attr_accessor :stock_check_required

    # Define whether the order confirmation email of the Shopify shop is sent to the customer for recurring orders.
    attr_accessor :store_order_confirmation_email_enabled

    # Define whether the customer is allowed to suspend subscriptions.
    attr_accessor :subscriber_suspension_allowed

    # Define the number of orders the subscription will keep running for after its termination has been requested.
    attr_accessor :termination_billing_cycles

    # 
    attr_accessor :updated_at

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'absolute_price_adjustment' => :'absolutePriceAdjustment',
        :'billing_day_of_month' => :'billingDayOfMonth',
        :'billing_interval_amount' => :'billingIntervalAmount',
        :'billing_interval_unit' => :'billingIntervalUnit',
        :'billing_weekday' => :'billingWeekday',
        :'fixed_price' => :'fixedPrice',
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'maximal_billing_cycles' => :'maximalBillingCycles',
        :'maximal_suspendable_cycles' => :'maximalSuspendableCycles',
        :'minimal_billing_cycles' => :'minimalBillingCycles',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'pricing_option' => :'pricingOption',
        :'product_id' => :'productId',
        :'product_name' => :'productName',
        :'product_price' => :'productPrice',
        :'product_sku' => :'productSku',
        :'product_variant_id' => :'productVariantId',
        :'product_variant_name' => :'productVariantName',
        :'relative_price_adjustment' => :'relativePriceAdjustment',
        :'shipping_required' => :'shippingRequired',
        :'shop' => :'shop',
        :'state' => :'state',
        :'stock_check_required' => :'stockCheckRequired',
        :'store_order_confirmation_email_enabled' => :'storeOrderConfirmationEmailEnabled',
        :'subscriber_suspension_allowed' => :'subscriberSuspensionAllowed',
        :'termination_billing_cycles' => :'terminationBillingCycles',
        :'updated_at' => :'updatedAt',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'absolute_price_adjustment' => :'Float',
        :'billing_day_of_month' => :'Integer',
        :'billing_interval_amount' => :'Integer',
        :'billing_interval_unit' => :'ShopifySubscriptionBillingIntervalUnit',
        :'billing_weekday' => :'ShopifySubscriptionWeekday',
        :'fixed_price' => :'Float',
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'maximal_billing_cycles' => :'Integer',
        :'maximal_suspendable_cycles' => :'Integer',
        :'minimal_billing_cycles' => :'Integer',
        :'planned_purge_date' => :'DateTime',
        :'pricing_option' => :'ShopifySubscriptionProductPricingOption',
        :'product_id' => :'String',
        :'product_name' => :'String',
        :'product_price' => :'Float',
        :'product_sku' => :'String',
        :'product_variant_id' => :'String',
        :'product_variant_name' => :'String',
        :'relative_price_adjustment' => :'Float',
        :'shipping_required' => :'BOOLEAN',
        :'shop' => :'Integer',
        :'state' => :'ShopifySubscriptionProductState',
        :'stock_check_required' => :'BOOLEAN',
        :'store_order_confirmation_email_enabled' => :'BOOLEAN',
        :'subscriber_suspension_allowed' => :'BOOLEAN',
        :'termination_billing_cycles' => :'Integer',
        :'updated_at' => :'DateTime',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'absolutePriceAdjustment')
        self.absolute_price_adjustment = attributes[:'absolutePriceAdjustment']
      end

      if attributes.has_key?(:'billingDayOfMonth')
        self.billing_day_of_month = attributes[:'billingDayOfMonth']
      end

      if attributes.has_key?(:'billingIntervalAmount')
        self.billing_interval_amount = attributes[:'billingIntervalAmount']
      end

      if attributes.has_key?(:'billingIntervalUnit')
        self.billing_interval_unit = attributes[:'billingIntervalUnit']
      end

      if attributes.has_key?(:'billingWeekday')
        self.billing_weekday = attributes[:'billingWeekday']
      end

      if attributes.has_key?(:'fixedPrice')
        self.fixed_price = attributes[:'fixedPrice']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'maximalBillingCycles')
        self.maximal_billing_cycles = attributes[:'maximalBillingCycles']
      end

      if attributes.has_key?(:'maximalSuspendableCycles')
        self.maximal_suspendable_cycles = attributes[:'maximalSuspendableCycles']
      end

      if attributes.has_key?(:'minimalBillingCycles')
        self.minimal_billing_cycles = attributes[:'minimalBillingCycles']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'pricingOption')
        self.pricing_option = attributes[:'pricingOption']
      end

      if attributes.has_key?(:'productId')
        self.product_id = attributes[:'productId']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'productPrice')
        self.product_price = attributes[:'productPrice']
      end

      if attributes.has_key?(:'productSku')
        self.product_sku = attributes[:'productSku']
      end

      if attributes.has_key?(:'productVariantId')
        self.product_variant_id = attributes[:'productVariantId']
      end

      if attributes.has_key?(:'productVariantName')
        self.product_variant_name = attributes[:'productVariantName']
      end

      if attributes.has_key?(:'relativePriceAdjustment')
        self.relative_price_adjustment = attributes[:'relativePriceAdjustment']
      end

      if attributes.has_key?(:'shippingRequired')
        self.shipping_required = attributes[:'shippingRequired']
      end

      if attributes.has_key?(:'shop')
        self.shop = attributes[:'shop']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'stockCheckRequired')
        self.stock_check_required = attributes[:'stockCheckRequired']
      end

      if attributes.has_key?(:'storeOrderConfirmationEmailEnabled')
        self.store_order_confirmation_email_enabled = attributes[:'storeOrderConfirmationEmailEnabled']
      end

      if attributes.has_key?(:'subscriberSuspensionAllowed')
        self.subscriber_suspension_allowed = attributes[:'subscriberSuspensionAllowed']
      end

      if attributes.has_key?(:'terminationBillingCycles')
        self.termination_billing_cycles = attributes[:'terminationBillingCycles']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          absolute_price_adjustment == o.absolute_price_adjustment &&
          billing_day_of_month == o.billing_day_of_month &&
          billing_interval_amount == o.billing_interval_amount &&
          billing_interval_unit == o.billing_interval_unit &&
          billing_weekday == o.billing_weekday &&
          fixed_price == o.fixed_price &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          maximal_billing_cycles == o.maximal_billing_cycles &&
          maximal_suspendable_cycles == o.maximal_suspendable_cycles &&
          minimal_billing_cycles == o.minimal_billing_cycles &&
          planned_purge_date == o.planned_purge_date &&
          pricing_option == o.pricing_option &&
          product_id == o.product_id &&
          product_name == o.product_name &&
          product_price == o.product_price &&
          product_sku == o.product_sku &&
          product_variant_id == o.product_variant_id &&
          product_variant_name == o.product_variant_name &&
          relative_price_adjustment == o.relative_price_adjustment &&
          shipping_required == o.shipping_required &&
          shop == o.shop &&
          state == o.state &&
          stock_check_required == o.stock_check_required &&
          store_order_confirmation_email_enabled == o.store_order_confirmation_email_enabled &&
          subscriber_suspension_allowed == o.subscriber_suspension_allowed &&
          termination_billing_cycles == o.termination_billing_cycles &&
          updated_at == o.updated_at &&
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
      [absolute_price_adjustment, billing_day_of_month, billing_interval_amount, billing_interval_unit, billing_weekday, fixed_price, id, linked_space_id, maximal_billing_cycles, maximal_suspendable_cycles, minimal_billing_cycles, planned_purge_date, pricing_option, product_id, product_name, product_price, product_sku, product_variant_id, product_variant_name, relative_price_adjustment, shipping_required, shop, state, stock_check_required, store_order_confirmation_email_enabled, subscriber_suspension_allowed, termination_billing_cycles, updated_at, version].hash
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
