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
  class Permission
    # The group that this permission belongs to.
    attr_accessor :parent

    attr_accessor :feature

    # The localized name of the object.
    attr_accessor :name

    # All parents of this permission up to the root of the permission tree.
    attr_accessor :path_to_root

    attr_accessor :web_app_enabled

    # The localized description of the object.
    attr_accessor :description

    # A unique identifier for the object.
    attr_accessor :id

    # Whether this is a leaf in the tree of permissions, and not a group.
    attr_accessor :leaf

    # The localized name of the object.
    attr_accessor :title

    # Whether this is a permission group.
    attr_accessor :group

    # Whether users with this permission are required to enable two-factor authentication.
    attr_accessor :two_factor_required

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'parent' => :'parent',
        :'feature' => :'feature',
        :'name' => :'name',
        :'path_to_root' => :'pathToRoot',
        :'web_app_enabled' => :'webAppEnabled',
        :'description' => :'description',
        :'id' => :'id',
        :'leaf' => :'leaf',
        :'title' => :'title',
        :'group' => :'group',
        :'two_factor_required' => :'twoFactorRequired'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'parent' => :'Integer',
        :'feature' => :'Feature',
        :'name' => :'Hash<String, String>',
        :'path_to_root' => :'Array<Integer>',
        :'web_app_enabled' => :'Boolean',
        :'description' => :'Hash<String, String>',
        :'id' => :'Integer',
        :'leaf' => :'Boolean',
        :'title' => :'Hash<String, String>',
        :'group' => :'Boolean',
        :'two_factor_required' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::Permission` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::Permission`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'parent')
        self.parent = attributes[:'parent']
      end

      if attributes.key?(:'feature')
        self.feature = attributes[:'feature']
      end

      if attributes.key?(:'name')
        if (value = attributes[:'name']).is_a?(Hash)
          self.name = value
        end
      end

      if attributes.key?(:'path_to_root')
        if (value = attributes[:'path_to_root']).is_a?(Array)
          self.path_to_root = value
        end
      end

      if attributes.key?(:'web_app_enabled')
        self.web_app_enabled = attributes[:'web_app_enabled']
      end

      if attributes.key?(:'description')
        if (value = attributes[:'description']).is_a?(Hash)
          self.description = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'leaf')
        self.leaf = attributes[:'leaf']
      end

      if attributes.key?(:'title')
        if (value = attributes[:'title']).is_a?(Hash)
          self.title = value
        end
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'two_factor_required')
        self.two_factor_required = attributes[:'two_factor_required']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent == o.parent &&
          feature == o.feature &&
          name == o.name &&
          path_to_root == o.path_to_root &&
          web_app_enabled == o.web_app_enabled &&
          description == o.description &&
          id == o.id &&
          leaf == o.leaf &&
          title == o.title &&
          group == o.group &&
          two_factor_required == o.two_factor_required
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [parent, feature, name, path_to_root, web_app_enabled, description, id, leaf, title, group, two_factor_required].hash
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
