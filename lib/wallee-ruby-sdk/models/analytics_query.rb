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
  # Represents a query to be submitted for execution in Analytics.
  class AnalyticsQuery
    # The mandatory ID of an account in which the query shall be executed. Must be a valid account ID greater than 0.
    attr_accessor :account_id

    # A client generated nonce which uniquely identifies the query to be executed. Subsequent submissions with the same external ID will not re-execute the query but instead return the existing execution with that ID. Either the External ID or a Maximal Cache Age greater than 0 must be specified. If both are specified the External ID will have precedence and the Maximal Cache Age will be ignored.
    attr_accessor :external_id

    # The maximal age in minutes of cached query executions to return. If an equivalent query execution with the same Query String, Account ID and Spaces parameters not older than the specified age is already available that execution will be returned instead of a newly started execution. Set to 0 or null (and set a unique, previously unused External ID) to force a new query execution irrespective of previous executions. Either the External ID or a Cache Duration greater than 0 must be specified. If both are specified, the External ID will be preferred (and the Maximal Cache Age ignored).
    attr_accessor :max_cache_age

    # The SQL statement which is being submitted for execution. Must be a valid PrestoDB/Athena SQL statement.
    attr_accessor :query_string

    # The maximal amount of scanned data that this query is allowed to scan. After this limit is reached query will be canceled by the system. 
    attr_accessor :scanned_data_limit

    # The IDs of the spaces in which the query shall be executed. At most 5 space IDs may be specified. All specified spaces must be owned by the account specified by the accountId property. The spaces property may be missing or empty to query all spaces of the specified account.
    attr_accessor :space_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'external_id' => :'externalId',
        :'max_cache_age' => :'maxCacheAge',
        :'query_string' => :'queryString',
        :'scanned_data_limit' => :'scannedDataLimit',
        :'space_ids' => :'spaceIds'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'Integer',
        :'external_id' => :'String',
        :'max_cache_age' => :'Integer',
        :'query_string' => :'String',
        :'scanned_data_limit' => :'Float',
        :'space_ids' => :'Array<Integer>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'maxCacheAge')
        self.max_cache_age = attributes[:'maxCacheAge']
      end

      if attributes.has_key?(:'queryString')
        self.query_string = attributes[:'queryString']
      end

      if attributes.has_key?(:'scannedDataLimit')
        self.scanned_data_limit = attributes[:'scannedDataLimit']
      end

      if attributes.has_key?(:'spaceIds')
        if (value = attributes[:'spaceIds']).is_a?(Array)
          self.space_ids = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if !@query_string.nil? && @query_string.to_s.length > 4096
        invalid_properties.push('invalid value for "query_string", the character length must be smaller than or equal to 4096.')
      end

      if !@query_string.nil? && @query_string.to_s.length < 1
        invalid_properties.push('invalid value for "query_string", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_id.nil?
      return false if !@query_string.nil? && @query_string.to_s.length > 4096
      return false if !@query_string.nil? && @query_string.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] query_string Value to be assigned
    def query_string=(query_string)
      if !query_string.nil? && query_string.to_s.length > 4096
        fail ArgumentError, 'invalid value for "query_string", the character length must be smaller than or equal to 4096.'
      end

      if !query_string.nil? && query_string.to_s.length < 1
        fail ArgumentError, 'invalid value for "query_string", the character length must be great than or equal to 1.'
      end

      @query_string = query_string
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          external_id == o.external_id &&
          max_cache_age == o.max_cache_age &&
          query_string == o.query_string &&
          scanned_data_limit == o.scanned_data_limit &&
          space_ids == o.space_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, external_id, max_cache_age, query_string, scanned_data_limit, space_ids].hash
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
