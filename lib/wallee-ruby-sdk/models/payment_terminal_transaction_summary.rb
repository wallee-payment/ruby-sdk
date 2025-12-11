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
  class PaymentTerminalTransactionSummary
    # The unique reference assigned to this transaction summary.
    attr_accessor :reference

    # The ID of the space this object belongs to.
    attr_accessor :linked_space_id

    # The total monetary amounts of all transactions, organized and grouped by brand and currency.
    attr_accessor :transaction_sums

    # Detailed breakdown of Dynamic Currency Conversion (DCC) transactions, showing transaction amounts in both original and converted currencies, grouped by payment brand.
    attr_accessor :dcc_transaction_sums

    # The end of the time period covered by this summary report.
    attr_accessor :ended_on

    # The overall transaction volume in each processed currency.
    attr_accessor :balance_amount_per_currency

    # The payment terminal that processed the transactions included in this summary report.
    attr_accessor :payment_terminal

    # The HTML content of the transaction summary receipt.
    attr_accessor :receipt

    # A unique identifier for the object.
    attr_accessor :id

    # The total count of all transactions processed by the terminal during the summary period.
    attr_accessor :number_of_transactions

    # The beginning of the time period covered by this summary report.
    attr_accessor :started_on

    # The version is used for optimistic locking and incremented whenever the object is updated.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference' => :'reference',
        :'linked_space_id' => :'linkedSpaceId',
        :'transaction_sums' => :'transactionSums',
        :'dcc_transaction_sums' => :'dccTransactionSums',
        :'ended_on' => :'endedOn',
        :'balance_amount_per_currency' => :'balanceAmountPerCurrency',
        :'payment_terminal' => :'paymentTerminal',
        :'receipt' => :'receipt',
        :'id' => :'id',
        :'number_of_transactions' => :'numberOfTransactions',
        :'started_on' => :'startedOn',
        :'version' => :'version'
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
        :'reference' => :'Integer',
        :'linked_space_id' => :'Integer',
        :'transaction_sums' => :'Array<PaymentTerminalTransactionSum>',
        :'dcc_transaction_sums' => :'Array<PaymentTerminalDccTransactionSum>',
        :'ended_on' => :'Time',
        :'balance_amount_per_currency' => :'Hash<String, Float>',
        :'payment_terminal' => :'Integer',
        :'receipt' => :'String',
        :'id' => :'Integer',
        :'number_of_transactions' => :'Integer',
        :'started_on' => :'Time',
        :'version' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `WalleeRubySdk::PaymentTerminalTransactionSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `WalleeRubySdk::PaymentTerminalTransactionSummary`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'linked_space_id')
        self.linked_space_id = attributes[:'linked_space_id']
      end

      if attributes.key?(:'transaction_sums')
        if (value = attributes[:'transaction_sums']).is_a?(Array)
          self.transaction_sums = value
        end
      end

      if attributes.key?(:'dcc_transaction_sums')
        if (value = attributes[:'dcc_transaction_sums']).is_a?(Array)
          self.dcc_transaction_sums = value
        end
      end

      if attributes.key?(:'ended_on')
        self.ended_on = attributes[:'ended_on']
      end

      if attributes.key?(:'balance_amount_per_currency')
        if (value = attributes[:'balance_amount_per_currency']).is_a?(Hash)
          self.balance_amount_per_currency = value
        end
      end

      if attributes.key?(:'payment_terminal')
        self.payment_terminal = attributes[:'payment_terminal']
      end

      if attributes.key?(:'receipt')
        self.receipt = attributes[:'receipt']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'number_of_transactions')
        self.number_of_transactions = attributes[:'number_of_transactions']
      end

      if attributes.key?(:'started_on')
        self.started_on = attributes[:'started_on']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
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
          reference == o.reference &&
          linked_space_id == o.linked_space_id &&
          transaction_sums == o.transaction_sums &&
          dcc_transaction_sums == o.dcc_transaction_sums &&
          ended_on == o.ended_on &&
          balance_amount_per_currency == o.balance_amount_per_currency &&
          payment_terminal == o.payment_terminal &&
          receipt == o.receipt &&
          id == o.id &&
          number_of_transactions == o.number_of_transactions &&
          started_on == o.started_on &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [reference, linked_space_id, transaction_sums, dcc_transaction_sums, ended_on, balance_amount_per_currency, payment_terminal, receipt, id, number_of_transactions, started_on, version].hash
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
