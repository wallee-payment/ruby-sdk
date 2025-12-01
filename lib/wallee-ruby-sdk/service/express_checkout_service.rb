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
  class ExpressCheckoutService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new Express Checkout Session
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param express_checkout_session_create [ExpressCheckoutSessionCreate] 
    # @param [Hash] opts the optional parameters
    # @return [ExpressCheckoutCreateResponse]
    def post_express_checkout_create_session(space, express_checkout_session_create, opts = {})
      data, _status_code, _headers = post_express_checkout_create_session_with_http_info(space, express_checkout_session_create, opts)
      data
    end

    # Create a new Express Checkout Session

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param express_checkout_session_create [ExpressCheckoutSessionCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpressCheckoutCreateResponse, Integer, Hash)>] ExpressCheckoutCreateResponse data, response status code and response headers
    def post_express_checkout_create_session_with_http_info(space, express_checkout_session_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExpressCheckoutService.post_express_checkout_create_session ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling ExpressCheckoutService.post_express_checkout_create_session"
      end
      # verify the required parameter 'express_checkout_session_create' is set
      if @api_client.config.client_side_validation && express_checkout_session_create.nil?
        fail ArgumentError, "Missing the required parameter 'express_checkout_session_create' when calling ExpressCheckoutService.post_express_checkout_create_session"
      end
      # resource path
      local_var_path = '/express-checkout/create-session'

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(express_checkout_session_create)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpressCheckoutCreateResponse'

      new_options = opts.merge(
        :operation => :"ExpressCheckoutService.post_express_checkout_create_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpressCheckoutService#post_express_checkout_create_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
