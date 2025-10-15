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
  # The subscription ledger entry represents a single change on the subscription balance.
  class SubscriptionLedgerEntry
    # The total tax rate applied to the ledger entry, calculated from the rates of all tax lines.
    attr_accessor :aggregated_tax_rate

    # The leger entry's amount with discounts applied, excluding taxes.
    attr_accessor :amount_excluding_tax

    # The leger entry's amount with discounts applied, including taxes.
    attr_accessor :amount_including_tax

    # 
    attr_accessor :component_reference_name

    # 
    attr_accessor :component_reference_sku

    # The ID of the user the ledger entry was created by.
    attr_accessor :created_by

    # The date and time when the object was created.
    attr_accessor :created_on

    # The discount allocated to the ledger entry, including taxes.
    attr_accessor :discount_including_tax

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # 
    attr_accessor :fee_type

    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # 
    attr_accessor :pro_rata_calculated

    # The number of items that were consumed.
    attr_accessor :quantity

    # The object's current state.
    attr_accessor :state

    # 
    attr_accessor :subscription_metric_id

    # The subscription version that the ledger entry belongs to.
    attr_accessor :subscription_version

    # The sum of all taxes applied to the ledger entry.
    attr_accessor :tax_amount

    # A set of tax lines, each of which specifies a tax applied to the ledger entry.
    attr_accessor :taxes

    # The title that indicates what the ledger entry is about.
    attr_accessor :title

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aggregated_tax_rate' => :'aggregatedTaxRate',
        :'amount_excluding_tax' => :'amountExcludingTax',
        :'amount_including_tax' => :'amountIncludingTax',
        :'component_reference_name' => :'componentReferenceName',
        :'component_reference_sku' => :'componentReferenceSku',
        :'created_by' => :'createdBy',
        :'created_on' => :'createdOn',
        :'discount_including_tax' => :'discountIncludingTax',
        :'external_id' => :'externalId',
        :'fee_type' => :'feeType',
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'pro_rata_calculated' => :'proRataCalculated',
        :'quantity' => :'quantity',
        :'state' => :'state',
        :'subscription_metric_id' => :'subscriptionMetricId',
        :'subscription_version' => :'subscriptionVersion',
        :'tax_amount' => :'taxAmount',
        :'taxes' => :'taxes',
        :'title' => :'title',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aggregated_tax_rate' => :'Float',
        :'amount_excluding_tax' => :'Float',
        :'amount_including_tax' => :'Float',
        :'component_reference_name' => :'String',
        :'component_reference_sku' => :'String',
        :'created_by' => :'Integer',
        :'created_on' => :'DateTime',
        :'discount_including_tax' => :'Float',
        :'external_id' => :'String',
        :'fee_type' => :'ProductFeeType',
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'planned_purge_date' => :'DateTime',
        :'pro_rata_calculated' => :'BOOLEAN',
        :'quantity' => :'Float',
        :'state' => :'SubscriptionLedgerEntryState',
        :'subscription_metric_id' => :'Integer',
        :'subscription_version' => :'Integer',
        :'tax_amount' => :'Float',
        :'taxes' => :'Array<Tax>',
        :'title' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'aggregatedTaxRate')
        self.aggregated_tax_rate = attributes[:'aggregatedTaxRate']
      end

      if attributes.has_key?(:'amountExcludingTax')
        self.amount_excluding_tax = attributes[:'amountExcludingTax']
      end

      if attributes.has_key?(:'amountIncludingTax')
        self.amount_including_tax = attributes[:'amountIncludingTax']
      end

      if attributes.has_key?(:'componentReferenceName')
        self.component_reference_name = attributes[:'componentReferenceName']
      end

      if attributes.has_key?(:'componentReferenceSku')
        self.component_reference_sku = attributes[:'componentReferenceSku']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'discountIncludingTax')
        self.discount_including_tax = attributes[:'discountIncludingTax']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'feeType')
        self.fee_type = attributes[:'feeType']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'proRataCalculated')
        self.pro_rata_calculated = attributes[:'proRataCalculated']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'subscriptionMetricId')
        self.subscription_metric_id = attributes[:'subscriptionMetricId']
      end

      if attributes.has_key?(:'subscriptionVersion')
        self.subscription_version = attributes[:'subscriptionVersion']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@component_reference_sku.nil? && @component_reference_sku.to_s.length > 100
        invalid_properties.push('invalid value for "component_reference_sku", the character length must be smaller than or equal to 100.')
      end

      if !@title.nil? && @title.to_s.length > 150
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 150.')
      end

      if !@title.nil? && @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@component_reference_sku.nil? && @component_reference_sku.to_s.length > 100
      return false if !@title.nil? && @title.to_s.length > 150
      return false if !@title.nil? && @title.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] component_reference_sku Value to be assigned
    def component_reference_sku=(component_reference_sku)
      if !component_reference_sku.nil? && component_reference_sku.to_s.length > 100
        fail ArgumentError, 'invalid value for "component_reference_sku", the character length must be smaller than or equal to 100.'
      end

      @component_reference_sku = component_reference_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 150
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 150.'
      end

      if !title.nil? && title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregated_tax_rate == o.aggregated_tax_rate &&
          amount_excluding_tax == o.amount_excluding_tax &&
          amount_including_tax == o.amount_including_tax &&
          component_reference_name == o.component_reference_name &&
          component_reference_sku == o.component_reference_sku &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          discount_including_tax == o.discount_including_tax &&
          external_id == o.external_id &&
          fee_type == o.fee_type &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          planned_purge_date == o.planned_purge_date &&
          pro_rata_calculated == o.pro_rata_calculated &&
          quantity == o.quantity &&
          state == o.state &&
          subscription_metric_id == o.subscription_metric_id &&
          subscription_version == o.subscription_version &&
          tax_amount == o.tax_amount &&
          taxes == o.taxes &&
          title == o.title &&
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
      [aggregated_tax_rate, amount_excluding_tax, amount_including_tax, component_reference_name, component_reference_sku, created_by, created_on, discount_including_tax, external_id, fee_type, id, linked_space_id, planned_purge_date, pro_rata_calculated, quantity, state, subscription_metric_id, subscription_version, tax_amount, taxes, title, version].hash
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
