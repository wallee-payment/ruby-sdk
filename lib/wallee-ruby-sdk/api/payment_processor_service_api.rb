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
  class PaymentProcessorService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # All
    # This operation returns all entities which are available.
    # @param [Hash] opts the optional parameters
    # @return [Array<PaymentProcessor>]
    def payment_processor_service_all(opts = {})
      data, _status_code, _headers = payment_processor_service_all_with_http_info(opts)
      return data
    end

    # All
    # This operation returns all entities which are available.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PaymentProcessor>, Fixnum, Hash)>] Array<PaymentProcessor> data, response status code and response headers
    def payment_processor_service_all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentProcessorService.payment_processor_service_all ..."
      end
      # resource path
      local_var_path = "/payment-processor/all".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :return_type => 'Array<PaymentProcessor>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentProcessorService#payment_processor_service_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param id The id of the processor which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [PaymentProcessor]
    def payment_processor_service_read(id, opts = {})
      data, _status_code, _headers = payment_processor_service_read_with_http_info(id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param id The id of the processor which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentProcessor, Fixnum, Hash)>] PaymentProcessor data, response status code and response headers
    def payment_processor_service_read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentProcessorService.payment_processor_service_read ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PaymentProcessorService.payment_processor_service_read" if id.nil?
      # resource path
      local_var_path = "/payment-processor/read".sub('{format}','json')

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentProcessor')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentProcessorService#payment_processor_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
