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

require "uri"

module Wallee
  class PaymentTerminalTillService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Perform Payment Terminal Transaction
    # Starts a payment terminal transaction and waits for its completion. If the call returns with a long polling timeout status, you may try again. The processing of the transaction will be picked up where it was left off.
    # @param space_id 
    # @param transaction_id The ID of the transaction which is used to process with the terminal.
    # @param terminal_id The ID of the terminal which should be used to process the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language in which the messages should be rendered in.
    # @return [Transaction]
    def perform_transaction(space_id, transaction_id, terminal_id, opts = {})
      data, _status_code, _headers = perform_transaction_with_http_info(space_id, transaction_id, terminal_id, opts)
      return data
    end

    # Perform Payment Terminal Transaction
    # Starts a payment terminal transaction and waits for its completion. If the call returns with a long polling timeout status, you may try again. The processing of the transaction will be picked up where it was left off.
    # @param space_id 
    # @param transaction_id The ID of the transaction which is used to process with the terminal.
    # @param terminal_id The ID of the terminal which should be used to process the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language in which the messages should be rendered in.
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def perform_transaction_with_http_info(space_id, transaction_id, terminal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalTillService.perform_transaction ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalTillService.perform_transaction" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTerminalTillService.perform_transaction" if transaction_id.nil?
      # verify the required parameter 'terminal_id' is set
      fail ArgumentError, "Missing the required parameter 'terminal_id' when calling PaymentTerminalTillService.perform_transaction" if terminal_id.nil?
      # resource path
      local_var_path = "/payment-terminal-till/perform-transaction".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id
      query_params[:'terminalId'] = terminal_id
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalTillService#perform_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform Payment Terminal Transaction (using TID)
    # Starts a payment terminal transaction and waits for its completion. If the call returns with a long polling timeout status, you may try again. The processing of the transaction will be picked up where it was left off.
    # @param space_id 
    # @param transaction_id The ID of the transaction which is used to process with the terminal.
    # @param terminal_identifier The identifier (aka TID) of the terminal which should be used to process the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language in which the messages should be rendered in.
    # @return [Transaction]
    def perform_transaction_by_identifier(space_id, transaction_id, terminal_identifier, opts = {})
      data, _status_code, _headers = perform_transaction_by_identifier_with_http_info(space_id, transaction_id, terminal_identifier, opts)
      return data
    end

    # Perform Payment Terminal Transaction (using TID)
    # Starts a payment terminal transaction and waits for its completion. If the call returns with a long polling timeout status, you may try again. The processing of the transaction will be picked up where it was left off.
    # @param space_id 
    # @param transaction_id The ID of the transaction which is used to process with the terminal.
    # @param terminal_identifier The identifier (aka TID) of the terminal which should be used to process the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language in which the messages should be rendered in.
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def perform_transaction_by_identifier_with_http_info(space_id, transaction_id, terminal_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalTillService.perform_transaction_by_identifier ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalTillService.perform_transaction_by_identifier" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTerminalTillService.perform_transaction_by_identifier" if transaction_id.nil?
      # verify the required parameter 'terminal_identifier' is set
      fail ArgumentError, "Missing the required parameter 'terminal_identifier' when calling PaymentTerminalTillService.perform_transaction_by_identifier" if terminal_identifier.nil?
      # resource path
      local_var_path = "/payment-terminal-till/perform-transaction-by-identifier".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id
      query_params[:'terminalIdentifier'] = terminal_identifier
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalTillService#perform_transaction_by_identifier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
