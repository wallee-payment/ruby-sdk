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
  # Represents the execution of a query which has been submitted to Analytics.
  class AnalyticsQueryExecution
    # The account in which the query has been executed.
    attr_accessor :account

    # The error message if and only if the query has failed, otherwise null.
    attr_accessor :error_message

    # The External ID of the query if one had been specified; otherwise null.
    attr_accessor :external_id

    # The reason of the failure if and only if the query has failed, otherwise null.
    attr_accessor :failure_reason

    # A unique identifier for the object.
    attr_accessor :id

    # The time at which processing of the query has finished (either successfully or by failure or by cancelation). Will be null if the query execution has not finished yet.
    attr_accessor :processing_end_time

    # The time at which processing of the query has started (never null).
    attr_accessor :processing_start_time

    # The SQL statement which has been submitted for execution.
    attr_accessor :query_string

    # The amount of data scanned while processing the query (in GB). (Note that this amount may increase over time while the query is still being processed and not finished yet.)
    attr_accessor :scanned_data_in_gb

    # The maximal amount of scanned data that this query is allowed to scan. After this limit is reached query will be canceled by the system. 
    attr_accessor :scanned_data_limit

    # The spaces in which the query has been executed. May be empty if all spaces of the specified account have been queried.
    attr_accessor :spaces

    # The current state of the query execution.
    attr_accessor :state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'error_message' => :'errorMessage',
        :'external_id' => :'externalId',
        :'failure_reason' => :'failureReason',
        :'id' => :'id',
        :'processing_end_time' => :'processingEndTime',
        :'processing_start_time' => :'processingStartTime',
        :'query_string' => :'queryString',
        :'scanned_data_in_gb' => :'scannedDataInGb',
        :'scanned_data_limit' => :'scannedDataLimit',
        :'spaces' => :'spaces',
        :'state' => :'state'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account' => :'Integer',
        :'error_message' => :'String',
        :'external_id' => :'String',
        :'failure_reason' => :'FailureReason',
        :'id' => :'Integer',
        :'processing_end_time' => :'DateTime',
        :'processing_start_time' => :'DateTime',
        :'query_string' => :'String',
        :'scanned_data_in_gb' => :'Float',
        :'scanned_data_limit' => :'Float',
        :'spaces' => :'Array<Integer>',
        :'state' => :'AnalyticsQueryExecutionState'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'errorMessage')
        self.error_message = attributes[:'errorMessage']
      end

      if attributes.has_key?(:'externalId')
        self.external_id = attributes[:'externalId']
      end

      if attributes.has_key?(:'failureReason')
        self.failure_reason = attributes[:'failureReason']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'processingEndTime')
        self.processing_end_time = attributes[:'processingEndTime']
      end

      if attributes.has_key?(:'processingStartTime')
        self.processing_start_time = attributes[:'processingStartTime']
      end

      if attributes.has_key?(:'queryString')
        self.query_string = attributes[:'queryString']
      end

      if attributes.has_key?(:'scannedDataInGb')
        self.scanned_data_in_gb = attributes[:'scannedDataInGb']
      end

      if attributes.has_key?(:'scannedDataLimit')
        self.scanned_data_limit = attributes[:'scannedDataLimit']
      end

      if attributes.has_key?(:'spaces')
        if (value = attributes[:'spaces']).is_a?(Array)
          self.spaces = value
        end
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
          account == o.account &&
          error_message == o.error_message &&
          external_id == o.external_id &&
          failure_reason == o.failure_reason &&
          id == o.id &&
          processing_end_time == o.processing_end_time &&
          processing_start_time == o.processing_start_time &&
          query_string == o.query_string &&
          scanned_data_in_gb == o.scanned_data_in_gb &&
          scanned_data_limit == o.scanned_data_limit &&
          spaces == o.spaces &&
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
      [account, error_message, external_id, failure_reason, id, processing_end_time, processing_start_time, query_string, scanned_data_in_gb, scanned_data_limit, spaces, state].hash
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
