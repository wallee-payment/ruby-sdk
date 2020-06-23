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
  class SubscriptionProductVersion
    # 
    attr_accessor :activated_on

    # The billing cycle determines the rhythm with which the subscriber is billed. The charging may have different rhythm.
    attr_accessor :billing_cycle

    # The comment allows to provide a internal comment for the version. It helps to document why a product was changed. The comment is not disclosed to the subscriber.
    attr_accessor :comment

    # 
    attr_accessor :created_on

    # The default currency has to be used in all fees.
    attr_accessor :default_currency

    # The currencies which are enabled can be selected to define component fees. Currencies which are not enabled cannot be used to define fees.
    attr_accessor :enabled_currencies

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # The increment number represents the version number incremented whenever a new version is activated.
    attr_accessor :increment_number

    # The linked space id holds the ID of the space to which the entity belongs to.
    attr_accessor :linked_space_id

    # The minimal number of periods determines how long the subscription has to run before the subscription can be terminated.
    attr_accessor :minimal_number_of_periods

    # The product version name is the name of the product which is shown to the user for the version. When the visible product name should be changed for a particular product a new version has to be created which contains the new name of the product.
    attr_accessor :name

    # The number of notice periods determines the number of periods which need to be paid between the request to terminate the subscription and the final period.
    attr_accessor :number_of_notice_periods

    # 
    attr_accessor :obsoleted_on

    # The planned purge date indicates when the entity is permanently removed. When the date is null the entity is not planned to be removed.
    attr_accessor :planned_purge_date

    # Each product version is linked to a product.
    attr_accessor :product

    # The product version reference helps to identify the version. The reference is generated out of the product reference.
    attr_accessor :reference

    # 
    attr_accessor :retiring_finished_on

    # 
    attr_accessor :retiring_started_on

    # 
    attr_accessor :state

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activated_on' => :'activatedOn',
        :'billing_cycle' => :'billingCycle',
        :'comment' => :'comment',
        :'created_on' => :'createdOn',
        :'default_currency' => :'defaultCurrency',
        :'enabled_currencies' => :'enabledCurrencies',
        :'id' => :'id',
        :'increment_number' => :'incrementNumber',
        :'linked_space_id' => :'linkedSpaceId',
        :'minimal_number_of_periods' => :'minimalNumberOfPeriods',
        :'name' => :'name',
        :'number_of_notice_periods' => :'numberOfNoticePeriods',
        :'obsoleted_on' => :'obsoletedOn',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'product' => :'product',
        :'reference' => :'reference',
        :'retiring_finished_on' => :'retiringFinishedOn',
        :'retiring_started_on' => :'retiringStartedOn',
        :'state' => :'state',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activated_on' => :'DateTime',
        :'billing_cycle' => :'String',
        :'comment' => :'String',
        :'created_on' => :'DateTime',
        :'default_currency' => :'String',
        :'enabled_currencies' => :'Array<String>',
        :'id' => :'Integer',
        :'increment_number' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'minimal_number_of_periods' => :'Integer',
        :'name' => :'DatabaseTranslatedString',
        :'number_of_notice_periods' => :'Integer',
        :'obsoleted_on' => :'DateTime',
        :'planned_purge_date' => :'DateTime',
        :'product' => :'SubscriptionProduct',
        :'reference' => :'String',
        :'retiring_finished_on' => :'DateTime',
        :'retiring_started_on' => :'DateTime',
        :'state' => :'SubscriptionProductVersionState',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'activatedOn')
        self.activated_on = attributes[:'activatedOn']
      end

      if attributes.has_key?(:'billingCycle')
        self.billing_cycle = attributes[:'billingCycle']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'defaultCurrency')
        self.default_currency = attributes[:'defaultCurrency']
      end

      if attributes.has_key?(:'enabledCurrencies')
        if (value = attributes[:'enabledCurrencies']).is_a?(Array)
          self.enabled_currencies = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'incrementNumber')
        self.increment_number = attributes[:'incrementNumber']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'minimalNumberOfPeriods')
        self.minimal_number_of_periods = attributes[:'minimalNumberOfPeriods']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'numberOfNoticePeriods')
        self.number_of_notice_periods = attributes[:'numberOfNoticePeriods']
      end

      if attributes.has_key?(:'obsoletedOn')
        self.obsoleted_on = attributes[:'obsoletedOn']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.has_key?(:'retiringFinishedOn')
        self.retiring_finished_on = attributes[:'retiringFinishedOn']
      end

      if attributes.has_key?(:'retiringStartedOn')
        self.retiring_started_on = attributes[:'retiringStartedOn']
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
      if !@reference.nil? && @reference.to_s.length > 125
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 125.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reference.nil? && @reference.to_s.length > 125
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.length > 125
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 125.'
      end

      @reference = reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activated_on == o.activated_on &&
          billing_cycle == o.billing_cycle &&
          comment == o.comment &&
          created_on == o.created_on &&
          default_currency == o.default_currency &&
          enabled_currencies == o.enabled_currencies &&
          id == o.id &&
          increment_number == o.increment_number &&
          linked_space_id == o.linked_space_id &&
          minimal_number_of_periods == o.minimal_number_of_periods &&
          name == o.name &&
          number_of_notice_periods == o.number_of_notice_periods &&
          obsoleted_on == o.obsoleted_on &&
          planned_purge_date == o.planned_purge_date &&
          product == o.product &&
          reference == o.reference &&
          retiring_finished_on == o.retiring_finished_on &&
          retiring_started_on == o.retiring_started_on &&
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
      [activated_on, billing_cycle, comment, created_on, default_currency, enabled_currencies, id, increment_number, linked_space_id, minimal_number_of_periods, name, number_of_notice_periods, obsoleted_on, planned_purge_date, product, reference, retiring_finished_on, retiring_started_on, state, version].hash
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
