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
  class TransactionTerminalService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Fetch Receipts
    # Returns all receipts for the requested terminal transaction.
    # @param space_id 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<RenderedTerminalReceipt>]
    def fetch_receipts(space_id, request, opts = {})
      data, _status_code, _headers = fetch_receipts_with_http_info(space_id, request, opts)
      return data
    end

    # Fetch Receipts
    # Returns all receipts for the requested terminal transaction.
    # @param space_id 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RenderedTerminalReceipt>, Fixnum, Hash)>] Array<RenderedTerminalReceipt> data, response status code and response headers
    def fetch_receipts_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionTerminalService.fetch_receipts ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionTerminalService.fetch_receipts" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling TransactionTerminalService.fetch_receipts" if request.nil?
      # resource path
      local_var_path = "/transaction-terminal/fetch-receipts".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<RenderedTerminalReceipt>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionTerminalService#fetch_receipts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Till Connection Credentials
    # This operation creates a set of credentials to use within the WebSocket.
    # @param space_id 
    # @param transaction_id The ID of the transaction which is used to process with the terminal.
    # @param terminal_id The ID of the terminal which should be used to process the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language in which the messages should be rendered in.
    # @return [String]
    def till_connection_credentials(space_id, transaction_id, terminal_id, opts = {})
      data, _status_code, _headers = till_connection_credentials_with_http_info(space_id, transaction_id, terminal_id, opts)
      return data
    end

    # Create Till Connection Credentials
    # This operation creates a set of credentials to use within the WebSocket.
    # @param space_id 
    # @param transaction_id The ID of the transaction which is used to process with the terminal.
    # @param terminal_id The ID of the terminal which should be used to process the transaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language The language in which the messages should be rendered in.
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def till_connection_credentials_with_http_info(space_id, transaction_id, terminal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionTerminalService.till_connection_credentials ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionTerminalService.till_connection_credentials" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionTerminalService.till_connection_credentials" if transaction_id.nil?
      # verify the required parameter 'terminal_id' is set
      fail ArgumentError, "Missing the required parameter 'terminal_id' when calling TransactionTerminalService.till_connection_credentials" if terminal_id.nil?
      # resource path
      local_var_path = "/transaction-terminal/till-connection-credentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id
      query_params[:'terminalId'] = terminal_id
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionTerminalService#till_connection_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
