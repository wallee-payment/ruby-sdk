=begin
Wallee API: 1.0.0

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
  class InstallmentPaymentService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param filter The filter which restricts the installment payment which are used to calculate the count.
    # @param [Hash] opts the optional parameters
    # @return [Integer]
    def installment_payment_service_count(space_id, filter, opts = {})
      data, _status_code, _headers = installment_payment_service_count_with_http_info(space_id, filter, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param filter The filter which restricts the installment payment which are used to calculate the count.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def installment_payment_service_count_with_http_info(space_id, filter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentService.installment_payment_service_count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentService.installment_payment_service_count" if space_id.nil?
      # verify the required parameter 'filter' is set
      fail ArgumentError, "Missing the required parameter 'filter' when calling InstallmentPaymentService.installment_payment_service_count" if filter.nil?
      # resource path
      local_var_path = "/installment-payment/count".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

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
      post_body = @api_client.object_to_http_body(filter)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentService#installment_payment_service_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Installment Payment
    # This operation creates based up on the given transaction an installment payment.
    # @param space_id 
    # @param transaction_id The transaction which should be converted into an installment payment.
    # @param installment_plan_configuration The installment plan configuration ID which should be applied on the transaction.
    # @param [Hash] opts the optional parameters
    # @return [InstallmentPayment]
    def installment_payment_service_create_installment_payment(space_id, transaction_id, installment_plan_configuration, opts = {})
      data, _status_code, _headers = installment_payment_service_create_installment_payment_with_http_info(space_id, transaction_id, installment_plan_configuration, opts)
      return data
    end

    # Create Installment Payment
    # This operation creates based up on the given transaction an installment payment.
    # @param space_id 
    # @param transaction_id The transaction which should be converted into an installment payment.
    # @param installment_plan_configuration The installment plan configuration ID which should be applied on the transaction.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstallmentPayment, Fixnum, Hash)>] InstallmentPayment data, response status code and response headers
    def installment_payment_service_create_installment_payment_with_http_info(space_id, transaction_id, installment_plan_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentService.installment_payment_service_create_installment_payment ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentService.installment_payment_service_create_installment_payment" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling InstallmentPaymentService.installment_payment_service_create_installment_payment" if transaction_id.nil?
      # verify the required parameter 'installment_plan_configuration' is set
      fail ArgumentError, "Missing the required parameter 'installment_plan_configuration' when calling InstallmentPaymentService.installment_payment_service_create_installment_payment" if installment_plan_configuration.nil?
      # resource path
      local_var_path = "/installment-payment/createInstallmentPayment".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id
      query_params[:'installmentPlanConfiguration'] = installment_plan_configuration

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InstallmentPayment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentService#installment_payment_service_create_installment_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the installment payment which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [InstallmentPayment]
    def installment_payment_service_read(space_id, id, opts = {})
      data, _status_code, _headers = installment_payment_service_read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the installment payment which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstallmentPayment, Fixnum, Hash)>] InstallmentPayment data, response status code and response headers
    def installment_payment_service_read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentService.installment_payment_service_read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentService.installment_payment_service_read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling InstallmentPaymentService.installment_payment_service_read" if id.nil?
      # resource path
      local_var_path = "/installment-payment/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
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
        :return_type => 'InstallmentPayment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentService#installment_payment_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the installment payments which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<InstallmentPayment>]
    def installment_payment_service_search(space_id, query, opts = {})
      data, _status_code, _headers = installment_payment_service_search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the installment payments which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InstallmentPayment>, Fixnum, Hash)>] Array<InstallmentPayment> data, response status code and response headers
    def installment_payment_service_search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstallmentPaymentService.installment_payment_service_search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InstallmentPaymentService.installment_payment_service_search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling InstallmentPaymentService.installment_payment_service_search" if query.nil?
      # resource path
      local_var_path = "/installment-payment/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

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
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InstallmentPayment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstallmentPaymentService#installment_payment_service_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
