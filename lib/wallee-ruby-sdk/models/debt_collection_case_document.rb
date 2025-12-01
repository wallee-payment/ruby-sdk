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
  class DebtCollectionCaseDocument
    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The file name of the document.
    attr_accessor :file_name

    # The date and time when the object is planned to be permanently removed. If the value is empty, the object will not be removed.
    attr_accessor :planned_purge_date

    # The debt collection case that this document belongs to.
    attr_accessor :debt_collection_case

    # A unique identifier for the object.
    attr_accessor :id

    # The MIME type of the document's content.
    attr_accessor :mime_type

    # The date and time when the object was created.
    attr_accessor :created_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # A unique identifier of the document.
    attr_accessor :unique_id

    # The labels providing additional information about the object.
    attr_accessor :labels

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'linked_space_id' => :'linkedSpaceId',
        :'file_name' => :'fileName',
        :'planned_purge_date' => :'plannedPurgeDate',
        :'debt_collection_case' => :'debtCollectionCase',
        :'id' => :'id',
        :'mime_type' => :'mimeType',
        :'created_on' => :'createdOn',
        :'version' => :'version',
        :'unique_id' => :'uniqueId',
        :'labels' => :'labels'
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
        :'file_name' => :'String',
        :'planned_purge_date' => :'Time',
        :'debt_collection_case' => :'Integer',
        :'id' => :'Integer',
        :'mime_type' => :'String',
        :'created_on' => :'Time',
        :'version' => :'Integer',
        :'unique_id' => :'String',
        :'labels' => :'Array<Label>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::DebtCollectionCaseDocument` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::DebtCollectionCaseDocument`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'planned_purge_date')
        self.planned_purge_date = attributes[:'planned_purge_date']
      end

      if attributes.key?(:'debt_collection_case')
        self.debt_collection_case = attributes[:'debt_collection_case']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'mime_type')
        self.mime_type = attributes[:'mime_type']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@file_name.nil? && @file_name.to_s.length > 100
        invalid_properties.push('invalid value for "file_name", the character length must be smaller than or equal to 100.')
      end

      if !@unique_id.nil? && @unique_id.to_s.length > 500
        invalid_properties.push('invalid value for "unique_id", the character length must be smaller than or equal to 500.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@file_name.nil? && @file_name.to_s.length > 100
      return false if !@unique_id.nil? && @unique_id.to_s.length > 500
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] file_name Value to be assigned
    def file_name=(file_name)
      if file_name.nil?
        fail ArgumentError, 'file_name cannot be nil'
      end

      if file_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "file_name", the character length must be smaller than or equal to 100.'
      end

      @file_name = file_name
    end

    # Custom attribute writer method with validation
    # @param [Object] unique_id Value to be assigned
    def unique_id=(unique_id)
      if unique_id.nil?
        fail ArgumentError, 'unique_id cannot be nil'
      end

      if unique_id.to_s.length > 500
        fail ArgumentError, 'invalid value for "unique_id", the character length must be smaller than or equal to 500.'
      end

      @unique_id = unique_id
    end

    # Custom attribute writer method with validation
    # @param [Object] labels Value to be assigned
    def labels=(labels)
      if labels.nil?
        fail ArgumentError, 'labels cannot be nil'
      end

      @labels = labels
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          linked_space_id == o.linked_space_id &&
          file_name == o.file_name &&
          planned_purge_date == o.planned_purge_date &&
          debt_collection_case == o.debt_collection_case &&
          id == o.id &&
          mime_type == o.mime_type &&
          created_on == o.created_on &&
          version == o.version &&
          unique_id == o.unique_id &&
          labels == o.labels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [linked_space_id, file_name, planned_purge_date, debt_collection_case, id, mime_type, created_on, version, unique_id, labels].hash
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
