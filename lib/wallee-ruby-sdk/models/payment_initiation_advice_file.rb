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
  class PaymentInitiationAdviceFile
    # The created on date indicates the date on which the entity was stored into the database.
    attr_accessor :created_on

    # 
    attr_accessor :failure_message

    # 
    attr_accessor :file_generated_on

    # The shipping date indicates the date on which the pain file was transferred to an external processing system.
    attr_accessor :forwarded_on

    # A unique identifier for the object.
    attr_accessor :id

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # 
    attr_accessor :name

    # 
    attr_accessor :processed_on

    # 
    attr_accessor :processor

    # The object's current state.
    attr_accessor :state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_on' => :'createdOn',
        :'failure_message' => :'failureMessage',
        :'file_generated_on' => :'fileGeneratedOn',
        :'forwarded_on' => :'forwardedOn',
        :'id' => :'id',
        :'linked_space_id' => :'linkedSpaceId',
        :'name' => :'name',
        :'processed_on' => :'processedOn',
        :'processor' => :'processor',
        :'state' => :'state'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'created_on' => :'DateTime',
        :'failure_message' => :'String',
        :'file_generated_on' => :'DateTime',
        :'forwarded_on' => :'DateTime',
        :'id' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'name' => :'String',
        :'processed_on' => :'DateTime',
        :'processor' => :'PaymentProcessor',
        :'state' => :'PaymentInitiationAdviceFileState'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'createdOn')
        self.created_on = attributes[:'createdOn']
      end

      if attributes.has_key?(:'failureMessage')
        self.failure_message = attributes[:'failureMessage']
      end

      if attributes.has_key?(:'fileGeneratedOn')
        self.file_generated_on = attributes[:'fileGeneratedOn']
      end

      if attributes.has_key?(:'forwardedOn')
        self.forwarded_on = attributes[:'forwardedOn']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'linkedSpaceId')
        self.linked_space_id = attributes[:'linkedSpaceId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'processedOn')
        self.processed_on = attributes[:'processedOn']
      end

      if attributes.has_key?(:'processor')
        self.processor = attributes[:'processor']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
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
          created_on == o.created_on &&
          failure_message == o.failure_message &&
          file_generated_on == o.file_generated_on &&
          forwarded_on == o.forwarded_on &&
          id == o.id &&
          linked_space_id == o.linked_space_id &&
          name == o.name &&
          processed_on == o.processed_on &&
          processor == o.processor &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [created_on, failure_message, file_generated_on, forwarded_on, id, linked_space_id, name, processed_on, processor, state].hash
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
