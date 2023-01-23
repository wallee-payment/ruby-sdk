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
  class AnalyticsQueryService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel Execution
    # Cancels the specified query execution.
    # @param id The ID of the query execution to cancel.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_execution(id, opts = {})
      cancel_execution_with_http_info(id, opts)
      return nil
    end

    # Cancel Execution
    # Cancels the specified query execution.

    # @param id The ID of the query execution to cancel.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def cancel_execution_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsQueryService.cancel_execution ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AnalyticsQueryService.cancel_execution" if id.nil?
      # resource path
      local_var_path = "/analytics-query/cancel-execution".sub('{format}','json')

      # query parameters
      query_params = {}
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueryService#cancel_execution\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch Result
    # Fetches one batch of the result of a query execution.
    # @param id The ID of the query execution for which to fetch the result.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :timeout The maximal time in seconds to wait for the result if it is not yet available. Use 0 (the default) to return immediately without waiting.
    # @option opts [Integer] :max_rows The maximum number of rows to return per batch. (Between 1 and 999. The default is 999.)
    # @option opts [String] :next_token The next-token of the preceding batch to get the next result batch or null to get the first result batch.
    # @return [AnalyticsQueryResultBatch]
    def fetch_result(id, opts = {})
      data, _status_code, _headers = fetch_result_with_http_info(id, opts)
      return data
    end

    # Fetch Result
    # Fetches one batch of the result of a query execution.

    # @param id The ID of the query execution for which to fetch the result.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :timeout The maximal time in seconds to wait for the result if it is not yet available. Use 0 (the default) to return immediately without waiting.
    # @option opts [Integer] :max_rows The maximum number of rows to return per batch. (Between 1 and 999. The default is 999.)
    # @option opts [String] :next_token The next-token of the preceding batch to get the next result batch or null to get the first result batch.
    # @return [Array<(AnalyticsQueryResultBatch, Fixnum, Hash)>] AnalyticsQueryResultBatch data, response status code and response headers
    def fetch_result_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsQueryService.fetch_result ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AnalyticsQueryService.fetch_result" if id.nil?
      # resource path
      local_var_path = "/analytics-query/fetch-result".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'id'] = id
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?
      query_params[:'maxRows'] = opts[:'max_rows'] if !opts[:'max_rows'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

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
        :return_type => 'AnalyticsQueryResultBatch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueryService#fetch_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate Download URL
    # Generate a URL from which the results of a query execution can be downloaded in CSV format.
    # @param id The ID of the query execution for which to generate the download URL.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :timeout The maximal time in seconds to wait for the result if it is not yet available. Use 0 (the default) to return immediately without waiting.
    # @return [String]
    def generate_download_url(id, opts = {})
      data, _status_code, _headers = generate_download_url_with_http_info(id, opts)
      return data
    end

    # Generate Download URL
    # Generate a URL from which the results of a query execution can be downloaded in CSV format.

    # @param id The ID of the query execution for which to generate the download URL.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :timeout The maximal time in seconds to wait for the result if it is not yet available. Use 0 (the default) to return immediately without waiting.
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def generate_download_url_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsQueryService.generate_download_url ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AnalyticsQueryService.generate_download_url" if id.nil?
      # resource path
      local_var_path = "/analytics-query/generate-download-url".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'id'] = id
      query_params[:'timeout'] = opts[:'timeout'] if !opts[:'timeout'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['text/plain']
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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueryService#generate_download_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Schemas
    # Get the schemas describing the available tables and their columns.
    # @param [Hash] opts the optional parameters
    # @return [Array<AnalyticsSchemaTable>]
    def schema(opts = {})
      data, _status_code, _headers = schema_with_http_info(opts)
      return data
    end

    # Get Schemas
    # Get the schemas describing the available tables and their columns.

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AnalyticsSchemaTable>, Fixnum, Hash)>] Array<AnalyticsSchemaTable> data, response status code and response headers
    def schema_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsQueryService.schema ..."
      end
      # resource path
      local_var_path = "/analytics-query/schema".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :return_type => 'Array<AnalyticsSchemaTable>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueryService#schema\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execution Status
    # Returns the current status of a query execution.
    # @param id The ID of the query execution for which to get the status.
    # @param [Hash] opts the optional parameters
    # @return [AnalyticsQueryExecution]
    def status(id, opts = {})
      data, _status_code, _headers = status_with_http_info(id, opts)
      return data
    end

    # Execution Status
    # Returns the current status of a query execution.

    # @param id The ID of the query execution for which to get the status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnalyticsQueryExecution, Fixnum, Hash)>] AnalyticsQueryExecution data, response status code and response headers
    def status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsQueryService.status ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling AnalyticsQueryService.status" if id.nil?
      # resource path
      local_var_path = "/analytics-query/status".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'AnalyticsQueryExecution')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueryService#status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit Query
    # Submits a query for execution.
    # @param query The query to submit.
    # @param [Hash] opts the optional parameters
    # @return [AnalyticsQueryExecution]
    def submit_query(query, opts = {})
      data, _status_code, _headers = submit_query_with_http_info(query, opts)
      return data
    end

    # Submit Query
    # Submits a query for execution.

    # @param query The query to submit.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnalyticsQueryExecution, Fixnum, Hash)>] AnalyticsQueryExecution data, response status code and response headers
    def submit_query_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnalyticsQueryService.submit_query ..."
      end
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling AnalyticsQueryService.submit_query" if query.nil?
      # resource path
      local_var_path = "/analytics-query/submit-query".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :return_type => 'AnalyticsQueryExecution')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsQueryService#submit_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
