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
  class TransactionMobileSdkService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Build Mobile SDK URL
    # This operation builds the URL which is used to load the payment form within a WebView on a mobile device. This operation is typically called through the mobile SDK.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def payment_form_url(credentials, opts = {})
      data, _status_code, _headers = payment_form_url_with_http_info(credentials, opts)
      return data
    end

    # Build Mobile SDK URL
    # This operation builds the URL which is used to load the payment form within a WebView on a mobile device. This operation is typically called through the mobile SDK.

    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def payment_form_url_with_http_info(credentials, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionMobileSdkService.payment_form_url ..."
      end
      # verify the required parameter 'credentials' is set
      fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionMobileSdkService.payment_form_url" if credentials.nil?
      # resource path
      local_var_path = "/transaction-mobile-sdk/payment-form-url".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'credentials'] = credentials

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/plain;charset=utf-8']
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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionMobileSdkService#payment_form_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
