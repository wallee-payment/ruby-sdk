=begin
wallee API: 2.2.0

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
  class TransactionLightboxService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Build JavaScript URL
    # This operation creates the URL which can be used to embed the JavaScript for handling the Lightbox checkout flow.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def javascript_url(space_id, id, opts = {})
      data, _status_code, _headers = javascript_url_with_http_info(space_id, id, opts)
      return data
    end

    # Build JavaScript URL
    # This operation creates the URL which can be used to embed the JavaScript for handling the Lightbox checkout flow.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def javascript_url_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionLightboxService.javascript_url ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionLightboxService.javascript_url" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionLightboxService.javascript_url" if id.nil?
      # resource path
      local_var_path = "/transaction-lightbox/javascript-url".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionLightboxService#javascript_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
