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

require 'date'
require 'time'

module WalleeRubySdk
  class PaymentMethodConfiguration
    attr_accessor :data_collection_type

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # A customer-facing custom description for the payment method.
    attr_accessor :description

    # The URL to the image of the payment method displayed to the customer. If a custom image is defined, it will be used; otherwise, the default image of the payment method will be shown.
    attr_accessor :resolved_image_url

    attr_accessor :one_click_payment_mode

    # A customer-facing custom title for the payment method.
    attr_accessor :title

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The ID of the space this object belongs to.
    attr_accessor :space_id

    # The resource path to a custom image for the payment method, displayed to the customer for visual identification.
    attr_accessor :image_resource_path

    # When listing payment methods, they can be sorted by this number.
    attr_accessor :sort_order

    # The name used to identify the payment method configuration.
    attr_accessor :name

    # The description of the payment method displayed to the customer. If a custom description is defined, it will be used; otherwise, the default description of the payment method will be shown.
    attr_accessor :resolved_description

    # The title of the payment method displayed to the customer. If a custom title is defined, it will be used; otherwise, the default title of the payment method will be shown.
    attr_accessor :resolved_title

    attr_accessor :payment_method

    # A unique identifier for the object.
    attr_accessor :id

    attr_accessor :state

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
        :'data_collection_type' => :'dataCollectionType',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'description' => :'description',
        :'resolved_image_url' => :'resolvedImageUrl',
        :'one_click_payment_mode' => :'oneClickPaymentMode',
        :'title' => :'title',
        :'version' => :'version',
        :'linked_space_id' => :'linkedSpaceId',
        :'space_id' => :'spaceId',
        :'image_resource_path' => :'imageResourcePath',
        :'sort_order' => :'sortOrder',
        :'name' => :'name',
        :'resolved_description' => :'resolvedDescription',
        :'resolved_title' => :'resolvedTitle',
        :'payment_method' => :'paymentMethod',
        :'id' => :'id',
        :'state' => :'state'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'data_collection_type' => :'DataCollectionType',
        :'planned_purge_date' => :'Time',
        :'description' => :'Hash<String, String>',
        :'resolved_image_url' => :'String',
        :'one_click_payment_mode' => :'OneClickPaymentMode',
        :'title' => :'Hash<String, String>',
        :'version' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'space_id' => :'Integer',
        :'image_resource_path' => :'String',
        :'sort_order' => :'Integer',
        :'name' => :'String',
        :'resolved_description' => :'Hash<String, String>',
        :'resolved_title' => :'Hash<String, String>',
        :'payment_method' => :'PaymentMethod',
        :'id' => :'Integer',
        :'state' => :'CreationEntityState'
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
      unless attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::PaymentMethodConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::PaymentMethodConfiguration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_collection_type')
        self.data_collection_type = attributes[:'data_collection_type']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'description')
        if (value = attributes[:'description']).is_a?(Hash)
          self.description = value
        end
      end

      if attributes.key?(:'resolved_image_url')
        self.resolved_image_url = attributes[:'resolved_image_url']
      end

      if attributes.key?(:'one_click_payment_mode')
        self.one_click_payment_mode = attributes[:'one_click_payment_mode']
      end

      if attributes.key?(:'title')
        if (value = attributes[:'title']).is_a?(Hash)
          self.title = value
        end
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'space_id')
        self.space_id = attributes[:'space_id']
      end

      if attributes.key?(:'image_resource_path')
        self.image_resource_path = attributes[:'image_resource_path']
      end

      if attributes.key?(:'sort_order')
        self.sort_order = attributes[:'sort_order']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'resolved_description')
        if (value = attributes[:'resolved_description']).is_a?(Hash)
          self.resolved_description = value
        end
      end

      if attributes.key?(:'resolved_title')
        if (value = attributes[:'resolved_title']).is_a?(Hash)
          self.resolved_title = value
        end
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@space_id.nil? && @space_id < 1
        invalid_properties.push('invalid value for "space_id", must be greater than or equal to 1.')
      end

      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@space_id.nil? && @space_id < 1
      return false if !@name.nil? && @name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] space_id Value to be assigned
    def space_id=(space_id)
      if space_id.nil?
        fail ArgumentError, 'space_id cannot be nil'
      end

      if space_id < 1
        fail ArgumentError, 'invalid value for "space_id", must be greater than or equal to 1.'
      end

      @space_id = space_id
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_collection_type == o.data_collection_type &&
          planned_purge_date == o.planned_purge_date &&
          description == o.description &&
          resolved_image_url == o.resolved_image_url &&
          one_click_payment_mode == o.one_click_payment_mode &&
          title == o.title &&
          version == o.version &&
          linked_space_id == o.linked_space_id &&
          space_id == o.space_id &&
          image_resource_path == o.image_resource_path &&
          sort_order == o.sort_order &&
          name == o.name &&
          resolved_description == o.resolved_description &&
          resolved_title == o.resolved_title &&
          payment_method == o.payment_method &&
          id == o.id &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [data_collection_type, planned_purge_date, description, resolved_image_url, one_click_payment_mode, title, version, linked_space_id, space_id, image_resource_path, sort_order, name, resolved_description, resolved_title, payment_method, id, state].hash
    end    # Builds the object from hash
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
