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
  class ShopifySubscriptionService
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
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.count" if space_id.nil?
      # resource path
      local_var_path = "/shopify-subscription/count".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # This operation allows to create a Shopify subscription.
    # @param space_id 
    # @param creation_request 
    # @param [Hash] opts the optional parameters
    # @return [ShopifySubscriptionVersion]
    def create(space_id, creation_request, opts = {})
      data, _status_code, _headers = create_with_http_info(space_id, creation_request, opts)
      return data
    end

    # Create
    # This operation allows to create a Shopify subscription.

    # @param space_id 
    # @param creation_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopifySubscriptionVersion, Fixnum, Hash)>] ShopifySubscriptionVersion data, response status code and response headers
    def create_with_http_info(space_id, creation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.create" if space_id.nil?
      # verify the required parameter 'creation_request' is set
      fail ArgumentError, "Missing the required parameter 'creation_request' when calling ShopifySubscriptionService.create" if creation_request.nil?
      # resource path
      local_var_path = "/shopify-subscription/create".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(creation_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'ShopifySubscriptionVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the Shopify subscription which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [ShopifySubscription]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.

    # @param space_id 
    # @param id The id of the Shopify subscription which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopifySubscription, Fixnum, Hash)>] ShopifySubscription data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ShopifySubscriptionService.read" if id.nil?
      # resource path
      local_var_path = "/shopify-subscription/read".sub('{format}','json')

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
        :return_type => 'ShopifySubscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the Shopify subscriptions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<ShopifySubscription>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.

    # @param space_id 
    # @param query The query restricts the Shopify subscriptions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ShopifySubscription>, Fixnum, Hash)>] Array<ShopifySubscription> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling ShopifySubscriptionService.search" if query.nil?
      # resource path
      local_var_path = "/shopify-subscription/search".sub('{format}','json')

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
        :return_type => 'Array<ShopifySubscription>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terminate
    # This operation allows to terminate a Shopify subscription.
    # @param space_id 
    # @param subscription_id The ID identifies the Shopify subscription which should be terminated.
    # @param respect_termination_period The respect termination period controls whether the termination period configured on the product version should be respected or if the operation should take effect immediately.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate(space_id, subscription_id, respect_termination_period, opts = {})
      terminate_with_http_info(space_id, subscription_id, respect_termination_period, opts)
      return nil
    end

    # Terminate
    # This operation allows to terminate a Shopify subscription.

    # @param space_id 
    # @param subscription_id The ID identifies the Shopify subscription which should be terminated.
    # @param respect_termination_period The respect termination period controls whether the termination period configured on the product version should be respected or if the operation should take effect immediately.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def terminate_with_http_info(space_id, subscription_id, respect_termination_period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.terminate ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.terminate" if space_id.nil?
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling ShopifySubscriptionService.terminate" if subscription_id.nil?
      # verify the required parameter 'respect_termination_period' is set
      fail ArgumentError, "Missing the required parameter 'respect_termination_period' when calling ShopifySubscriptionService.terminate" if respect_termination_period.nil?
      # resource path
      local_var_path = "/shopify-subscription/terminate".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'subscriptionId'] = subscription_id
      query_params[:'respectTerminationPeriod'] = respect_termination_period

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
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
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#terminate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # This operation allows to update a Shopify subscription.
    # @param space_id 
    # @param subscription 
    # @param [Hash] opts the optional parameters
    # @return [ShopifySubscriptionVersion]
    def update(space_id, subscription, opts = {})
      data, _status_code, _headers = update_with_http_info(space_id, subscription, opts)
      return data
    end

    # Update
    # This operation allows to update a Shopify subscription.

    # @param space_id 
    # @param subscription 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopifySubscriptionVersion, Fixnum, Hash)>] ShopifySubscriptionVersion data, response status code and response headers
    def update_with_http_info(space_id, subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.update ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.update" if space_id.nil?
      # verify the required parameter 'subscription' is set
      fail ArgumentError, "Missing the required parameter 'subscription' when calling ShopifySubscriptionService.update" if subscription.nil?
      # resource path
      local_var_path = "/shopify-subscription/update".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(subscription)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'ShopifySubscriptionVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Addresses
    # This operation allows to update a Shopify subscription addresses.
    # @param space_id 
    # @param update_request 
    # @param [Hash] opts the optional parameters
    # @return [ShopifySubscriptionVersion]
    def update_addresses(space_id, update_request, opts = {})
      data, _status_code, _headers = update_addresses_with_http_info(space_id, update_request, opts)
      return data
    end

    # Update Addresses
    # This operation allows to update a Shopify subscription addresses.

    # @param space_id 
    # @param update_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopifySubscriptionVersion, Fixnum, Hash)>] ShopifySubscriptionVersion data, response status code and response headers
    def update_addresses_with_http_info(space_id, update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShopifySubscriptionService.update_addresses ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling ShopifySubscriptionService.update_addresses" if space_id.nil?
      # verify the required parameter 'update_request' is set
      fail ArgumentError, "Missing the required parameter 'update_request' when calling ShopifySubscriptionService.update_addresses" if update_request.nil?
      # resource path
      local_var_path = "/shopify-subscription/update-addresses".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(update_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'ShopifySubscriptionVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopifySubscriptionService#update_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
