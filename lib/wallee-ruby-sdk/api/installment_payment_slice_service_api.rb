=begin
wallee API: 2.0.0

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
  class InstallmentPaymentSliceService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param filter The filter which restricts the installment payment slices which are used to calculate the count.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def installment_payment_slice_service_count(space_id, filter, opts = {})
      data, _status_code, _headers = installment_payment_slice_service_count_with_http_info(space_id, filter, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param filter The filter which restricts the installment payment slices which are used to calculate the count.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def installment_payment_slice_service_count_with_http_info(space_id, filter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentSliceService.installment_payment_slice_service_count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentSliceService.installment_payment_slice_service_count" if space_id.nil?
      # verify the required parameter 'filter' is set
      fail ArgumentError, "Missing the required parameter 'filter' when calling InstallmentPaymentSliceService.installment_payment_slice_service_count" if filter.nil?
      # resource path
      local_var_path = "/installment-payment-slice/count".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(filter)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentSliceService#installment_payment_slice_service_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the installment payment slice which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [InstallmentPaymentSlice]
    def installment_payment_slice_service_read(space_id, id, opts = {})
      data, _status_code, _headers = installment_payment_slice_service_read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the installment payment slice which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstallmentPaymentSlice, Fixnum, Hash)>] InstallmentPaymentSlice data, response status code and response headers
    def installment_payment_slice_service_read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentSliceService.installment_payment_slice_service_read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentSliceService.installment_payment_slice_service_read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling InstallmentPaymentSliceService.installment_payment_slice_service_read" if id.nil?
      # resource path
      local_var_path = "/installment-payment-slice/read".sub('{format}','json')

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InstallmentPaymentSlice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentSliceService#installment_payment_slice_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the installment payment slices which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<InstallmentPaymentSlice>]
    def installment_payment_slice_service_search(space_id, query, opts = {})
      data, _status_code, _headers = installment_payment_slice_service_search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the installment payment slices which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InstallmentPaymentSlice>, Fixnum, Hash)>] Array<InstallmentPaymentSlice> data, response status code and response headers
    def installment_payment_slice_service_search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentSliceService.installment_payment_slice_service_search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentSliceService.installment_payment_slice_service_search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling InstallmentPaymentSliceService.installment_payment_slice_service_search" if query.nil?
      # resource path
      local_var_path = "/installment-payment-slice/search".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InstallmentPaymentSlice>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentSliceService#installment_payment_slice_service_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
