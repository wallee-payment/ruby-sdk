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
  class BillingCycleModel
    attr_accessor :month

    attr_accessor :customization

    attr_accessor :day_of_month

    attr_accessor :weekly_day

    # Billing Cycle type multiplied by Number of Periods defines billing cycle duration, e.g. 3 months. Monthly types require 1-12; weekly and yearly types require 1-9 periods; and daily types require 1-30.
    attr_accessor :number_of_periods

    attr_accessor :billing_cycle_type

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
        :'month' => :'month',
        :'customization' => :'customization',
        :'day_of_month' => :'dayOfMonth',
        :'weekly_day' => :'weeklyDay',
        :'number_of_periods' => :'numberOfPeriods',
        :'billing_cycle_type' => :'billingCycleType'
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
        :'month' => :'DisplayableMonth',
        :'customization' => :'BillingDayCustomization',
        :'day_of_month' => :'Integer',
        :'weekly_day' => :'DisplayableDayOfWeek',
        :'number_of_periods' => :'Integer',
        :'billing_cycle_type' => :'BillingCycleType'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::BillingCycleModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::BillingCycleModel`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'month')
        self.month = attributes[:'month']
      end

      if attributes.key?(:'customization')
        self.customization = attributes[:'customization']
      end

      if attributes.key?(:'day_of_month')
        self.day_of_month = attributes[:'day_of_month']
      end

      if attributes.key?(:'weekly_day')
        self.weekly_day = attributes[:'weekly_day']
      end

      if attributes.key?(:'number_of_periods')
        self.number_of_periods = attributes[:'number_of_periods']
      else
        self.number_of_periods = nil
      end

      if attributes.key?(:'billing_cycle_type')
        self.billing_cycle_type = attributes[:'billing_cycle_type']
      else
        self.billing_cycle_type = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @number_of_periods.nil?
        invalid_properties.push('invalid value for "number_of_periods", number_of_periods cannot be nil.')
      end

      if @number_of_periods < 1
        invalid_properties.push('invalid value for "number_of_periods", must be greater than or equal to 1.')
      end

      if @billing_cycle_type.nil?
        invalid_properties.push('invalid value for "billing_cycle_type", billing_cycle_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @number_of_periods.nil?
      return false if @number_of_periods < 1
      return false if @billing_cycle_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_periods Value to be assigned
    def number_of_periods=(number_of_periods)
      if number_of_periods.nil?
        fail ArgumentError, 'number_of_periods cannot be nil'
      end

      if number_of_periods < 1
        fail ArgumentError, 'invalid value for "number_of_periods", must be greater than or equal to 1.'
      end

      @number_of_periods = number_of_periods
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_cycle_type Value to be assigned
    def billing_cycle_type=(billing_cycle_type)
      if billing_cycle_type.nil?
        fail ArgumentError, 'billing_cycle_type cannot be nil'
      end

      @billing_cycle_type = billing_cycle_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          month == o.month &&
          customization == o.customization &&
          day_of_month == o.day_of_month &&
          weekly_day == o.weekly_day &&
          number_of_periods == o.number_of_periods &&
          billing_cycle_type == o.billing_cycle_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [month, customization, day_of_month, weekly_day, number_of_periods, billing_cycle_type].hash
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
