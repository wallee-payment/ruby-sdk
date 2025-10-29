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

require 'cgi'

module WalleeRubySdk
  class TransactionInvoiceCommentsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a transaction comment
    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_transactions_invoices_invoice_id_comments_id(invoice_id, id, space, opts = {})
      delete_payment_transactions_invoices_invoice_id_comments_id_with_http_info(invoice_id, id, space, opts)
      nil
    end

    # Delete a transaction comment

    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_transactions_invoices_invoice_id_comments_id_with_http_info(invoice_id, id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.delete_payment_transactions_invoices_invoice_id_comments_id ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.delete_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentsService.delete_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.delete_payment_transactions_invoices_invoice_id_comments_id"
      end
      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments/{id}'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"TransactionInvoiceCommentsService.delete_payment_transactions_invoices_invoice_id_comments_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#delete_payment_transactions_invoices_invoice_id_comments_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all transaction invoice comments
    # @param invoice_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [InvoiceCommentListResponse]
    def get_payment_transactions_invoices_invoice_id_comments(invoice_id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_invoices_invoice_id_comments_with_http_info(invoice_id, space, opts)
      data
    end

    # List all transaction invoice comments

    # @param invoice_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(InvoiceCommentListResponse, Integer, Hash)>] InvoiceCommentListResponse data, response status code and response headers
    def get_payment_transactions_invoices_invoice_id_comments_with_http_info(invoice_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] unless opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] unless opts[:'before'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] unless opts[:'order'].nil?

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
      return_type = opts[:debug_return_type] || 'InvoiceCommentListResponse'

      new_options = opts.merge(
        :operation => :"TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#get_payment_transactions_invoices_invoice_id_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a transaction invoice comment
    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionInvoiceComment]
    def get_payment_transactions_invoices_invoice_id_comments_id(invoice_id, id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_invoices_invoice_id_comments_id_with_http_info(invoice_id, id, space, opts)
      data
    end

    # Retrieve a transaction invoice comment

    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionInvoiceComment, Integer, Hash)>] TransactionInvoiceComment data, response status code and response headers
    def get_payment_transactions_invoices_invoice_id_comments_id_with_http_info(invoice_id, id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_id ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_id"
      end
      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments/{id}'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TransactionInvoiceComment'

      new_options = opts.merge(
        :operation => :"TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#get_payment_transactions_invoices_invoice_id_comments_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search transaction invoice comments
    # @param invoice_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [InvoiceCommentSearchResponse]
    def get_payment_transactions_invoices_invoice_id_comments_search(invoice_id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_invoices_invoice_id_comments_search_with_http_info(invoice_id, space, opts)
      data
    end

    # Search transaction invoice comments

    # @param invoice_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(InvoiceCommentSearchResponse, Integer, Hash)>] InvoiceCommentSearchResponse data, response status code and response headers
    def get_payment_transactions_invoices_invoice_id_comments_search_with_http_info(invoice_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments/search'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] unless opts[:'offset'].nil?
      query_params[:'order'] = opts[:'order'] unless opts[:'order'].nil?
      query_params[:'query'] = opts[:'query'] unless opts[:'query'].nil?

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
      return_type = opts[:debug_return_type] || 'InvoiceCommentSearchResponse'

      new_options = opts.merge(
        :operation => :"TransactionInvoiceCommentsService.get_payment_transactions_invoices_invoice_id_comments_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#get_payment_transactions_invoices_invoice_id_comments_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a transaction comment
    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_invoice_comment_active [TransactionInvoiceCommentActive] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionInvoiceComment]
    def patch_payment_transactions_invoices_invoice_id_comments_id(invoice_id, id, space, transaction_invoice_comment_active, opts = {})
      data, _status_code, _headers = patch_payment_transactions_invoices_invoice_id_comments_id_with_http_info(invoice_id, id, space, transaction_invoice_comment_active, opts)
      data
    end

    # Update a transaction comment

    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_invoice_comment_active [TransactionInvoiceCommentActive] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionInvoiceComment, Integer, Hash)>] TransactionInvoiceComment data, response status code and response headers
    def patch_payment_transactions_invoices_invoice_id_comments_id_with_http_info(invoice_id, id, space, transaction_invoice_comment_active, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.patch_payment_transactions_invoices_invoice_id_comments_id ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.patch_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentsService.patch_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.patch_payment_transactions_invoices_invoice_id_comments_id"
      end
      # verify the required parameter 'transaction_invoice_comment_active' is set
      if @api_client.config.client_side_validation && transaction_invoice_comment_active.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_invoice_comment_active' when calling TransactionInvoiceCommentsService.patch_payment_transactions_invoices_invoice_id_comments_id"
      end
      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments/{id}'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_invoice_comment_active)

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionInvoiceComment'

      new_options = opts.merge(
        :operation => :"TransactionInvoiceCommentsService.patch_payment_transactions_invoices_invoice_id_comments_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#patch_payment_transactions_invoices_invoice_id_comments_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a transaction invoice comment
    # @param invoice_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_invoice_comment_create [TransactionInvoiceCommentCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionInvoiceComment]
    def post_payment_transactions_invoices_invoice_id_comments(invoice_id, space, transaction_invoice_comment_create, opts = {})
      data, _status_code, _headers = post_payment_transactions_invoices_invoice_id_comments_with_http_info(invoice_id, space, transaction_invoice_comment_create, opts)
      data
    end

    # Create a transaction invoice comment

    # @param invoice_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_invoice_comment_create [TransactionInvoiceCommentCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionInvoiceComment, Integer, Hash)>] TransactionInvoiceComment data, response status code and response headers
    def post_payment_transactions_invoices_invoice_id_comments_with_http_info(invoice_id, space, transaction_invoice_comment_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments"
      end
      # verify the required parameter 'transaction_invoice_comment_create' is set
      if @api_client.config.client_side_validation && transaction_invoice_comment_create.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_invoice_comment_create' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments"
      end
      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_invoice_comment_create)

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionInvoiceComment'

      new_options = opts.merge(
        :operation => :"TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#post_payment_transactions_invoices_invoice_id_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Pin a comment to the top
    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_payment_transactions_invoices_invoice_id_comments_id_pin(invoice_id, id, space, opts = {})
      post_payment_transactions_invoices_invoice_id_comments_id_pin_with_http_info(invoice_id, id, space, opts)
      nil
    end

    # Pin a comment to the top

    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_payment_transactions_invoices_invoice_id_comments_id_pin_with_http_info(invoice_id, id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_pin ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_pin"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_pin"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_pin"
      end
      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments/{id}/pin'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_pin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#post_payment_transactions_invoices_invoice_id_comments_id_pin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Remove the pinned comment from the top
    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_payment_transactions_invoices_invoice_id_comments_id_unpin(invoice_id, id, space, opts = {})
      post_payment_transactions_invoices_invoice_id_comments_id_unpin_with_http_info(invoice_id, id, space, opts)
      nil
    end

    # Remove the pinned comment from the top

    # @param invoice_id [Integer] 
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_payment_transactions_invoices_invoice_id_comments_id_unpin_with_http_info(invoice_id, id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_unpin ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_unpin"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_unpin"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_unpin"
      end
      # resource path
      local_var_path = '/payment/transactions/invoices/{invoiceId}/comments/{id}/unpin'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"TransactionInvoiceCommentsService.post_payment_transactions_invoices_invoice_id_comments_id_unpin",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentsService#post_payment_transactions_invoices_invoice_id_comments_id_unpin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
