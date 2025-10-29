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
require 'concurrent'

module WalleeRubySdk
  class WebhookEncryptionKeysService
    attr_accessor :api_client

    CACHE = Concurrent::Map.new

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a webhook encryption key
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_webhooks_encryption_keys_id(id, opts = {})
      data, _status_code, _headers = get_webhooks_encryption_keys_id_with_http_info(id, opts)
      data
    end

    # Retrieve a webhook encryption key

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_webhooks_encryption_keys_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEncryptionKeysService.get_webhooks_encryption_keys_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEncryptionKeysService.get_webhooks_encryption_keys_id"
      end
      # resource path
      local_var_path = '/webhooks/encryption-keys/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"WebhookEncryptionKeysService.get_webhooks_encryption_keys_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEncryptionKeysService#get_webhooks_encryption_keys_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
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

        if CACHE.key?(public_key_id)
          public_key = CACHE[public_key_id]
        else
          fetched_key, = get_webhooks_encryption_keys_id_with_http_info(public_key_id)
          raise WalleeSdkException.new(ErrorCode::UNKNOWN_WEBHOOK_ENCRYPTION_PUBLIC_KEY,
          "Could not retrieve public key with ID: #{public_key_id}") if fetched_key.nil? || fetched_key.strip.empty?

          CACHE[public_key_id] = fetched_key
          public_key = fetched_key
        end

      return EncryptionUtil.is_content_valid(
        content_to_verify,
        content_signature,
        public_key,
        signature_algorithm
      )
      else
        raise WalleeSdkException.new(ErrorCode::INVALID_WEBHOOK_ENCRYPTION_HEADER_FORMAT,
        "Invalid webhook encryption header format. Expected format: 'algorithm=<algorithm>, keyId=<keyId>, signature=<signature>'")
      end
    end
  end
end
