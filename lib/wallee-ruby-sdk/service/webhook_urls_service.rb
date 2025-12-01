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
  class WebhookURLsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete multiple webhook URLs
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param request_body [Array<Integer>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RestApiBulkOperationResult>]
    def delete_webhooks_urls_bulk(space, request_body, opts = {})
      data, _status_code, _headers = delete_webhooks_urls_bulk_with_http_info(space, request_body, opts)
      data
    end

    # Delete multiple webhook URLs

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param request_body [Array<Integer>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RestApiBulkOperationResult>, Integer, Hash)>] Array<RestApiBulkOperationResult> data, response status code and response headers
    def delete_webhooks_urls_bulk_with_http_info(space, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.delete_webhooks_urls_bulk ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.delete_webhooks_urls_bulk"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling WebhookURLsService.delete_webhooks_urls_bulk"
      end
      # resource path
      local_var_path = '/webhooks/urls/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RestApiBulkOperationResult>'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.delete_webhooks_urls_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#delete_webhooks_urls_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Delete a webhook URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhooks_urls_id(id, space, opts = {})
      delete_webhooks_urls_id_with_http_info(id, space, opts)
      nil
    end

    # Delete a webhook URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhooks_urls_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.delete_webhooks_urls_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookURLsService.delete_webhooks_urls_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.delete_webhooks_urls_id"
      end
      # resource path
      local_var_path = '/webhooks/urls/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"WebhookURLsService.delete_webhooks_urls_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#delete_webhooks_urls_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all webhook URLs
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [WebhookURLListResponse]
    def get_webhooks_urls(space, opts = {})
      data, _status_code, _headers = get_webhooks_urls_with_http_info(space, opts)
      data
    end

    # List all webhook URLs

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(WebhookURLListResponse, Integer, Hash)>] WebhookURLListResponse data, response status code and response headers
    def get_webhooks_urls_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.get_webhooks_urls ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.get_webhooks_urls"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling WebhookURLsService.get_webhooks_urls, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling WebhookURLsService.get_webhooks_urls, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhookURLsService.get_webhooks_urls, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhookURLsService.get_webhooks_urls, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/webhooks/urls'

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
      return_type = opts[:debug_return_type] || 'WebhookURLListResponse'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.get_webhooks_urls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#get_webhooks_urls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a webhook URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WebhookUrl]
    def get_webhooks_urls_id(id, space, opts = {})
      data, _status_code, _headers = get_webhooks_urls_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a webhook URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WebhookUrl, Integer, Hash)>] WebhookUrl data, response status code and response headers
    def get_webhooks_urls_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.get_webhooks_urls_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookURLsService.get_webhooks_urls_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.get_webhooks_urls_id"
      end
      # resource path
      local_var_path = '/webhooks/urls/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'WebhookUrl'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.get_webhooks_urls_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#get_webhooks_urls_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search webhook URLs
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [WebhookURLSearchResponse]
    def get_webhooks_urls_search(space, opts = {})
      data, _status_code, _headers = get_webhooks_urls_search_with_http_info(space, opts)
      data
    end

    # Search webhook URLs

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(WebhookURLSearchResponse, Integer, Hash)>] WebhookURLSearchResponse data, response status code and response headers
    def get_webhooks_urls_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.get_webhooks_urls_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.get_webhooks_urls_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhookURLsService.get_webhooks_urls_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhookURLsService.get_webhooks_urls_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling WebhookURLsService.get_webhooks_urls_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/webhooks/urls/search'

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
      return_type = opts[:debug_return_type] || 'WebhookURLSearchResponse'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.get_webhooks_urls_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#get_webhooks_urls_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update multiple webhook URLs
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_update [Array<WebhookUrlUpdate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RestApiBulkOperationResult>]
    def patch_webhooks_urls_bulk(space, webhook_url_update, opts = {})
      data, _status_code, _headers = patch_webhooks_urls_bulk_with_http_info(space, webhook_url_update, opts)
      data
    end

    # Update multiple webhook URLs

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_update [Array<WebhookUrlUpdate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RestApiBulkOperationResult>, Integer, Hash)>] Array<RestApiBulkOperationResult> data, response status code and response headers
    def patch_webhooks_urls_bulk_with_http_info(space, webhook_url_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.patch_webhooks_urls_bulk ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.patch_webhooks_urls_bulk"
      end
      # verify the required parameter 'webhook_url_update' is set
      if @api_client.config.client_side_validation && webhook_url_update.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_url_update' when calling WebhookURLsService.patch_webhooks_urls_bulk"
      end
      # resource path
      local_var_path = '/webhooks/urls/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_url_update)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RestApiBulkOperationResult>'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.patch_webhooks_urls_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#patch_webhooks_urls_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a webhook URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_update [WebhookUrlUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WebhookUrl]
    def patch_webhooks_urls_id(id, space, webhook_url_update, opts = {})
      data, _status_code, _headers = patch_webhooks_urls_id_with_http_info(id, space, webhook_url_update, opts)
      data
    end

    # Update a webhook URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_update [WebhookUrlUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WebhookUrl, Integer, Hash)>] WebhookUrl data, response status code and response headers
    def patch_webhooks_urls_id_with_http_info(id, space, webhook_url_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.patch_webhooks_urls_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookURLsService.patch_webhooks_urls_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.patch_webhooks_urls_id"
      end
      # verify the required parameter 'webhook_url_update' is set
      if @api_client.config.client_side_validation && webhook_url_update.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_url_update' when calling WebhookURLsService.patch_webhooks_urls_id"
      end
      # resource path
      local_var_path = '/webhooks/urls/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_url_update)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookUrl'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.patch_webhooks_urls_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#patch_webhooks_urls_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a webhook URL
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_create [WebhookUrlCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WebhookUrl]
    def post_webhooks_urls(space, webhook_url_create, opts = {})
      data, _status_code, _headers = post_webhooks_urls_with_http_info(space, webhook_url_create, opts)
      data
    end

    # Create a webhook URL

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_create [WebhookUrlCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WebhookUrl, Integer, Hash)>] WebhookUrl data, response status code and response headers
    def post_webhooks_urls_with_http_info(space, webhook_url_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.post_webhooks_urls ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.post_webhooks_urls"
      end
      # verify the required parameter 'webhook_url_create' is set
      if @api_client.config.client_side_validation && webhook_url_create.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_url_create' when calling WebhookURLsService.post_webhooks_urls"
      end
      # resource path
      local_var_path = '/webhooks/urls'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_url_create)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookUrl'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.post_webhooks_urls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#post_webhooks_urls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create multiple webhook URLs
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_create [Array<WebhookUrlCreate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RestApiBulkOperationResult>]
    def post_webhooks_urls_bulk(space, webhook_url_create, opts = {})
      data, _status_code, _headers = post_webhooks_urls_bulk_with_http_info(space, webhook_url_create, opts)
      data
    end

    # Create multiple webhook URLs

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param webhook_url_create [Array<WebhookUrlCreate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RestApiBulkOperationResult>, Integer, Hash)>] Array<RestApiBulkOperationResult> data, response status code and response headers
    def post_webhooks_urls_bulk_with_http_info(space, webhook_url_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookURLsService.post_webhooks_urls_bulk ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling WebhookURLsService.post_webhooks_urls_bulk"
      end
      # verify the required parameter 'webhook_url_create' is set
      if @api_client.config.client_side_validation && webhook_url_create.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_url_create' when calling WebhookURLsService.post_webhooks_urls_bulk"
      end
      # resource path
      local_var_path = '/webhooks/urls/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_url_create)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RestApiBulkOperationResult>'

      new_options = opts.merge(
        :operation => :"WebhookURLsService.post_webhooks_urls_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookURLsService#post_webhooks_urls_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
