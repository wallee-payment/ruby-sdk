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
  class InvoiceReimbursementService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def count(space_id, opts = {})
      data, _status_code, _headers = count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.

    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReimbursementService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReimbursementService.count" if space_id.nil?
      # resource path
      local_var_path = "/invoice-reimbursement-service/count".sub('{format}','json')

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The ID of the invoice reimbursement which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [InvoiceReimbursement]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.

    # @param space_id 
    # @param id The ID of the invoice reimbursement which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceReimbursement, Fixnum, Hash)>] InvoiceReimbursement data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReimbursementService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReimbursementService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReimbursementService.read" if id.nil?
      # resource path
      local_var_path = "/invoice-reimbursement-service/read".sub('{format}','json')

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
        :return_type => 'InvoiceReimbursement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the invoice reimbursements which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<InvoiceReimbursementWithRefundReference>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.

    # @param space_id 
    # @param query The query restricts the invoice reimbursements which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InvoiceReimbursementWithRefundReference>, Fixnum, Hash)>] Array<InvoiceReimbursementWithRefundReference> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReimbursementService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReimbursementService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling InvoiceReimbursementService.search" if query.nil?
      # resource path
      local_var_path = "/invoice-reimbursement-service/search".sub('{format}','json')

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'Array<InvoiceReimbursementWithRefundReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update payment connector configuration
    # Updates payment connector configuration for reimbursement which is in manual review.
    # @param space_id 
    # @param id The ID of the invoice reimbursement of which connector should be updated.
    # @param payment_connector_configuration_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_connector(space_id, id, payment_connector_configuration_id, opts = {})
      update_connector_with_http_info(space_id, id, payment_connector_configuration_id, opts)
      return nil
    end

    # Update payment connector configuration
    # Updates payment connector configuration for reimbursement which is in manual review.

    # @param space_id 
    # @param id The ID of the invoice reimbursement of which connector should be updated.
    # @param payment_connector_configuration_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_connector_with_http_info(space_id, id, payment_connector_configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReimbursementService.update_connector ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReimbursementService.update_connector" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReimbursementService.update_connector" if id.nil?
      # verify the required parameter 'payment_connector_configuration_id' is set
      fail ArgumentError, "Missing the required parameter 'payment_connector_configuration_id' when calling InvoiceReimbursementService.update_connector" if payment_connector_configuration_id.nil?
      # resource path
      local_var_path = "/invoice-reimbursement-service/update-connector".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id
      query_params[:'paymentConnectorConfigurationId'] = payment_connector_configuration_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementService#update_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update IBAN
    # Updates recipient and/or sender IBAN for reimbursement which is in manual review.
    # @param space_id 
    # @param id The ID of the invoice reimbursement of which IBANs should be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :recipient_iban 
    # @option opts [String] :sender_iban 
    # @return [nil]
    def update_iban(space_id, id, opts = {})
      update_iban_with_http_info(space_id, id, opts)
      return nil
    end

    # Update IBAN
    # Updates recipient and/or sender IBAN for reimbursement which is in manual review.

    # @param space_id 
    # @param id The ID of the invoice reimbursement of which IBANs should be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :recipient_iban 
    # @option opts [String] :sender_iban 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_iban_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReimbursementService.update_iban ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReimbursementService.update_iban" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReimbursementService.update_iban" if id.nil?
      # resource path
      local_var_path = "/invoice-reimbursement-service/update-iban".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id
      query_params[:'recipientIban'] = opts[:'recipient_iban'] if !opts[:'recipient_iban'].nil?
      query_params[:'senderIban'] = opts[:'sender_iban'] if !opts[:'sender_iban'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementService#update_iban\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
