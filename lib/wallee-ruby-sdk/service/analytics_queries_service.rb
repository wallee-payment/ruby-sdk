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
  class AnalyticsQueriesService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel a query execution
    # @param query_token [String] Identifies the query execution.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_analytics_queries_query_token(query_token, account, opts = {})
      delete_analytics_queries_query_token_with_http_info(query_token, account, opts)
      nil
    end

    # Cancel a query execution

    # @param query_token [String] Identifies the query execution.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_analytics_queries_query_token_with_http_info(query_token, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsQueriesService.delete_analytics_queries_query_token ...'
      end
      # verify the required parameter 'query_token' is set
      if @api_client.config.client_side_validation && query_token.nil?
        fail ArgumentError, "Missing the required parameter 'query_token' when calling AnalyticsQueriesService.delete_analytics_queries_query_token"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AnalyticsQueriesService.delete_analytics_queries_query_token"
      end
      # resource path
      local_var_path = '/analytics/queries/{queryToken}'.sub('{' + 'queryToken' + '}', CGI.escape(query_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"AnalyticsQueriesService.delete_analytics_queries_query_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueriesService#delete_analytics_queries_query_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Get portion of query executions for account
    # @param offset [Integer] A cursor for pagination, specifies the number of query executions to skip.
    # @param limit [Integer] A limit on the number of query executions to be returned, between 1 and 100. Default is 100.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [ResultPortionModel]
    def get_analytics_queries(offset, limit, account, opts = {})
      data, _status_code, _headers = get_analytics_queries_with_http_info(offset, limit, account, opts)
      data
    end

    # Get portion of query executions for account

    # @param offset [Integer] A cursor for pagination, specifies the number of query executions to skip.
    # @param limit [Integer] A limit on the number of query executions to be returned, between 1 and 100. Default is 100.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResultPortionModel, Integer, Hash)>] ResultPortionModel data, response status code and response headers
    def get_analytics_queries_with_http_info(offset, limit, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsQueriesService.get_analytics_queries ...'
      end
      # verify the required parameter 'offset' is set
      if @api_client.config.client_side_validation && offset.nil?
        fail ArgumentError, "Missing the required parameter 'offset' when calling AnalyticsQueriesService.get_analytics_queries"
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling AnalyticsQueriesService.get_analytics_queries"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AnalyticsQueriesService.get_analytics_queries"
      end
      # resource path
      local_var_path = '/analytics/queries'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = offset
      query_params[:'limit'] = limit

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultPortionModel'

      new_options = opts.merge(
        :operation => :"AnalyticsQueriesService.get_analytics_queries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueriesService#get_analytics_queries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a query execution information
    # Queries are processed asynchronously and may take several minutes to complete. Avoid frequent requests, as they will not speed up processing.
    # @param query_token [String] Identifies the query execution.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [SubmittedAnalyticsQueryExecution]
    def get_analytics_queries_query_token(query_token, account, opts = {})
      data, _status_code, _headers = get_analytics_queries_query_token_with_http_info(query_token, account, opts)
      data
    end

    # Retrieve a query execution information
    # Queries are processed asynchronously and may take several minutes to complete. Avoid frequent requests, as they will not speed up processing.
    # Timeout for this request is: 97 seconds.
    # @param query_token [String] Identifies the query execution.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubmittedAnalyticsQueryExecution, Integer, Hash)>] SubmittedAnalyticsQueryExecution data, response status code and response headers
    def get_analytics_queries_query_token_with_http_info(query_token, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsQueriesService.get_analytics_queries_query_token ...'
      end
      # verify the required parameter 'query_token' is set
      if @api_client.config.client_side_validation && query_token.nil?
        fail ArgumentError, "Missing the required parameter 'query_token' when calling AnalyticsQueriesService.get_analytics_queries_query_token"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AnalyticsQueriesService.get_analytics_queries_query_token"
      end
      # resource path
      local_var_path = '/analytics/queries/{queryToken}'.sub('{' + 'queryToken' + '}', CGI.escape(query_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = 97

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SubmittedAnalyticsQueryExecution'

      new_options = opts.merge(
        :operation => :"AnalyticsQueriesService.get_analytics_queries_query_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueriesService#get_analytics_queries_query_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Generate a temporary URL to download the query result
    # Generate a short-lived (5-minute) URL for downloading the Analytics query result file. Note that each URL generation is counted as a potential download and will be billed accordingly. Do not use this endpoint for periodic checks of file availability. Instead, use the 'Retrieve a query execution' endpoint for status checks.
    # @param query_token [String] Identifies the query execution.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_analytics_queries_query_token_result(query_token, account, opts = {})
      data, _status_code, _headers = get_analytics_queries_query_token_result_with_http_info(query_token, account, opts)
      data
    end

    # Generate a temporary URL to download the query result
    # Generate a short-lived (5-minute) URL for downloading the Analytics query result file. Note that each URL generation is counted as a potential download and will be billed accordingly. Do not use this endpoint for periodic checks of file availability. Instead, use the &#39;Retrieve a query execution&#39; endpoint for status checks.

    # @param query_token [String] Identifies the query execution.
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_analytics_queries_query_token_result_with_http_info(query_token, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsQueriesService.get_analytics_queries_query_token_result ...'
      end
      # verify the required parameter 'query_token' is set
      if @api_client.config.client_side_validation && query_token.nil?
        fail ArgumentError, "Missing the required parameter 'query_token' when calling AnalyticsQueriesService.get_analytics_queries_query_token_result"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AnalyticsQueriesService.get_analytics_queries_query_token_result"
      end
      # resource path
      local_var_path = '/analytics/queries/{queryToken}/result'.sub('{' + 'queryToken' + '}', CGI.escape(query_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"AnalyticsQueriesService.get_analytics_queries_query_token_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueriesService#get_analytics_queries_query_token_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Submit a query execution
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param analytics_query_execution_request [AnalyticsQueryExecutionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AnalyticsQueryExecutionResponse]
    def post_analytics_queries_submit(account, analytics_query_execution_request, opts = {})
      data, _status_code, _headers = post_analytics_queries_submit_with_http_info(account, analytics_query_execution_request, opts)
      data
    end

    # Submit a query execution

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param analytics_query_execution_request [AnalyticsQueryExecutionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnalyticsQueryExecutionResponse, Integer, Hash)>] AnalyticsQueryExecutionResponse data, response status code and response headers
    def post_analytics_queries_submit_with_http_info(account, analytics_query_execution_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsQueriesService.post_analytics_queries_submit ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling AnalyticsQueriesService.post_analytics_queries_submit"
      end
      # verify the required parameter 'analytics_query_execution_request' is set
      if @api_client.config.client_side_validation && analytics_query_execution_request.nil?
        fail ArgumentError, "Missing the required parameter 'analytics_query_execution_request' when calling AnalyticsQueriesService.post_analytics_queries_submit"
      end
      # resource path
      local_var_path = '/analytics/queries/submit'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(analytics_query_execution_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AnalyticsQueryExecutionResponse'

      new_options = opts.merge(
        :operation => :"AnalyticsQueriesService.post_analytics_queries_submit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueriesService#post_analytics_queries_submit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
