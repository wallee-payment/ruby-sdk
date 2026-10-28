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
  class InvoiceReimbursementsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all invoice reimbursements
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [InvoiceReimbursementListResponse]
    def get_payment_invoice_reimbursements(space, opts = {})
      data, _status_code, _headers = get_payment_invoice_reimbursements_with_http_info(space, opts)
      data
    end

    # List all invoice reimbursements

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(InvoiceReimbursementListResponse, Integer, Hash)>] InvoiceReimbursementListResponse data, response status code and response headers
    def get_payment_invoice_reimbursements_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceReimbursementsService.get_payment_invoice_reimbursements ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment/invoice-reimbursements'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvoiceReimbursementListResponse'

      new_options = opts.merge(
        :operation => :"InvoiceReimbursementsService.get_payment_invoice_reimbursements",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementsService#get_payment_invoice_reimbursements\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve an invoice reimbursement
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [InvoiceReimbursement]
    def get_payment_invoice_reimbursements_id(id, space, opts = {})
      data, _status_code, _headers = get_payment_invoice_reimbursements_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve an invoice reimbursement

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(InvoiceReimbursement, Integer, Hash)>] InvoiceReimbursement data, response status code and response headers
    def get_payment_invoice_reimbursements_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceReimbursementsService.get_payment_invoice_reimbursements_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements_id"
      end
      # resource path
      local_var_path = '/payment/invoice-reimbursements/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvoiceReimbursement'

      new_options = opts.merge(
        :operation => :"InvoiceReimbursementsService.get_payment_invoice_reimbursements_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementsService#get_payment_invoice_reimbursements_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search invoice reimbursements
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [InvoiceReimbursementSearchResponse]
    def get_payment_invoice_reimbursements_search(space, opts = {})
      data, _status_code, _headers = get_payment_invoice_reimbursements_search_with_http_info(space, opts)
      data
    end

    # Search invoice reimbursements

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(InvoiceReimbursementSearchResponse, Integer, Hash)>] InvoiceReimbursementSearchResponse data, response status code and response headers
    def get_payment_invoice_reimbursements_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceReimbursementsService.get_payment_invoice_reimbursements_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling InvoiceReimbursementsService.get_payment_invoice_reimbursements_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/payment/invoice-reimbursements/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvoiceReimbursementSearchResponse'

      new_options = opts.merge(
        :operation => :"InvoiceReimbursementsService.get_payment_invoice_reimbursements_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementsService#get_payment_invoice_reimbursements_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update payment connector configuration
    # Updates payment connector configuration for a reimbursement which is in manual review.
    # @param id [Integer] 
    # @param payment_connector_configuration_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [InvoiceReimbursement]
    def post_payment_invoice_reimbursements_id_connector(id, payment_connector_configuration_id, space, opts = {})
      data, _status_code, _headers = post_payment_invoice_reimbursements_id_connector_with_http_info(id, payment_connector_configuration_id, space, opts)
      data
    end

    # Update payment connector configuration
    # Updates payment connector configuration for a reimbursement which is in manual review.

    # @param id [Integer] 
    # @param payment_connector_configuration_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(InvoiceReimbursement, Integer, Hash)>] InvoiceReimbursement data, response status code and response headers
    def post_payment_invoice_reimbursements_id_connector_with_http_info(id, payment_connector_configuration_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_connector ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_connector"
      end
      # verify the required parameter 'payment_connector_configuration_id' is set
      if @api_client.config.client_side_validation && payment_connector_configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_connector_configuration_id' when calling InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_connector"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_connector"
      end
      # resource path
      local_var_path = '/payment/invoice-reimbursements/{id}/connector'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'paymentConnectorConfigurationId'] = payment_connector_configuration_id
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvoiceReimbursement'

      new_options = opts.merge(
        :operation => :"InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_connector",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementsService#post_payment_invoice_reimbursements_id_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update IBAN
    # Updates recipient and/or sender IBAN for a reimbursement which is in manual review.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :recipient_iban 
    # @option opts [String] :sender_iban 
    # @option opts [Array<String>] :expand 
    # @return [InvoiceReimbursement]
    def post_payment_invoice_reimbursements_id_iban(id, space, opts = {})
      data, _status_code, _headers = post_payment_invoice_reimbursements_id_iban_with_http_info(id, space, opts)
      data
    end

    # Update IBAN
    # Updates recipient and/or sender IBAN for a reimbursement which is in manual review.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :recipient_iban 
    # @option opts [String] :sender_iban 
    # @option opts [Array<String>] :expand 
    # @return [Array<(InvoiceReimbursement, Integer, Hash)>] InvoiceReimbursement data, response status code and response headers
    def post_payment_invoice_reimbursements_id_iban_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_iban ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_iban"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_iban"
      end
      # resource path
      local_var_path = '/payment/invoice-reimbursements/{id}/iban'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'recipientIban'] = opts[:'recipient_iban'] if !opts[:'recipient_iban'].nil?
      query_params[:'senderIban'] = opts[:'sender_iban'] if !opts[:'sender_iban'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvoiceReimbursement'

      new_options = opts.merge(
        :operation => :"InvoiceReimbursementsService.post_payment_invoice_reimbursements_id_iban",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReimbursementsService#post_payment_invoice_reimbursements_id_iban\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
