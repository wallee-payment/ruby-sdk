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
  class PaymentTerminalTransactionSummariesService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all summaries
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [TerminalTransactionSummaryListResponse]
    def get_payment_terminals_transaction_summaries(space, opts = {})
      data, _status_code, _headers = get_payment_terminals_transaction_summaries_with_http_info(space, opts)
      data
    end

    # List all summaries

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(TerminalTransactionSummaryListResponse, Integer, Hash)>] TerminalTransactionSummaryListResponse data, response status code and response headers
    def get_payment_terminals_transaction_summaries_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment/terminals/transaction-summaries'

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
      return_type = opts[:debug_return_type] || 'TerminalTransactionSummaryListResponse'

      new_options = opts.merge(
        :operation => :"PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalTransactionSummariesService#get_payment_terminals_transaction_summaries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a summary
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentTerminalTransactionSummary]
    def get_payment_terminals_transaction_summaries_id(id, space, opts = {})
      data, _status_code, _headers = get_payment_terminals_transaction_summaries_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a summary

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentTerminalTransactionSummary, Integer, Hash)>] PaymentTerminalTransactionSummary data, response status code and response headers
    def get_payment_terminals_transaction_summaries_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id"
      end
      # resource path
      local_var_path = '/payment/terminals/transaction-summaries/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentTerminalTransactionSummary'

      new_options = opts.merge(
        :operation => :"PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalTransactionSummariesService#get_payment_terminals_transaction_summaries_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a rendered summary receipt
    # @param id [Integer] 
    # @param format [TerminalReceiptFormat] The format specifies how the receipt will be presented in the response.
    # @param width [Integer] The width defines the dimensions for rendering the document. For PDF format, the width is specified in millimeters, while for text format, it represents the number of characters per line.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [RenderedTerminalTransactionSummary]
    def get_payment_terminals_transaction_summaries_id_receipt(id, format, width, space, opts = {})
      data, _status_code, _headers = get_payment_terminals_transaction_summaries_id_receipt_with_http_info(id, format, width, space, opts)
      data
    end

    # Retrieve a rendered summary receipt

    # @param id [Integer] 
    # @param format [TerminalReceiptFormat] The format specifies how the receipt will be presented in the response.
    # @param width [Integer] The width defines the dimensions for rendering the document. For PDF format, the width is specified in millimeters, while for text format, it represents the number of characters per line.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedTerminalTransactionSummary, Integer, Hash)>] RenderedTerminalTransactionSummary data, response status code and response headers
    def get_payment_terminals_transaction_summaries_id_receipt_with_http_info(id, format, width, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id_receipt ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id_receipt"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id_receipt"
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id_receipt"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id_receipt"
      end
      # resource path
      local_var_path = '/payment/terminals/transaction-summaries/{id}/receipt'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = format
      query_params[:'width'] = width

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
      return_type = opts[:debug_return_type] || 'RenderedTerminalTransactionSummary'

      new_options = opts.merge(
        :operation => :"PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_id_receipt",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalTransactionSummariesService#get_payment_terminals_transaction_summaries_id_receipt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search summaries
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [TerminalTransactionSummarySearchResponse]
    def get_payment_terminals_transaction_summaries_search(space, opts = {})
      data, _status_code, _headers = get_payment_terminals_transaction_summaries_search_with_http_info(space, opts)
      data
    end

    # Search summaries

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(TerminalTransactionSummarySearchResponse, Integer, Hash)>] TerminalTransactionSummarySearchResponse data, response status code and response headers
    def get_payment_terminals_transaction_summaries_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/payment/terminals/transaction-summaries/search'

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
      return_type = opts[:debug_return_type] || 'TerminalTransactionSummarySearchResponse'

      new_options = opts.merge(
        :operation => :"PaymentTerminalTransactionSummariesService.get_payment_terminals_transaction_summaries_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentTerminalTransactionSummariesService#get_payment_terminals_transaction_summaries_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
