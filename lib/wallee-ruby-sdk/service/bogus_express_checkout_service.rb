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
  class BogusExpressCheckoutService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Approve express checkout wallet payment
    # @param session_token [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param bogus_express_checkout_approval_request [BogusExpressCheckoutApprovalRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ExpressCheckoutApprovalResponse]
    def post_bogus_express_checkout_on_approve(session_token, space, bogus_express_checkout_approval_request, opts = {})
      data, _status_code, _headers = post_bogus_express_checkout_on_approve_with_http_info(session_token, space, bogus_express_checkout_approval_request, opts)
      data
    end

    # Approve express checkout wallet payment

    # @param session_token [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param bogus_express_checkout_approval_request [BogusExpressCheckoutApprovalRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpressCheckoutApprovalResponse, Integer, Hash)>] ExpressCheckoutApprovalResponse data, response status code and response headers
    def post_bogus_express_checkout_on_approve_with_http_info(session_token, space, bogus_express_checkout_approval_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BogusExpressCheckoutService.post_bogus_express_checkout_on_approve ...'
      end
      # verify the required parameter 'session_token' is set
      if @api_client.config.client_side_validation && session_token.nil?
        fail ArgumentError, "Missing the required parameter 'session_token' when calling BogusExpressCheckoutService.post_bogus_express_checkout_on_approve"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling BogusExpressCheckoutService.post_bogus_express_checkout_on_approve"
      end
      # verify the required parameter 'bogus_express_checkout_approval_request' is set
      if @api_client.config.client_side_validation && bogus_express_checkout_approval_request.nil?
        fail ArgumentError, "Missing the required parameter 'bogus_express_checkout_approval_request' when calling BogusExpressCheckoutService.post_bogus_express_checkout_on_approve"
      end
      # resource path
      local_var_path = '/bogus-express-checkout/on-approve'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sessionToken'] = session_token

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bogus_express_checkout_approval_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ExpressCheckoutApprovalResponse'

      new_options = opts.merge(
        :operation => :"BogusExpressCheckoutService.post_bogus_express_checkout_on_approve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BogusExpressCheckoutService#post_bogus_express_checkout_on_approve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
