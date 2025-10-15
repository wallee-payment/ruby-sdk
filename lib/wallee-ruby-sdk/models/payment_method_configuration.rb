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
  class PaymentMethodConfiguration
    # The data collection type specifies how the payment information is collected.
    attr_accessor :data_collection_type

    # A customer-facing custom description for the payment method.
    attr_accessor :description

    # A unique identifier for the object.
    attr_accessor :id

    # The resource path to a custom image for the payment method, displayed to the customer for visual identification.
    attr_accessor :image_resource_path

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The name used to identify the payment method configuration.
    attr_accessor :name

    # The one-click payment mode determines whether the customer can save their payment details for later payments.
    attr_accessor :one_click_payment_mode

    # The payment method that the configuration is for.
    attr_accessor :payment_method

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The description of the payment method displayed to the customer. If a custom description is defined, it will be used; otherwise, the default description of the payment method will be shown.
    attr_accessor :resolved_description

    # The URL to the image of the payment method displayed to the customer. If a custom image is defined, it will be used; otherwise, the default image of the payment method will be shown.
    attr_accessor :resolved_image_url

    # The title of the payment method displayed to the customer. If a custom title is defined, it will be used; otherwise, the default title of the payment method will be shown.
    attr_accessor :resolved_title

    # When listing payment methods, they can be sorted by this number.
    attr_accessor :sort_order

    # The ID of the space this object belongs to.
    attr_accessor :space_id

    # The object's current state.
    attr_accessor :state

    # A customer-facing custom title for the payment method.
    attr_accessor :title

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'data_collection_type' => :'dataCollectionType',
        :'description' => :'description',
        :'id' => :'id',
        :'image_resource_path' => :'imageResourcePath',
        :'linked_space_id' => :'linkedSpaceId',
        :'name' => :'name',
        :'one_click_payment_mode' => :'oneClickPaymentMode',
        :'payment_method' => :'paymentMethod',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'resolved_description' => :'resolvedDescription',
        :'resolved_image_url' => :'resolvedImageUrl',
        :'resolved_title' => :'resolvedTitle',
        :'sort_order' => :'sortOrder',
        :'space_id' => :'spaceId',
        :'state' => :'state',
        :'title' => :'title',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'data_collection_type' => :'DataCollectionType',
        :'description' => :'Hash<String, String>',
        :'id' => :'Integer',
        :'image_resource_path' => :'ResourcePath',
        :'linked_space_id' => :'Integer',
        :'name' => :'String',
        :'one_click_payment_mode' => :'OneClickPaymentMode',
        :'payment_method' => :'Integer',
        :'planned_purge_date' => :'DateTime',
        :'resolved_description' => :'Hash<String, String>',
        :'resolved_image_url' => :'String',
        :'resolved_title' => :'Hash<String, String>',
        :'sort_order' => :'Integer',
        :'space_id' => :'Integer',
        :'state' => :'CreationEntityState',
        :'title' => :'Hash<String, String>',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'dataCollectionType')
        self.data_collection_type = attributes[:'dataCollectionType']
      end

      if attributes.has_key?(:'description')
        if (value = attributes[:'description']).is_a?(Hash)
          self.description = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'imageResourcePath')
        self.image_resource_path = attributes[:'imageResourcePath']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'oneClickPaymentMode')
        self.one_click_payment_mode = attributes[:'oneClickPaymentMode']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'plannedPurgeDate')
        self.planned_purge_date = attributes[:'plannedPurgeDate']
      end

      if attributes.has_key?(:'resolvedDescription')
        if (value = attributes[:'resolvedDescription']).is_a?(Hash)
          self.resolved_description = value
        end
      end

      if attributes.has_key?(:'resolvedImageUrl')
        self.resolved_image_url = attributes[:'resolvedImageUrl']
      end

      if attributes.has_key?(:'resolvedTitle')
        if (value = attributes[:'resolvedTitle']).is_a?(Hash)
          self.resolved_title = value
        end
      end

      if attributes.has_key?(:'sortOrder')
        self.sort_order = attributes[:'sortOrder']
      end

      if attributes.has_key?(:'spaceId')
        self.space_id = attributes[:'spaceId']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'title')
        if (value = attributes[:'title']).is_a?(Hash)
          self.title = value
        end
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
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
          description == o.description &&
          id == o.id &&
          image_resource_path == o.image_resource_path &&
          linked_space_id == o.linked_space_id &&
          name == o.name &&
          one_click_payment_mode == o.one_click_payment_mode &&
          payment_method == o.payment_method &&
          planned_purge_date == o.planned_purge_date &&
          resolved_description == o.resolved_description &&
          resolved_image_url == o.resolved_image_url &&
          resolved_title == o.resolved_title &&
          sort_order == o.sort_order &&
          space_id == o.space_id &&
          state == o.state &&
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
      [data_collection_type, description, id, image_resource_path, linked_space_id, name, one_click_payment_mode, payment_method, planned_purge_date, resolved_description, resolved_image_url, resolved_title, sort_order, space_id, state, title, version].hash
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
