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
  class ProductSetupFee
    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    attr_accessor :component

    # The localized name of the fee that is displayed to the customer.
    attr_accessor :name

    # The localized description of the fee that is displayed to the customer.
    attr_accessor :description

    # The amount charged to the customer once when they subscribe to a subscription.
    attr_accessor :setup_fee

    # A unique identifier for the object.
    attr_accessor :id

    # The amount charged to the customer when a subscription is downgraded.
    attr_accessor :on_downgrade_credited_amount

    attr_accessor :type

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The amount charged to the customer when a subscription is upgraded.
    attr_accessor :on_upgrade_credited_amount

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
        :'linked_space_id' => :'linkedSpaceId',
        :'component' => :'component',
        :'name' => :'name',
        :'description' => :'description',
        :'setup_fee' => :'setupFee',
        :'id' => :'id',
        :'on_downgrade_credited_amount' => :'onDowngradeCreditedAmount',
        :'type' => :'type',
        :'version' => :'version',
        :'on_upgrade_credited_amount' => :'onUpgradeCreditedAmount'
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
        :'linked_space_id' => :'Integer',
        :'component' => :'SubscriptionProductComponent',
        :'name' => :'Hash<String, String>',
        :'description' => :'Hash<String, String>',
        :'setup_fee' => :'Array<PersistableCurrencyAmount>',
        :'id' => :'Integer',
        :'on_downgrade_credited_amount' => :'Array<PersistableCurrencyAmount>',
        :'type' => :'ProductFeeType',
        :'version' => :'Integer',
        :'on_upgrade_credited_amount' => :'Array<PersistableCurrencyAmount>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::ProductSetupFee` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::ProductSetupFee`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'component')
        self.component = attributes[:'component']
      end

      if attributes.key?(:'name')
        if (value = attributes[:'name']).is_a?(Hash)
          self.name = value
        end
      end

      if attributes.key?(:'description')
        if (value = attributes[:'description']).is_a?(Hash)
          self.description = value
        end
      end

      if attributes.key?(:'setup_fee')
        if (value = attributes[:'setup_fee']).is_a?(Array)
          self.setup_fee = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'on_downgrade_credited_amount')
        if (value = attributes[:'on_downgrade_credited_amount']).is_a?(Array)
          self.on_downgrade_credited_amount = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'on_upgrade_credited_amount')
        if (value = attributes[:'on_upgrade_credited_amount']).is_a?(Array)
          self.on_upgrade_credited_amount = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@setup_fee.nil? && @setup_fee.length < 1
        invalid_properties.push('invalid value for "setup_fee", number of items must be greater than or equal to 1.')
      end

      if !@on_downgrade_credited_amount.nil? && @on_downgrade_credited_amount.length < 1
        invalid_properties.push('invalid value for "on_downgrade_credited_amount", number of items must be greater than or equal to 1.')
      end

      if !@on_upgrade_credited_amount.nil? && @on_upgrade_credited_amount.length < 1
        invalid_properties.push('invalid value for "on_upgrade_credited_amount", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@setup_fee.nil? && @setup_fee.length < 1
      return false if !@on_downgrade_credited_amount.nil? && @on_downgrade_credited_amount.length < 1
      return false if !@on_upgrade_credited_amount.nil? && @on_upgrade_credited_amount.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] setup_fee Value to be assigned
    def setup_fee=(setup_fee)
      if setup_fee.nil?
        fail ArgumentError, 'setup_fee cannot be nil'
      end

      if setup_fee.length < 1
        fail ArgumentError, 'invalid value for "setup_fee", number of items must be greater than or equal to 1.'
      end

      @setup_fee = setup_fee
    end

    # Custom attribute writer method with validation
    # @param [Object] on_downgrade_credited_amount Value to be assigned
    def on_downgrade_credited_amount=(on_downgrade_credited_amount)
      if on_downgrade_credited_amount.nil?
        fail ArgumentError, 'on_downgrade_credited_amount cannot be nil'
      end

      if on_downgrade_credited_amount.length < 1
        fail ArgumentError, 'invalid value for "on_downgrade_credited_amount", number of items must be greater than or equal to 1.'
      end

      @on_downgrade_credited_amount = on_downgrade_credited_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] on_upgrade_credited_amount Value to be assigned
    def on_upgrade_credited_amount=(on_upgrade_credited_amount)
      if on_upgrade_credited_amount.nil?
        fail ArgumentError, 'on_upgrade_credited_amount cannot be nil'
      end

      if on_upgrade_credited_amount.length < 1
        fail ArgumentError, 'invalid value for "on_upgrade_credited_amount", number of items must be greater than or equal to 1.'
      end

      @on_upgrade_credited_amount = on_upgrade_credited_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          linked_space_id == o.linked_space_id &&
          component == o.component &&
          name == o.name &&
          description == o.description &&
          setup_fee == o.setup_fee &&
          id == o.id &&
          on_downgrade_credited_amount == o.on_downgrade_credited_amount &&
          type == o.type &&
          version == o.version &&
          on_upgrade_credited_amount == o.on_upgrade_credited_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [linked_space_id, component, name, description, setup_fee, id, on_downgrade_credited_amount, type, version, on_upgrade_credited_amount].hash
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
