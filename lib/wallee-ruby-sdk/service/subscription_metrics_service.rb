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
  class SubscriptionMetricsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a metric
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_subscriptions_metrics_id(id, space, opts = {})
      delete_subscriptions_metrics_id_with_http_info(id, space, opts)
      nil
    end

    # Delete a metric

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_subscriptions_metrics_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionMetricsService.delete_subscriptions_metrics_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionMetricsService.delete_subscriptions_metrics_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionMetricsService.delete_subscriptions_metrics_id"
      end
      # resource path
      local_var_path = '/subscriptions/metrics/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"SubscriptionMetricsService.delete_subscriptions_metrics_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionMetricsService#delete_subscriptions_metrics_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all metrics
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [MetricListResponse]
    def get_subscriptions_metrics(space, opts = {})
      data, _status_code, _headers = get_subscriptions_metrics_with_http_info(space, opts)
      data
    end

    # List all metrics

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(MetricListResponse, Integer, Hash)>] MetricListResponse data, response status code and response headers
    def get_subscriptions_metrics_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionMetricsService.get_subscriptions_metrics ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionMetricsService.get_subscriptions_metrics"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling SubscriptionMetricsService.get_subscriptions_metrics, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling SubscriptionMetricsService.get_subscriptions_metrics, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionMetricsService.get_subscriptions_metrics, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionMetricsService.get_subscriptions_metrics, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/subscriptions/metrics'

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
      return_type = opts[:debug_return_type] || 'MetricListResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionMetricsService.get_subscriptions_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionMetricsService#get_subscriptions_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a metric
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionMetric]
    def get_subscriptions_metrics_id(id, space, opts = {})
      data, _status_code, _headers = get_subscriptions_metrics_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a metric

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionMetric, Integer, Hash)>] SubscriptionMetric data, response status code and response headers
    def get_subscriptions_metrics_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionMetricsService.get_subscriptions_metrics_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionMetricsService.get_subscriptions_metrics_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionMetricsService.get_subscriptions_metrics_id"
      end
      # resource path
      local_var_path = '/subscriptions/metrics/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SubscriptionMetric'

      new_options = opts.merge(
        :operation => :"SubscriptionMetricsService.get_subscriptions_metrics_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionMetricsService#get_subscriptions_metrics_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search metrics
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [MetricSearchResponse]
    def get_subscriptions_metrics_search(space, opts = {})
      data, _status_code, _headers = get_subscriptions_metrics_search_with_http_info(space, opts)
      data
    end

    # Search metrics

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(MetricSearchResponse, Integer, Hash)>] MetricSearchResponse data, response status code and response headers
    def get_subscriptions_metrics_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionMetricsService.get_subscriptions_metrics_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionMetricsService.get_subscriptions_metrics_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionMetricsService.get_subscriptions_metrics_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SubscriptionMetricsService.get_subscriptions_metrics_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SubscriptionMetricsService.get_subscriptions_metrics_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/subscriptions/metrics/search'

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
      return_type = opts[:debug_return_type] || 'MetricSearchResponse'

      new_options = opts.merge(
        :operation => :"SubscriptionMetricsService.get_subscriptions_metrics_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionMetricsService#get_subscriptions_metrics_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a metric
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_metric_active [SubscriptionMetricActive] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionMetric]
    def patch_subscriptions_metrics_id(id, space, subscription_metric_active, opts = {})
      data, _status_code, _headers = patch_subscriptions_metrics_id_with_http_info(id, space, subscription_metric_active, opts)
      data
    end

    # Update a metric

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_metric_active [SubscriptionMetricActive] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionMetric, Integer, Hash)>] SubscriptionMetric data, response status code and response headers
    def patch_subscriptions_metrics_id_with_http_info(id, space, subscription_metric_active, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionMetricsService.patch_subscriptions_metrics_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionMetricsService.patch_subscriptions_metrics_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionMetricsService.patch_subscriptions_metrics_id"
      end
      # verify the required parameter 'subscription_metric_active' is set
      if @api_client.config.client_side_validation && subscription_metric_active.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_metric_active' when calling SubscriptionMetricsService.patch_subscriptions_metrics_id"
      end
      # resource path
      local_var_path = '/subscriptions/metrics/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_metric_active)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionMetric'

      new_options = opts.merge(
        :operation => :"SubscriptionMetricsService.patch_subscriptions_metrics_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionMetricsService#patch_subscriptions_metrics_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a metric
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_metric_create [SubscriptionMetricCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SubscriptionMetric]
    def post_subscriptions_metrics(space, subscription_metric_create, opts = {})
      data, _status_code, _headers = post_subscriptions_metrics_with_http_info(space, subscription_metric_create, opts)
      data
    end

    # Create a metric

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param subscription_metric_create [SubscriptionMetricCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SubscriptionMetric, Integer, Hash)>] SubscriptionMetric data, response status code and response headers
    def post_subscriptions_metrics_with_http_info(space, subscription_metric_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SubscriptionMetricsService.post_subscriptions_metrics ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling SubscriptionMetricsService.post_subscriptions_metrics"
      end
      # verify the required parameter 'subscription_metric_create' is set
      if @api_client.config.client_side_validation && subscription_metric_create.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_metric_create' when calling SubscriptionMetricsService.post_subscriptions_metrics"
      end
      # resource path
      local_var_path = '/subscriptions/metrics'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_metric_create)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionMetric'

      new_options = opts.merge(
        :operation => :"SubscriptionMetricsService.post_subscriptions_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionMetricsService#post_subscriptions_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
