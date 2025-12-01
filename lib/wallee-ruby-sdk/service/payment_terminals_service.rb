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

require 'cgi'

module WalleeRubySdk
  class PaymentTerminalsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a payment terminal
    # Permanently deletes a payment terminal. It cannot be undone.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_terminals_id(id, space, opts = {})
      delete_payment_terminals_id_with_http_info(id, space, opts)
      nil
    end

    # Delete a payment terminal
    # Permanently deletes a payment terminal. It cannot be undone.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_terminals_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.delete_payment_terminals_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.delete_payment_terminals_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.delete_payment_terminals_id"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.delete_payment_terminals_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#delete_payment_terminals_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all payment terminals
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [TerminalListResponse]
    def get_payment_terminals(space, opts = {})
      data, _status_code, _headers = get_payment_terminals_with_http_info(space, opts)
      data
    end

    # List all payment terminals

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(TerminalListResponse, Integer, Hash)>] TerminalListResponse data, response status code and response headers
    def get_payment_terminals_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.get_payment_terminals ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.get_payment_terminals"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling PaymentTerminalsService.get_payment_terminals, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling PaymentTerminalsService.get_payment_terminals, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalsService.get_payment_terminals, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalsService.get_payment_terminals, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment/terminals'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TerminalListResponse'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.get_payment_terminals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#get_payment_terminals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a payment terminal
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentTerminal]
    def get_payment_terminals_id(id, space, opts = {})
      data, _status_code, _headers = get_payment_terminals_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a payment terminal

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentTerminal, Integer, Hash)>] PaymentTerminal data, response status code and response headers
    def get_payment_terminals_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.get_payment_terminals_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.get_payment_terminals_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.get_payment_terminals_id"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentTerminal'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.get_payment_terminals_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#get_payment_terminals_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve till connection credentials
    # @param id [Integer] 
    # @param transaction_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language 
    # @return [String]
    def get_payment_terminals_id_till_connection_credentials(id, transaction_id, space, opts = {})
      data, _status_code, _headers = get_payment_terminals_id_till_connection_credentials_with_http_info(id, transaction_id, space, opts)
      data
    end

    # Retrieve till connection credentials

    # @param id [Integer] 
    # @param transaction_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_terminals_id_till_connection_credentials_with_http_info(id, transaction_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.get_payment_terminals_id_till_connection_credentials ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.get_payment_terminals_id_till_connection_credentials"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTerminalsService.get_payment_terminals_id_till_connection_credentials"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.get_payment_terminals_id_till_connection_credentials"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}/till-connection-credentials'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transactionId'] = transaction_id
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.get_payment_terminals_id_till_connection_credentials",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#get_payment_terminals_id_till_connection_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search payment terminals
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [TerminalSearchResponse]
    def get_payment_terminals_search(space, opts = {})
      data, _status_code, _headers = get_payment_terminals_search_with_http_info(space, opts)
      data
    end

    # Search payment terminals

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(TerminalSearchResponse, Integer, Hash)>] TerminalSearchResponse data, response status code and response headers
    def get_payment_terminals_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.get_payment_terminals_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.get_payment_terminals_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalsService.get_payment_terminals_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalsService.get_payment_terminals_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling PaymentTerminalsService.get_payment_terminals_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/payment/terminals/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TerminalSearchResponse'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.get_payment_terminals_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#get_payment_terminals_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a payment terminal
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_terminal_update [PaymentTerminalUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentTerminal]
    def patch_payment_terminals_id(id, space, payment_terminal_update, opts = {})
      data, _status_code, _headers = patch_payment_terminals_id_with_http_info(id, space, payment_terminal_update, opts)
      data
    end

    # Update a payment terminal

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_terminal_update [PaymentTerminalUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentTerminal, Integer, Hash)>] PaymentTerminal data, response status code and response headers
    def patch_payment_terminals_id_with_http_info(id, space, payment_terminal_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.patch_payment_terminals_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.patch_payment_terminals_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.patch_payment_terminals_id"
      end
      # verify the required parameter 'payment_terminal_update' is set
      if @api_client.config.client_side_validation && payment_terminal_update.nil?
        fail ArgumentError, "Missing the required parameter 'payment_terminal_update' when calling PaymentTerminalsService.patch_payment_terminals_id"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_terminal_update)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentTerminal'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.patch_payment_terminals_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#patch_payment_terminals_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a payment terminal
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_terminal_create [PaymentTerminalCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentTerminal]
    def post_payment_terminals(space, payment_terminal_create, opts = {})
      data, _status_code, _headers = post_payment_terminals_with_http_info(space, payment_terminal_create, opts)
      data
    end

    # Create a payment terminal

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_terminal_create [PaymentTerminalCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentTerminal, Integer, Hash)>] PaymentTerminal data, response status code and response headers
    def post_payment_terminals_with_http_info(space, payment_terminal_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals"
      end
      # verify the required parameter 'payment_terminal_create' is set
      if @api_client.config.client_side_validation && payment_terminal_create.nil?
        fail ArgumentError, "Missing the required parameter 'payment_terminal_create' when calling PaymentTerminalsService.post_payment_terminals"
      end
      # resource path
      local_var_path = '/payment/terminals'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_terminal_create)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentTerminal'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Perform a payment terminal transaction by identifier
    # Initiates a payment terminal transaction and waits for its completion. If a timeout occurs, retrying will resume the transaction from where it left off.
    # @param transaction_id [Integer] 
    # @param identifier [String] The unique identifier of the terminal.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language 
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_terminals_by_identifier_identifier_perform_transaction(transaction_id, identifier, space, opts = {})
      data, _status_code, _headers = post_payment_terminals_by_identifier_identifier_perform_transaction_with_http_info(transaction_id, identifier, space, opts)
      data
    end

    # Perform a payment terminal transaction by identifier
    # Initiates a payment terminal transaction and waits for its completion. If a timeout occurs, retrying will resume the transaction from where it left off.
    # Timeout for this request is: 90 seconds.
    # @param transaction_id [Integer] 
    # @param identifier [String] The unique identifier of the terminal.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language 
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_terminals_by_identifier_identifier_perform_transaction_with_http_info(transaction_id, identifier, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_perform_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_perform_transaction"
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_perform_transaction"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_perform_transaction"
      end
      # resource path
      local_var_path = '/payment/terminals/by-identifier/{identifier}/perform-transaction'.sub('{' + 'identifier' + '}', CGI.escape(identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transactionId'] = transaction_id
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = 90

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_perform_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals_by_identifier_identifier_perform_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Remotely trigger the final balance by identifier
    # @param identifier [String] The unique identifier of the terminal.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [PaymentTerminalTransactionSummaryReference]
    def post_payment_terminals_by_identifier_identifier_trigger_final_balance(identifier, space, opts = {})
      data, _status_code, _headers = post_payment_terminals_by_identifier_identifier_trigger_final_balance_with_http_info(identifier, space, opts)
      data
    end

    # Remotely trigger the final balance by identifier

    # @param identifier [String] The unique identifier of the terminal.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentTerminalTransactionSummaryReference, Integer, Hash)>] PaymentTerminalTransactionSummaryReference data, response status code and response headers
    def post_payment_terminals_by_identifier_identifier_trigger_final_balance_with_http_info(identifier, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_trigger_final_balance ...'
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_trigger_final_balance"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_trigger_final_balance"
      end
      # resource path
      local_var_path = '/payment/terminals/by-identifier/{identifier}/trigger-final-balance'.sub('{' + 'identifier' + '}', CGI.escape(identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentTerminalTransactionSummaryReference'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals_by_identifier_identifier_trigger_final_balance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals_by_identifier_identifier_trigger_final_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Link a device with a payment terminal
    # @param id [Integer] 
    # @param serial_number [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_payment_terminals_id_link(id, serial_number, space, opts = {})
      post_payment_terminals_id_link_with_http_info(id, serial_number, space, opts)
      nil
    end

    # Link a device with a payment terminal

    # @param id [Integer] 
    # @param serial_number [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_payment_terminals_id_link_with_http_info(id, serial_number, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals_id_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.post_payment_terminals_id_link"
      end
      # verify the required parameter 'serial_number' is set
      if @api_client.config.client_side_validation && serial_number.nil?
        fail ArgumentError, "Missing the required parameter 'serial_number' when calling PaymentTerminalsService.post_payment_terminals_id_link"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals_id_link"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}/link'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'serialNumber'] = serial_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals_id_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals_id_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Perform a payment terminal transaction
    # Initiates a payment terminal transaction and waits for its completion. If a timeout occurs, retrying will resume the transaction from where it left off.
    # @param id [Integer] 
    # @param transaction_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language 
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_terminals_id_perform_transaction(id, transaction_id, space, opts = {})
      data, _status_code, _headers = post_payment_terminals_id_perform_transaction_with_http_info(id, transaction_id, space, opts)
      data
    end

    # Perform a payment terminal transaction
    # Initiates a payment terminal transaction and waits for its completion. If a timeout occurs, retrying will resume the transaction from where it left off.
    # Timeout for this request is: 90 seconds.
    # @param id [Integer] 
    # @param transaction_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language 
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_terminals_id_perform_transaction_with_http_info(id, transaction_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals_id_perform_transaction ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.post_payment_terminals_id_perform_transaction"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentTerminalsService.post_payment_terminals_id_perform_transaction"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals_id_perform_transaction"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}/perform-transaction'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transactionId'] = transaction_id
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = 90

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals_id_perform_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals_id_perform_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Remotely trigger the final balance
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [PaymentTerminalTransactionSummaryReference]
    def post_payment_terminals_id_trigger_final_balance(id, space, opts = {})
      data, _status_code, _headers = post_payment_terminals_id_trigger_final_balance_with_http_info(id, space, opts)
      data
    end

    # Remotely trigger the final balance

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentTerminalTransactionSummaryReference, Integer, Hash)>] PaymentTerminalTransactionSummaryReference data, response status code and response headers
    def post_payment_terminals_id_trigger_final_balance_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals_id_trigger_final_balance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.post_payment_terminals_id_trigger_final_balance"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals_id_trigger_final_balance"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}/trigger-final-balance'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentTerminalTransactionSummaryReference'

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals_id_trigger_final_balance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals_id_trigger_final_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Unlink any device from a payment terminal
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_payment_terminals_id_unlink(id, space, opts = {})
      post_payment_terminals_id_unlink_with_http_info(id, space, opts)
      nil
    end

    # Unlink any device from a payment terminal

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_payment_terminals_id_unlink_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalsService.post_payment_terminals_id_unlink ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalsService.post_payment_terminals_id_unlink"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalsService.post_payment_terminals_id_unlink"
      end
      # resource path
      local_var_path = '/payment/terminals/{id}/unlink'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"PaymentTerminalsService.post_payment_terminals_id_unlink",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalsService#post_payment_terminals_id_unlink\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
