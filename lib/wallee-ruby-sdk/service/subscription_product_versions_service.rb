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
  class SubscriptionProductVersionsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all product versions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [ProductVersionListResponse]
    def get_subscriptions_products_versions(space, opts = {})
      data, _status_code, _headers = get_subscriptions_products_versions_with_http_info(space, opts)
      data
    end

    # List all product versions

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(ProductVersionListResponse, Integer, Hash)>] ProductVersionListResponse data, response status code and response headers
    def get_subscriptions_products_versions_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.get_subscriptions_products_versions ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.get_subscriptions_products_versions"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/subscriptions/products/versions'

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
      return_type = opts[:debug_return_type] || 'ProductVersionListResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.get_subscriptions_products_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#get_subscriptions_products_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a product version
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionProductVersion]
    def get_subscriptions_products_versions_id(id, space, opts = {})
      data, _status_code, _headers = get_subscriptions_products_versions_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a product version

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionProductVersion, Integer, Hash)>] SubscriptionProductVersion data, response status code and response headers
    def get_subscriptions_products_versions_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.get_subscriptions_products_versions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionProductVersionsService.get_subscriptions_products_versions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.get_subscriptions_products_versions_id"
      end
      # resource path
      local_var_path = '/subscriptions/products/versions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SubscriptionProductVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.get_subscriptions_products_versions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#get_subscriptions_products_versions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search product versions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [ProductVersionSearchResponse]
    def get_subscriptions_products_versions_search(space, opts = {})
      data, _status_code, _headers = get_subscriptions_products_versions_search_with_http_info(space, opts)
      data
    end

    # Search product versions

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(ProductVersionSearchResponse, Integer, Hash)>] ProductVersionSearchResponse data, response status code and response headers
    def get_subscriptions_products_versions_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.get_subscriptions_products_versions_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.get_subscriptions_products_versions_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SubscriptionProductVersionsService.get_subscriptions_products_versions_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/subscriptions/products/versions/search'

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
      return_type = opts[:debug_return_type] || 'ProductVersionSearchResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.get_subscriptions_products_versions_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#get_subscriptions_products_versions_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a product version
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_product_version_pending [SubscriptionProductVersionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionProductVersion]
    def patch_subscriptions_products_versions_id(id, space, subscription_product_version_pending, opts = {})
      data, _status_code, _headers = patch_subscriptions_products_versions_id_with_http_info(id, space, subscription_product_version_pending, opts)
      data
    end

    # Update a product version

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_product_version_pending [SubscriptionProductVersionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionProductVersion, Integer, Hash)>] SubscriptionProductVersion data, response status code and response headers
    def patch_subscriptions_products_versions_id_with_http_info(id, space, subscription_product_version_pending, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.patch_subscriptions_products_versions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionProductVersionsService.patch_subscriptions_products_versions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.patch_subscriptions_products_versions_id"
      end
      # verify the required parameter 'subscription_product_version_pending' is set
      if @api_client.config.client_side_validation && subscription_product_version_pending.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_product_version_pending' when calling SubscriptionProductVersionsService.patch_subscriptions_products_versions_id"
      end
      # resource path
      local_var_path = '/subscriptions/products/versions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_product_version_pending)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionProductVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.patch_subscriptions_products_versions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#patch_subscriptions_products_versions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a product version
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_product_version_pending [SubscriptionProductVersionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionProductVersion]
    def post_subscriptions_products_versions(space, subscription_product_version_pending, opts = {})
      data, _status_code, _headers = post_subscriptions_products_versions_with_http_info(space, subscription_product_version_pending, opts)
      data
    end

    # Create a product version

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_product_version_pending [SubscriptionProductVersionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionProductVersion, Integer, Hash)>] SubscriptionProductVersion data, response status code and response headers
    def post_subscriptions_products_versions_with_http_info(space, subscription_product_version_pending, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.post_subscriptions_products_versions ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions"
      end
      # verify the required parameter 'subscription_product_version_pending' is set
      if @api_client.config.client_side_validation && subscription_product_version_pending.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_product_version_pending' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions"
      end
      # resource path
      local_var_path = '/subscriptions/products/versions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_product_version_pending)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionProductVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.post_subscriptions_products_versions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#post_subscriptions_products_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Activate a product version
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionProductVersion]
    def post_subscriptions_products_versions_id_activate(id, space, opts = {})
      data, _status_code, _headers = post_subscriptions_products_versions_id_activate_with_http_info(id, space, opts)
      data
    end

    # Activate a product version

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionProductVersion, Integer, Hash)>] SubscriptionProductVersion data, response status code and response headers
    def post_subscriptions_products_versions_id_activate_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.post_subscriptions_products_versions_id_activate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions_id_activate"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions_id_activate"
      end
      # resource path
      local_var_path = '/subscriptions/products/versions/{id}/activate'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SubscriptionProductVersion'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.post_subscriptions_products_versions_id_activate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#post_subscriptions_products_versions_id_activate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retire a product version
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_product_version_retirement_request [SubscriptionProductVersionRetirementRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionProductVersionRetirement]
    def post_subscriptions_products_versions_id_retire(id, space, subscription_product_version_retirement_request, opts = {})
      data, _status_code, _headers = post_subscriptions_products_versions_id_retire_with_http_info(id, space, subscription_product_version_retirement_request, opts)
      data
    end

    # Retire a product version

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_product_version_retirement_request [SubscriptionProductVersionRetirementRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionProductVersionRetirement, Integer, Hash)>] SubscriptionProductVersionRetirement data, response status code and response headers
    def post_subscriptions_products_versions_id_retire_with_http_info(id, space, subscription_product_version_retirement_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionProductVersionsService.post_subscriptions_products_versions_id_retire ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions_id_retire"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions_id_retire"
      end
      # verify the required parameter 'subscription_product_version_retirement_request' is set
      if @api_client.config.client_side_validation && subscription_product_version_retirement_request.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_product_version_retirement_request' when calling SubscriptionProductVersionsService.post_subscriptions_products_versions_id_retire"
      end
      # resource path
      local_var_path = '/subscriptions/products/versions/{id}/retire'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_product_version_retirement_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionProductVersionRetirement'

      new_options = opts.merge(
        :operation => :"SubscriptionProductVersionsService.post_subscriptions_products_versions_id_retire",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionsService#post_subscriptions_products_versions_id_retire\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
