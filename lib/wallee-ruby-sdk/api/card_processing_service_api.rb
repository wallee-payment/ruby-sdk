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
  class CardProcessingService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Process
    # The process method will process the transaction with the given card details without using 3-D secure.
    # @param space_id 
    # @param transaction_id The ID of the transaction which should be processed.
    # @param payment_method_configuration_id The payment method configuration ID which is applied to the transaction.
    # @param card_data The card details as JSON in plain which should be used to authorize the payment.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def card_processing_service_process(space_id, transaction_id, payment_method_configuration_id, card_data, opts = {})
      data, _status_code, _headers = card_processing_service_process_with_http_info(space_id, transaction_id, payment_method_configuration_id, card_data, opts)
      return data
    end

    # Process
    # The process method will process the transaction with the given card details without using 3-D secure.
    # @param space_id 
    # @param transaction_id The ID of the transaction which should be processed.
    # @param payment_method_configuration_id The payment method configuration ID which is applied to the transaction.
    # @param card_data The card details as JSON in plain which should be used to authorize the payment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def card_processing_service_process_with_http_info(space_id, transaction_id, payment_method_configuration_id, card_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CardProcessingService.card_processing_service_process ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling CardProcessingService.card_processing_service_process" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling CardProcessingService.card_processing_service_process" if transaction_id.nil?
      # verify the required parameter 'payment_method_configuration_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_method_configuration_id' when calling CardProcessingService.card_processing_service_process" if payment_method_configuration_id.nil?
      # verify the required parameter 'card_data' is set
      fail ArgumentError, "Missing the required parameter 'card_data' when calling CardProcessingService.card_processing_service_process" if card_data.nil?
      # resource path
      local_var_path = "/card-processing/process".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id
      query_params[:'paymentMethodConfigurationId'] = payment_method_configuration_id

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
      post_body = @api_client.object_to_http_body(card_data)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardProcessingService#card_processing_service_process\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process With 3-D Secure
    # The process method will process the transaction with the given card details by eventually using 3-D secure. The buyer has to be redirect to the URL returned by this method.
    # @param space_id 
    # @param transaction_id The ID of the transaction which should be processed.
    # @param payment_method_configuration_id The payment method configuration ID which is applied to the transaction.
    # @param card_data The card details as JSON in plain which should be used to authorize the payment.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def card_processing_service_process_with3_d_secure(space_id, transaction_id, payment_method_configuration_id, card_data, opts = {})
      data, _status_code, _headers = card_processing_service_process_with3_d_secure_with_http_info(space_id, transaction_id, payment_method_configuration_id, card_data, opts)
      return data
    end

    # Process With 3-D Secure
    # The process method will process the transaction with the given card details by eventually using 3-D secure. The buyer has to be redirect to the URL returned by this method.
    # @param space_id 
    # @param transaction_id The ID of the transaction which should be processed.
    # @param payment_method_configuration_id The payment method configuration ID which is applied to the transaction.
    # @param card_data The card details as JSON in plain which should be used to authorize the payment.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def card_processing_service_process_with3_d_secure_with_http_info(space_id, transaction_id, payment_method_configuration_id, card_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CardProcessingService.card_processing_service_process_with3_d_secure ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling CardProcessingService.card_processing_service_process_with3_d_secure" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling CardProcessingService.card_processing_service_process_with3_d_secure" if transaction_id.nil?
      # verify the required parameter 'payment_method_configuration_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_method_configuration_id' when calling CardProcessingService.card_processing_service_process_with3_d_secure" if payment_method_configuration_id.nil?
      # verify the required parameter 'card_data' is set
      fail ArgumentError, "Missing the required parameter 'card_data' when calling CardProcessingService.card_processing_service_process_with3_d_secure" if card_data.nil?
      # resource path
      local_var_path = "/card-processing/processWith3DSecure".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id
      query_params[:'paymentMethodConfigurationId'] = payment_method_configuration_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(card_data)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardProcessingService#card_processing_service_process_with3_d_secure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
