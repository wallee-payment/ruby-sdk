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
  # The subscription charge represents a single charge carried out for a particular subscription.
  class SubscriptionChargeCreate
    # The merchant's reference used to identify the charge.
    attr_accessor :reference

    # The date and time when the execution of the charge is planned.
    attr_accessor :planned_execution_date

    attr_accessor :processing_type

    # A client-generated nonce which uniquely identifies some action to be executed. Subsequent requests with the same external ID do not execute the action again, but return the original result.
    attr_accessor :external_id

    # The URL to redirect the customer back to after they successfully authenticated their payment.
    attr_accessor :success_url

    # The subscription that the charge belongs to.
    attr_accessor :subscription

    # The URL to redirect the customer back to after they canceled or failed to authenticated their payment.
    attr_accessor :failed_url

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
        :'reference' => :'reference',
        :'planned_execution_date' => :'plannedExecutionDate',
        :'processing_type' => :'processingType',
        :'external_id' => :'externalId',
        :'success_url' => :'successUrl',
        :'subscription' => :'subscription',
        :'failed_url' => :'failedUrl'
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
        :'reference' => :'String',
        :'planned_execution_date' => :'Time',
        :'processing_type' => :'SubscriptionChargeProcessingType',
        :'external_id' => :'String',
        :'success_url' => :'String',
        :'subscription' => :'Integer',
        :'failed_url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::SubscriptionChargeCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::SubscriptionChargeCreate`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'planned_execution_date')
        self.planned_execution_date = attributes[:'planned_execution_date']
      end

      if attributes.key?(:'processing_type')
        self.processing_type = attributes[:'processing_type']
      else
        self.processing_type = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'subscription')
        self.subscription = attributes[:'subscription']
      else
        self.subscription = nil
      end

      if attributes.key?(:'failed_url')
        self.failed_url = attributes[:'failed_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@reference.nil? && @reference.to_s.length > 100
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if !@reference.nil? && @reference !~ pattern
        invalid_properties.push("invalid value for \"reference\", must conform to the pattern #{pattern}.")
      end

      if @processing_type.nil?
        invalid_properties.push('invalid value for "processing_type", processing_type cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if !@success_url.nil? && @success_url.to_s.length > 500
        invalid_properties.push('invalid value for "success_url", the character length must be smaller than or equal to 500.')
      end

      if !@success_url.nil? && @success_url.to_s.length < 9
        invalid_properties.push('invalid value for "success_url", the character length must be great than or equal to 9.')
      end

      if @subscription.nil?
        invalid_properties.push('invalid value for "subscription", subscription cannot be nil.')
      end

      if !@failed_url.nil? && @failed_url.to_s.length > 500
        invalid_properties.push('invalid value for "failed_url", the character length must be smaller than or equal to 500.')
      end

      if !@failed_url.nil? && @failed_url.to_s.length < 9
        invalid_properties.push('invalid value for "failed_url", the character length must be great than or equal to 9.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@reference.nil? && @reference.to_s.length > 100
      return false if !@reference.nil? && @reference !~ Regexp.new(/[	\x20-\x7e]*/)
      return false if @processing_type.nil?
      return false if @external_id.nil?
      return false if !@success_url.nil? && @success_url.to_s.length > 500
      return false if !@success_url.nil? && @success_url.to_s.length < 9
      return false if @subscription.nil?
      return false if !@failed_url.nil? && @failed_url.to_s.length > 500
      return false if !@failed_url.nil? && @failed_url.to_s.length < 9
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if reference.nil?
        fail ArgumentError, 'reference cannot be nil'
      end

      if reference.to_s.length > 100
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/[	\x20-\x7e]*/)
      if reference !~ pattern
        fail ArgumentError, "invalid value for \"reference\", must conform to the pattern #{pattern}."
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] processing_type Value to be assigned
    def processing_type=(processing_type)
      if processing_type.nil?
        fail ArgumentError, 'processing_type cannot be nil'
      end

      @processing_type = processing_type
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if external_id.nil?
        fail ArgumentError, 'external_id cannot be nil'
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] success_url Value to be assigned
    def success_url=(success_url)
      if success_url.nil?
        fail ArgumentError, 'success_url cannot be nil'
      end

      if success_url.to_s.length > 500
        fail ArgumentError, 'invalid value for "success_url", the character length must be smaller than or equal to 500.'
      end

      if success_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "success_url", the character length must be great than or equal to 9.'
      end

      @success_url = success_url
    end

    # Custom attribute writer method with validation
    # @param [Object] subscription Value to be assigned
    def subscription=(subscription)
      if subscription.nil?
        fail ArgumentError, 'subscription cannot be nil'
      end

      @subscription = subscription
    end

    # Custom attribute writer method with validation
    # @param [Object] failed_url Value to be assigned
    def failed_url=(failed_url)
      if failed_url.nil?
        fail ArgumentError, 'failed_url cannot be nil'
      end

      if failed_url.to_s.length > 500
        fail ArgumentError, 'invalid value for "failed_url", the character length must be smaller than or equal to 500.'
      end

      if failed_url.to_s.length < 9
        fail ArgumentError, 'invalid value for "failed_url", the character length must be great than or equal to 9.'
      end

      @failed_url = failed_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          reference == o.reference &&
          planned_execution_date == o.planned_execution_date &&
          processing_type == o.processing_type &&
          external_id == o.external_id &&
          success_url == o.success_url &&
          subscription == o.subscription &&
          failed_url == o.failed_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [reference, planned_execution_date, processing_type, external_id, success_url, subscription, failed_url].hash
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
