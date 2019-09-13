=begin
wallee API: 2.0.0

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
  class RestCountry
    # The ISO code 2 letter identifies the country by two chars as defined in ISO 3166-1 (e.g. US, DE, CH).
    attr_accessor :iso_code2_letter

    # The ISO code 3 letter identifies the country by three chars as defined in ISO 3166-1 (e.g. CHE, USA, GBR).
    attr_accessor :iso_code3_letter

    # The address format of the country indicates how an address has to look like for the country.
    attr_accessor :address_format

    # The name labels the country by a name in English.
    attr_accessor :name

    # The numeric code identifies the country by a three digit number as defined in ISO 3166-1 (e.g. 840, 826, 756).
    attr_accessor :numeric_code

    # The state codes field is a list of all states associated with this country. The list contains the identifiers of the states. The identifiers corresponds to the ISO 3166-2 subdivision identifier.
    attr_accessor :state_codes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'iso_code2_letter' => :'ISOCode2Letter',
        :'iso_code3_letter' => :'ISOCode3Letter',
        :'address_format' => :'addressFormat',
        :'name' => :'name',
        :'numeric_code' => :'numericCode',
        :'state_codes' => :'stateCodes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'iso_code2_letter' => :'String',
        :'iso_code3_letter' => :'String',
        :'address_format' => :'RestAddressFormat',
        :'name' => :'String',
        :'numeric_code' => :'String',
        :'state_codes' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ISOCode2Letter')
        self.iso_code2_letter = attributes[:'ISOCode2Letter']
      end

      if attributes.has_key?(:'ISOCode3Letter')
        self.iso_code3_letter = attributes[:'ISOCode3Letter']
      end

      if attributes.has_key?(:'addressFormat')
        self.address_format = attributes[:'addressFormat']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'numericCode')
        self.numeric_code = attributes[:'numericCode']
      end

      if attributes.has_key?(:'stateCodes')
        if (value = attributes[:'stateCodes']).is_a?(Array)
          self.state_codes = value
        end
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
          iso_code2_letter == o.iso_code2_letter &&
          iso_code3_letter == o.iso_code3_letter &&
          address_format == o.address_format &&
          name == o.name &&
          numeric_code == o.numeric_code &&
          state_codes == o.state_codes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [iso_code2_letter, iso_code3_letter, address_format, name, numeric_code, state_codes].hash
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
