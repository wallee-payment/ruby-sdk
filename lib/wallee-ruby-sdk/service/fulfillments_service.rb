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
  class FulfillmentsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Search fulfillments
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [FulfillmentSearchResponse]
    def get_payment_facilitator_fulfillments_search(space, opts = {})
      data, _status_code, _headers = get_payment_facilitator_fulfillments_search_with_http_info(space, opts)
      data
    end

    # Search fulfillments

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(FulfillmentSearchResponse, Integer, Hash)>] FulfillmentSearchResponse data, response status code and response headers
    def get_payment_facilitator_fulfillments_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FulfillmentsService.get_payment_facilitator_fulfillments_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling FulfillmentsService.get_payment_facilitator_fulfillments_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FulfillmentsService.get_payment_facilitator_fulfillments_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FulfillmentsService.get_payment_facilitator_fulfillments_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling FulfillmentsService.get_payment_facilitator_fulfillments_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/payment/facilitator/fulfillments/search'

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
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FulfillmentSearchResponse'

      new_options = opts.merge(
        :operation => :"FulfillmentsService.get_payment_facilitator_fulfillments_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentsService#get_payment_facilitator_fulfillments_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update tracking number
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param tracking_number_request [TrackingNumberRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Fulfillment]
    def patch_payment_facilitator_fulfillments_id_tracking_number(id, space, tracking_number_request, opts = {})
      data, _status_code, _headers = patch_payment_facilitator_fulfillments_id_tracking_number_with_http_info(id, space, tracking_number_request, opts)
      data
    end

    # Update tracking number

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param tracking_number_request [TrackingNumberRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Fulfillment, Integer, Hash)>] Fulfillment data, response status code and response headers
    def patch_payment_facilitator_fulfillments_id_tracking_number_with_http_info(id, space, tracking_number_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FulfillmentsService.patch_payment_facilitator_fulfillments_id_tracking_number ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FulfillmentsService.patch_payment_facilitator_fulfillments_id_tracking_number"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling FulfillmentsService.patch_payment_facilitator_fulfillments_id_tracking_number"
      end
      # verify the required parameter 'tracking_number_request' is set
      if @api_client.config.client_side_validation && tracking_number_request.nil?
        fail ArgumentError, "Missing the required parameter 'tracking_number_request' when calling FulfillmentsService.patch_payment_facilitator_fulfillments_id_tracking_number"
      end
      # resource path
      local_var_path = '/payment/facilitator/fulfillments/{id}/tracking-number'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tracking_number_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Fulfillment'

      new_options = opts.merge(
        :operation => :"FulfillmentsService.patch_payment_facilitator_fulfillments_id_tracking_number",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentsService#patch_payment_facilitator_fulfillments_id_tracking_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a fulfillment
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param create_fulfillment_request [CreateFulfillmentRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Fulfillment]
    def post_payment_facilitator_fulfillments(space, create_fulfillment_request, opts = {})
      data, _status_code, _headers = post_payment_facilitator_fulfillments_with_http_info(space, create_fulfillment_request, opts)
      data
    end

    # Create a fulfillment

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param create_fulfillment_request [CreateFulfillmentRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Fulfillment, Integer, Hash)>] Fulfillment data, response status code and response headers
    def post_payment_facilitator_fulfillments_with_http_info(space, create_fulfillment_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FulfillmentsService.post_payment_facilitator_fulfillments ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling FulfillmentsService.post_payment_facilitator_fulfillments"
      end
      # verify the required parameter 'create_fulfillment_request' is set
      if @api_client.config.client_side_validation && create_fulfillment_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_fulfillment_request' when calling FulfillmentsService.post_payment_facilitator_fulfillments"
      end
      # resource path
      local_var_path = '/payment/facilitator/fulfillments'

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
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_fulfillment_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Fulfillment'

      new_options = opts.merge(
        :operation => :"FulfillmentsService.post_payment_facilitator_fulfillments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentsService#post_payment_facilitator_fulfillments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Confirm in-store pickup
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Fulfillment]
    def post_payment_facilitator_fulfillments_id_confirm_in_store_pickup(id, space, opts = {})
      data, _status_code, _headers = post_payment_facilitator_fulfillments_id_confirm_in_store_pickup_with_http_info(id, space, opts)
      data
    end

    # Confirm in-store pickup

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Fulfillment, Integer, Hash)>] Fulfillment data, response status code and response headers
    def post_payment_facilitator_fulfillments_id_confirm_in_store_pickup_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FulfillmentsService.post_payment_facilitator_fulfillments_id_confirm_in_store_pickup ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FulfillmentsService.post_payment_facilitator_fulfillments_id_confirm_in_store_pickup"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling FulfillmentsService.post_payment_facilitator_fulfillments_id_confirm_in_store_pickup"
      end
      # resource path
      local_var_path = '/payment/facilitator/fulfillments/{id}/confirm-in-store-pickup'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Fulfillment'

      new_options = opts.merge(
        :operation => :"FulfillmentsService.post_payment_facilitator_fulfillments_id_confirm_in_store_pickup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentsService#post_payment_facilitator_fulfillments_id_confirm_in_store_pickup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
