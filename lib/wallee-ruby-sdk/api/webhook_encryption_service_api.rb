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
  class WebhookEncryptionService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param id The ID of the key version.
    # @param [Hash] opts the optional parameters
    # @return [WebhookEncryptionPublicKey]
    def read(id, opts = {})
      data, _status_code, _headers = read_with_http_info(id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.

    # @param id The ID of the key version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEncryptionPublicKey, Fixnum, Hash)>] WebhookEncryptionPublicKey data, response status code and response headers
    def read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhookEncryptionService.read ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEncryptionService.read" if id.nil?
      # resource path
      local_var_path = "/webhook-encryption/read".sub('{format}','json')

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
        :return_type => 'WebhookEncryptionPublicKey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEncryptionService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify webhook content
    # Verify webhook content using signature header

    # @param [String] signature_header Signature header 'X-Signature' value from the Http request
    # @param [String] content_to_verify Raw webhook content in String format
    # @return [bool] if webhook content body conforms with signature header
    def is_content_valid(signature_header, content_to_verify)
      # Regular expression to extract algorithm, keyId, and signature from the signature_header
      regex = /^algorithm=([a-zA-Z0-9]+),\skeyId=([a-z0-9\-]+),\ssignature=([a-zA-Z0-9+\/=]+)$/
      matcher = signature_header.match(regex)

      if matcher
        signature_algorithm = matcher[1]
        public_key_id = matcher[2]
        content_signature = matcher[3]

        public_key = read(public_key_id)

        raise "Could not find public key with id #{public_key_id}" if public_key.nil?

        return EncryptionUtil.is_content_valid(content_to_verify, content_signature, public_key.public_key, signature_algorithm)
      else
        raise "Invalid webhook signature header. Expected format: 'algorithm=<algorithm>, keyId=<keyId>, signature=<signature>'"
      end
    end
  end
end
