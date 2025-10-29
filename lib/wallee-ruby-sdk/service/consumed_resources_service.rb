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
  class ConsumedResourcesService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List consumed resources
    # @param start_date [Time] The start date of the period for which the consumed resources are to be returned.
    # @param end_date [Time] The end date of the period for which the consumed resources are to be returned.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [MetricUsageListResponse]
    def get_spaces_consumed_resources(start_date, end_date, space, opts = {})
      data, _status_code, _headers = get_spaces_consumed_resources_with_http_info(start_date, end_date, space, opts)
      data
    end

    # List consumed resources

    # @param start_date [Time] The start date of the period for which the consumed resources are to be returned.
    # @param end_date [Time] The end date of the period for which the consumed resources are to be returned.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(MetricUsageListResponse, Integer, Hash)>] MetricUsageListResponse data, response status code and response headers
    def get_spaces_consumed_resources_with_http_info(start_date, end_date, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsumedResourcesService.get_spaces_consumed_resources ...'
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling ConsumedResourcesService.get_spaces_consumed_resources"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling ConsumedResourcesService.get_spaces_consumed_resources"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling ConsumedResourcesService.get_spaces_consumed_resources"
      end
      # resource path
      local_var_path = '/spaces/consumed-resources'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startDate'] = start_date
      query_params[:'endDate'] = end_date
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
      return_type = opts[:debug_return_type] || 'MetricUsageListResponse'

      new_options = opts.merge(
        :operation => :"ConsumedResourcesService.get_spaces_consumed_resources",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConsumedResourcesService#get_spaces_consumed_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
