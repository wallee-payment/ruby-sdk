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
  class PaymentTerminalService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def count(space_id, opts = {})
      data, _status_code, _headers = count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.

    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.count" if space_id.nil?
      # resource path
      local_var_path = "/payment-terminal/count".sub('{format}','json')

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Link Device With Terminal
    # Links the device with given serial number with terminal.
    # @param space_id 
    # @param terminal_id 
    # @param serial_number 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def link(space_id, terminal_id, serial_number, opts = {})
      link_with_http_info(space_id, terminal_id, serial_number, opts)
      return nil
    end

    # Link Device With Terminal
    # Links the device with given serial number with terminal.

    # @param space_id 
    # @param terminal_id 
    # @param serial_number 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def link_with_http_info(space_id, terminal_id, serial_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.link ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.link" if space_id.nil?
      # verify the required parameter 'terminal_id' is set
      fail ArgumentError, "Missing the required parameter 'terminal_id' when calling PaymentTerminalService.link" if terminal_id.nil?
      # verify the required parameter 'serial_number' is set
      fail ArgumentError, "Missing the required parameter 'serial_number' when calling PaymentTerminalService.link" if serial_number.nil?
      # resource path
      local_var_path = "/payment-terminal/link".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'terminalId'] = terminal_id
      query_params[:'serialNumber'] = serial_number

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the payment terminal which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [PaymentTerminal]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.

    # @param space_id 
    # @param id The id of the payment terminal which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentTerminal, Fixnum, Hash)>] PaymentTerminal data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalService.read" if id.nil?
      # resource path
      local_var_path = "/payment-terminal/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'PaymentTerminal')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the payment terminals which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<PaymentTerminal>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.

    # @param space_id 
    # @param query The query restricts the payment terminals which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PaymentTerminal>, Fixnum, Hash)>] Array<PaymentTerminal> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling PaymentTerminalService.search" if query.nil?
      # resource path
      local_var_path = "/payment-terminal/search".sub('{format}','json')

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'Array<PaymentTerminal>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remotely Trigger Final Balance
    # Remotely triggers the final balance receipt on the terminal.
    # @param space_id 
    # @param terminal_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def trigger_final_balance(space_id, terminal_id, opts = {})
      trigger_final_balance_with_http_info(space_id, terminal_id, opts)
      return nil
    end

    # Remotely Trigger Final Balance
    # Remotely triggers the final balance receipt on the terminal.

    # @param space_id 
    # @param terminal_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def trigger_final_balance_with_http_info(space_id, terminal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.trigger_final_balance ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.trigger_final_balance" if space_id.nil?
      # verify the required parameter 'terminal_id' is set
      fail ArgumentError, "Missing the required parameter 'terminal_id' when calling PaymentTerminalService.trigger_final_balance" if terminal_id.nil?
      # resource path
      local_var_path = "/payment-terminal/trigger-final-balance".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'terminalId'] = terminal_id

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#trigger_final_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remotely Trigger Final Balance By Identifier
    # Remotely triggers the final balance receipt on the terminal by terminal identifier.
    # @param space_id 
    # @param terminal_identifier 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def trigger_final_balance_by_identifier(space_id, terminal_identifier, opts = {})
      trigger_final_balance_by_identifier_with_http_info(space_id, terminal_identifier, opts)
      return nil
    end

    # Remotely Trigger Final Balance By Identifier
    # Remotely triggers the final balance receipt on the terminal by terminal identifier.

    # @param space_id 
    # @param terminal_identifier 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def trigger_final_balance_by_identifier_with_http_info(space_id, terminal_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.trigger_final_balance_by_identifier ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.trigger_final_balance_by_identifier" if space_id.nil?
      # verify the required parameter 'terminal_identifier' is set
      fail ArgumentError, "Missing the required parameter 'terminal_identifier' when calling PaymentTerminalService.trigger_final_balance_by_identifier" if terminal_identifier.nil?
      # resource path
      local_var_path = "/payment-terminal/trigger-final-balance-by-identifier".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'terminalIdentifier'] = terminal_identifier

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#trigger_final_balance_by_identifier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink Device With Terminal
    # Unlinks the device from terminal.
    # @param space_id 
    # @param terminal_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink(space_id, terminal_id, opts = {})
      unlink_with_http_info(space_id, terminal_id, opts)
      return nil
    end

    # Unlink Device With Terminal
    # Unlinks the device from terminal.

    # @param space_id 
    # @param terminal_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_with_http_info(space_id, terminal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentTerminalService.unlink ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentTerminalService.unlink" if space_id.nil?
      # verify the required parameter 'terminal_id' is set
      fail ArgumentError, "Missing the required parameter 'terminal_id' when calling PaymentTerminalService.unlink" if terminal_id.nil?
      # resource path
      local_var_path = "/payment-terminal/unlink".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'terminalId'] = terminal_id

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalService#unlink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
