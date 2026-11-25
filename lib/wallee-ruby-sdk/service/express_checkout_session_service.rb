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
  class ExpressCheckoutSessionService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Express Checkout Session details
    # @param session_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [ExpressCheckoutSession]
    def get_express_checkout_session(session_id, space, opts = {})
      data, _status_code, _headers = get_express_checkout_session_with_http_info(session_id, space, opts)
      data
    end

    # Get Express Checkout Session details

    # @param session_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpressCheckoutSession, Integer, Hash)>] ExpressCheckoutSession data, response status code and response headers
    def get_express_checkout_session_with_http_info(session_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpressCheckoutSessionService.get_express_checkout_session ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling ExpressCheckoutSessionService.get_express_checkout_session"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling ExpressCheckoutSessionService.get_express_checkout_session"
      end
      # resource path
      local_var_path = '/express-checkout/session'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sessionId'] = session_id

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
      return_type = opts[:debug_return_type] || 'ExpressCheckoutSession'

      new_options = opts.merge(
        :operation => :"ExpressCheckoutSessionService.get_express_checkout_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpressCheckoutSessionService#get_express_checkout_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a new Express Checkout Session
    # Creates a new Express Checkout session and returns both sessionId and sessionToken. Use the sessionToken to render the wallet widget, and persist the sessionId for the later process call.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param express_checkout_session_create [ExpressCheckoutSessionCreate] 
    # @param [Hash] opts the optional parameters
    # @return [ExpressCheckoutSessionCreateResponse]
    def post_express_checkout_session_create(space, express_checkout_session_create, opts = {})
      data, _status_code, _headers = post_express_checkout_session_create_with_http_info(space, express_checkout_session_create, opts)
      data
    end

    # Create a new Express Checkout Session
    # Creates a new Express Checkout session and returns both sessionId and sessionToken. Use the sessionToken to render the wallet widget, and persist the sessionId for the later process call.

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param express_checkout_session_create [ExpressCheckoutSessionCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpressCheckoutSessionCreateResponse, Integer, Hash)>] ExpressCheckoutSessionCreateResponse data, response status code and response headers
    def post_express_checkout_session_create_with_http_info(space, express_checkout_session_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpressCheckoutSessionService.post_express_checkout_session_create ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling ExpressCheckoutSessionService.post_express_checkout_session_create"
      end
      # verify the required parameter 'express_checkout_session_create' is set
      if @api_client.config.client_side_validation && express_checkout_session_create.nil?
        fail ArgumentError, "Missing the required parameter 'express_checkout_session_create' when calling ExpressCheckoutSessionService.post_express_checkout_session_create"
      end
      # resource path
      local_var_path = '/express-checkout/session/create'

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
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(express_checkout_session_create)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpressCheckoutSessionCreateResponse'

      new_options = opts.merge(
        :operation => :"ExpressCheckoutSessionService.post_express_checkout_session_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpressCheckoutSessionService#post_express_checkout_session_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process Express Checkout Session
    # Processes the approved session and returns the redirect URL to continue checkout. Customer language and time zone are automatically derived from the HTTP request when available.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param express_checkout_session_process_request [ExpressCheckoutSessionProcessRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExpressCheckoutSessionProcessResponse]
    def post_express_checkout_session_process(space, express_checkout_session_process_request, opts = {})
      data, _status_code, _headers = post_express_checkout_session_process_with_http_info(space, express_checkout_session_process_request, opts)
      data
    end

    # Process Express Checkout Session
    # Processes the approved session and returns the redirect URL to continue checkout. Customer language and time zone are automatically derived from the HTTP request when available.

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param express_checkout_session_process_request [ExpressCheckoutSessionProcessRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpressCheckoutSessionProcessResponse, Integer, Hash)>] ExpressCheckoutSessionProcessResponse data, response status code and response headers
    def post_express_checkout_session_process_with_http_info(space, express_checkout_session_process_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpressCheckoutSessionService.post_express_checkout_session_process ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling ExpressCheckoutSessionService.post_express_checkout_session_process"
      end
      # verify the required parameter 'express_checkout_session_process_request' is set
      if @api_client.config.client_side_validation && express_checkout_session_process_request.nil?
        fail ArgumentError, "Missing the required parameter 'express_checkout_session_process_request' when calling ExpressCheckoutSessionService.post_express_checkout_session_process"
      end
      # resource path
      local_var_path = '/express-checkout/session/process'

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
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(express_checkout_session_process_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpressCheckoutSessionProcessResponse'

      new_options = opts.merge(
        :operation => :"ExpressCheckoutSessionService.post_express_checkout_session_process",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpressCheckoutSessionService#post_express_checkout_session_process\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
