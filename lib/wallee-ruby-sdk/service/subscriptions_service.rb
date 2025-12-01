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
  class SubscriptionsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all subscriptions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [SubscriptionListResponse]
    def get_subscriptions(space, opts = {})
      data, _status_code, _headers = get_subscriptions_with_http_info(space, opts)
      data
    end

    # List all subscriptions

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(SubscriptionListResponse, Integer, Hash)>] SubscriptionListResponse data, response status code and response headers
    def get_subscriptions_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.get_subscriptions ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.get_subscriptions"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling SubscriptionsService.get_subscriptions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling SubscriptionsService.get_subscriptions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionsService.get_subscriptions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionsService.get_subscriptions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/subscriptions'

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
      return_type = opts[:debug_return_type] || 'SubscriptionListResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.get_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#get_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a subscription
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Subscription]
    def get_subscriptions_id(id, space, opts = {})
      data, _status_code, _headers = get_subscriptions_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a subscription

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Subscription, Integer, Hash)>] Subscription data, response status code and response headers
    def get_subscriptions_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.get_subscriptions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.get_subscriptions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.get_subscriptions_id"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Subscription'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.get_subscriptions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#get_subscriptions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search subscription invoices
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [InvoiceSearchResponse]
    def get_subscriptions_id_invoices(id, space, opts = {})
      data, _status_code, _headers = get_subscriptions_id_invoices_with_http_info(id, space, opts)
      data
    end

    # Search subscription invoices

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(InvoiceSearchResponse, Integer, Hash)>] InvoiceSearchResponse data, response status code and response headers
    def get_subscriptions_id_invoices_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.get_subscriptions_id_invoices ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.get_subscriptions_id_invoices"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.get_subscriptions_id_invoices"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionsService.get_subscriptions_id_invoices, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionsService.get_subscriptions_id_invoices, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SubscriptionsService.get_subscriptions_id_invoices, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/subscriptions/{id}/invoices'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'InvoiceSearchResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.get_subscriptions_id_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#get_subscriptions_id_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search subscriptions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [SubscriptionSearchResponse]
    def get_subscriptions_search(space, opts = {})
      data, _status_code, _headers = get_subscriptions_search_with_http_info(space, opts)
      data
    end

    # Search subscriptions

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(SubscriptionSearchResponse, Integer, Hash)>] SubscriptionSearchResponse data, response status code and response headers
    def get_subscriptions_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.get_subscriptions_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.get_subscriptions_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionsService.get_subscriptions_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionsService.get_subscriptions_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SubscriptionsService.get_subscriptions_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/subscriptions/search'

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
      return_type = opts[:debug_return_type] || 'SubscriptionSearchResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.get_subscriptions_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#get_subscriptions_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a subscription
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_update_request [SubscriptionUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Subscription]
    def patch_subscriptions_id(id, space, subscription_update_request, opts = {})
      data, _status_code, _headers = patch_subscriptions_id_with_http_info(id, space, subscription_update_request, opts)
      data
    end

    # Update a subscription

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_update_request [SubscriptionUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Subscription, Integer, Hash)>] Subscription data, response status code and response headers
    def patch_subscriptions_id_with_http_info(id, space, subscription_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.patch_subscriptions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.patch_subscriptions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.patch_subscriptions_id"
      end
      # verify the required parameter 'subscription_update_request' is set
      if @api_client.config.client_side_validation && subscription_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_update_request' when calling SubscriptionsService.patch_subscriptions_id"
      end
      # resource path
      local_var_path = '/subscriptions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Subscription'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.patch_subscriptions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#patch_subscriptions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a subscription
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_create_request [SubscriptionCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionVersion]
    def post_subscriptions(space, subscription_create_request, opts = {})
      data, _status_code, _headers = post_subscriptions_with_http_info(space, subscription_create_request, opts)
      data
    end

    # Create a subscription

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_create_request [SubscriptionCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionVersion, Integer, Hash)>] SubscriptionVersion data, response status code and response headers
    def post_subscriptions_with_http_info(space, subscription_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions"
      end
      # verify the required parameter 'subscription_create_request' is set
      if @api_client.config.client_side_validation && subscription_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_create_request' when calling SubscriptionsService.post_subscriptions"
      end
      # resource path
      local_var_path = '/subscriptions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.post_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Apply changes to a subscription
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_update_request [SubscriptionUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionVersion]
    def post_subscriptions_id_apply_changes(id, space, subscription_update_request, opts = {})
      data, _status_code, _headers = post_subscriptions_id_apply_changes_with_http_info(id, space, subscription_update_request, opts)
      data
    end

    # Apply changes to a subscription

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_update_request [SubscriptionUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionVersion, Integer, Hash)>] SubscriptionVersion data, response status code and response headers
    def post_subscriptions_id_apply_changes_with_http_info(id, space, subscription_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_apply_changes ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_apply_changes"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_apply_changes"
      end
      # verify the required parameter 'subscription_update_request' is set
      if @api_client.config.client_side_validation && subscription_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_update_request' when calling SubscriptionsService.post_subscriptions_id_apply_changes"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/apply-changes'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.post_subscriptions_id_apply_changes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_apply_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Initialize a subscription
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionCharge]
    def post_subscriptions_id_initialize(id, space, opts = {})
      data, _status_code, _headers = post_subscriptions_id_initialize_with_http_info(id, space, opts)
      data
    end

    # Initialize a subscription

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionCharge, Integer, Hash)>] SubscriptionCharge data, response status code and response headers
    def post_subscriptions_id_initialize_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_initialize ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_initialize"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_initialize"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/initialize'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SubscriptionCharge'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.post_subscriptions_id_initialize",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_initialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Initialize a subscription with the subscriber present
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_initialize_subscriber_present_request [SubscriptionInitializeSubscriberPresentRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionCharge]
    def post_subscriptions_id_initialize_subscriber_present(id, space, subscription_initialize_subscriber_present_request, opts = {})
      data, _status_code, _headers = post_subscriptions_id_initialize_subscriber_present_with_http_info(id, space, subscription_initialize_subscriber_present_request, opts)
      data
    end

    # Initialize a subscription with the subscriber present

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_initialize_subscriber_present_request [SubscriptionInitializeSubscriberPresentRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionCharge, Integer, Hash)>] SubscriptionCharge data, response status code and response headers
    def post_subscriptions_id_initialize_subscriber_present_with_http_info(id, space, subscription_initialize_subscriber_present_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_initialize_subscriber_present ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_initialize_subscriber_present"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_initialize_subscriber_present"
      end
      # verify the required parameter 'subscription_initialize_subscriber_present_request' is set
      if @api_client.config.client_side_validation && subscription_initialize_subscriber_present_request.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_initialize_subscriber_present_request' when calling SubscriptionsService.post_subscriptions_id_initialize_subscriber_present"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/initialize-subscriber-present'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_initialize_subscriber_present_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionCharge'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.post_subscriptions_id_initialize_subscriber_present",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_initialize_subscriber_present\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Reactivate a suspended subscription
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_subscriptions_id_reactivate(id, space, opts = {})
      post_subscriptions_id_reactivate_with_http_info(id, space, opts)
      nil
    end

    # Reactivate a suspended subscription

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_subscriptions_id_reactivate_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_reactivate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_reactivate"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_reactivate"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/reactivate'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"SubscriptionsService.post_subscriptions_id_reactivate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_reactivate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Suspend a subscription
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param suspension_creation_request [SuspensionCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionSuspension]
    def post_subscriptions_id_suspend(id, space, suspension_creation_request, opts = {})
      data, _status_code, _headers = post_subscriptions_id_suspend_with_http_info(id, space, suspension_creation_request, opts)
      data
    end

    # Suspend a subscription

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param suspension_creation_request [SuspensionCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionSuspension, Integer, Hash)>] SubscriptionSuspension data, response status code and response headers
    def post_subscriptions_id_suspend_with_http_info(id, space, suspension_creation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_suspend ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_suspend"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_suspend"
      end
      # verify the required parameter 'suspension_creation_request' is set
      if @api_client.config.client_side_validation && suspension_creation_request.nil?
        fail ArgumentError, "Missing the required parameter 'suspension_creation_request' when calling SubscriptionsService.post_subscriptions_id_suspend"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/suspend'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(suspension_creation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionSuspension'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.post_subscriptions_id_suspend",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_suspend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Terminate a subscription
    # @param id [Integer] 
    # @param respect_termination_period [Boolean] Whether the product&#39;s termination period should be respected.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_subscriptions_id_terminate(id, respect_termination_period, space, opts = {})
      post_subscriptions_id_terminate_with_http_info(id, respect_termination_period, space, opts)
      nil
    end

    # Terminate a subscription

    # @param id [Integer] 
    # @param respect_termination_period [Boolean] Whether the product&#39;s termination period should be respected.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_subscriptions_id_terminate_with_http_info(id, respect_termination_period, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_terminate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_terminate"
      end
      # verify the required parameter 'respect_termination_period' is set
      if @api_client.config.client_side_validation && respect_termination_period.nil?
        fail ArgumentError, "Missing the required parameter 'respect_termination_period' when calling SubscriptionsService.post_subscriptions_id_terminate"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_terminate"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/terminate'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'respectTerminationPeriod'] = respect_termination_period

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
        :operation => :"SubscriptionsService.post_subscriptions_id_terminate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_terminate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Upgrade a subscription's product
    # @param id [Integer] 
    # @param respect_termination_period [Boolean] Whether the product&#39;s termination period should be respected.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionVersion]
    def post_subscriptions_id_upgrade_product(id, respect_termination_period, space, opts = {})
      data, _status_code, _headers = post_subscriptions_id_upgrade_product_with_http_info(id, respect_termination_period, space, opts)
      data
    end

    # Upgrade a subscription&#39;s product

    # @param id [Integer] 
    # @param respect_termination_period [Boolean] Whether the product&#39;s termination period should be respected.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionVersion, Integer, Hash)>] SubscriptionVersion data, response status code and response headers
    def post_subscriptions_id_upgrade_product_with_http_info(id, respect_termination_period, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionsService.post_subscriptions_id_upgrade_product ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsService.post_subscriptions_id_upgrade_product"
      end
      # verify the required parameter 'respect_termination_period' is set
      if @api_client.config.client_side_validation && respect_termination_period.nil?
        fail ArgumentError, "Missing the required parameter 'respect_termination_period' when calling SubscriptionsService.post_subscriptions_id_upgrade_product"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionsService.post_subscriptions_id_upgrade_product"
      end
      # resource path
      local_var_path = '/subscriptions/{id}/upgrade-product'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'respectTerminationPeriod'] = respect_termination_period
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
      return_type = opts[:debug_return_type] || 'SubscriptionVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionsService.post_subscriptions_id_upgrade_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionsService#post_subscriptions_id_upgrade_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
