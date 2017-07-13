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
  # The installment plan allows to setup a template for an installment.
  class InstallmentPlanConfiguration
    # The base currency in which the installment fee and minimal amount are defined.
    attr_accessor :base_currency

    # If a transaction meets all selected conditions the installment plan will be available to the customer to be selected.
    attr_accessor :conditions

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The installment fee is a fixed amount that is charged additionally when applying this installment plan.
    attr_accessor :installment_fee

    # The interest rate is a percentage of the total amount that is charged additionally when applying this installment plan.
    attr_accessor :interest_rate

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # The installment plan can only be applied if the orders total is at least the defined minimal amount.
    attr_accessor :minimal_amount

    # The installment plan name is used internally to identify the plan in administrative interfaces.For example it is used within search fields and hence it should be distinct and descriptive.
    attr_accessor :name

    # A installment plan can be enabled only for specific payment method configurations. Other payment methods will not be selectable by the buyer.
    attr_accessor :payment_method_configurations

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # The sort order controls in which order the installation plans are listed. The sort order is used to order the plans in ascending order.
    attr_accessor :sort_order

    # 
    attr_accessor :space_reference

    # 
    attr_accessor :state

    # The tax class determines the taxes which are applicable on all fees linked to the installment plan.
    attr_accessor :tax_class

    # The terms and conditions will be displayed to the customer when he or she selects this installment plan.
    attr_accessor :terms_and_conditions

    # The title of the installment plan is used within the payment process. The title is visible to the buyer.
    attr_accessor :title

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'base_currency' => :'baseCurrency',
        :'conditions' => :'conditions',
        :'id' => :'id',
        :'installment_fee' => :'installmentFee',
        :'interest_rate' => :'interestRate',
        :'linked_space_id' => :'linkedSpaceId',
        :'minimal_amount' => :'minimalAmount',
        :'name' => :'name',
        :'payment_method_configurations' => :'paymentMethodConfigurations',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'sort_order' => :'sortOrder',
        :'space_reference' => :'spaceReference',
        :'state' => :'state',
        :'tax_class' => :'taxClass',
        :'terms_and_conditions' => :'termsAndConditions',
        :'title' => :'title',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'base_currency' => :'String',
        :'conditions' => :'Array<Integer>',
        :'id' => :'Integer',
        :'installment_fee' => :'Float',
        :'interest_rate' => :'Float',
        :'linked_space_id' => :'Integer',
        :'minimal_amount' => :'Float',
        :'name' => :'String',
        :'payment_method_configurations' => :'Array<Integer>',
        :'planned_purge_date' => :'DateTime',
        :'sort_order' => :'Integer',
        :'space_reference' => :'SpaceReference',
        :'state' => :'CreationEntityState',
        :'tax_class' => :'TaxClass',
        :'terms_and_conditions' => :'ResourcePath',
        :'title' => :'DatabaseTranslatedString',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'baseCurrency')
        self.base_currency = attributes[:'baseCurrency']
      end

      if attributes.has_key?(:'conditions')
        if (value = attributes[:'conditions']).is_a?(Array)
          self.conditions = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'installmentFee')
        self.installment_fee = attributes[:'installmentFee']
      end

      if attributes.has_key?(:'interestRate')
        self.interest_rate = attributes[:'interestRate']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'minimalAmount')
        self.minimal_amount = attributes[:'minimalAmount']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'paymentMethodConfigurations')
        if (value = attributes[:'paymentMethodConfigurations']).is_a?(Array)
          self.payment_method_configurations = value
        end
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'sortOrder')
        self.sort_order = attributes[:'sortOrder']
      end

      if attributes.has_key?(:'spaceReference')
        self.space_reference = attributes[:'spaceReference']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'taxClass')
        self.tax_class = attributes[:'taxClass']
      end

      if attributes.has_key?(:'termsAndConditions')
        self.terms_and_conditions = attributes[:'termsAndConditions']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          base_currency == o.base_currency &&
          conditions == o.conditions &&
          id == o.id &&
          installment_fee == o.installment_fee &&
          interest_rate == o.interest_rate &&
          linked_space_id == o.linked_space_id &&
          minimal_amount == o.minimal_amount &&
          name == o.name &&
          payment_method_configurations == o.payment_method_configurations &&
          planned_purge_date == o.planned_purge_date &&
          sort_order == o.sort_order &&
          space_reference == o.space_reference &&
          state == o.state &&
          tax_class == o.tax_class &&
          terms_and_conditions == o.terms_and_conditions &&
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
      [base_currency, conditions, id, installment_fee, interest_rate, linked_space_id, minimal_amount, name, payment_method_configurations, planned_purge_date, sort_order, space_reference, state, tax_class, terms_and_conditions, title, version].hash
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
