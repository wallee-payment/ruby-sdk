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
  class InvoiceReconciliationRecordInvoiceLinkService
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
        @api_client.config.logger.debug "Calling API: InvoiceReconciliationRecordInvoiceLinkService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReconciliationRecordInvoiceLinkService.count" if space_id.nil?
      # resource path
      local_var_path = "/invoice-reconciliation-record-invoice-link-service/count".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: InvoiceReconciliationRecordInvoiceLinkService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Link Invoice
    # Links the invoice reconciliation record with the provided invoice.
    # @param space_id 
    # @param record_id The ID of the invoice reconciliation record which should be linked.
    # @param completion_id The ID of the completion which should be linked.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount The amount of the invoice reconciliation record linked completion which should be changed.
    # @return [InvoiceReconciliationRecordInvoiceLink]
    def link(space_id, record_id, completion_id, opts = {})
      data, _status_code, _headers = link_with_http_info(space_id, record_id, completion_id, opts)
      return data
    end

    # Link Invoice
    # Links the invoice reconciliation record with the provided invoice.

    # @param space_id 
    # @param record_id The ID of the invoice reconciliation record which should be linked.
    # @param completion_id The ID of the completion which should be linked.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount The amount of the invoice reconciliation record linked completion which should be changed.
    # @return [Array<(InvoiceReconciliationRecordInvoiceLink, Fixnum, Hash)>] InvoiceReconciliationRecordInvoiceLink data, response status code and response headers
    def link_with_http_info(space_id, record_id, completion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReconciliationRecordInvoiceLinkService.link ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReconciliationRecordInvoiceLinkService.link" if space_id.nil?
      # verify the required parameter 'record_id' is set
      fail ArgumentError, "Missing the required parameter 'record_id' when calling InvoiceReconciliationRecordInvoiceLinkService.link" if record_id.nil?
      # verify the required parameter 'completion_id' is set
      fail ArgumentError, "Missing the required parameter 'completion_id' when calling InvoiceReconciliationRecordInvoiceLinkService.link" if completion_id.nil?
      # resource path
      local_var_path = "/invoice-reconciliation-record-invoice-link-service/link".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'recordId'] = record_id
      query_params[:'completionId'] = completion_id
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?

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
        :auth_names => auth_names,
        :return_type => 'InvoiceReconciliationRecordInvoiceLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReconciliationRecordInvoiceLinkService#link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The ID of the invoice reconciliation record invoice link which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [InvoiceReconciliationRecordInvoiceLink]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.

    # @param space_id 
    # @param id The ID of the invoice reconciliation record invoice link which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceReconciliationRecordInvoiceLink, Fixnum, Hash)>] InvoiceReconciliationRecordInvoiceLink data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReconciliationRecordInvoiceLinkService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReconciliationRecordInvoiceLinkService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceReconciliationRecordInvoiceLinkService.read" if id.nil?
      # resource path
      local_var_path = "/invoice-reconciliation-record-invoice-link-service/read".sub('{format}','json')

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
        :return_type => 'InvoiceReconciliationRecordInvoiceLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReconciliationRecordInvoiceLinkService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the invoice reconciliation record invoice link which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<InvoiceReconciliationRecordInvoiceLink>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.

    # @param space_id 
    # @param query The query restricts the invoice reconciliation record invoice link which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InvoiceReconciliationRecordInvoiceLink>, Fixnum, Hash)>] Array<InvoiceReconciliationRecordInvoiceLink> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReconciliationRecordInvoiceLinkService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReconciliationRecordInvoiceLinkService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling InvoiceReconciliationRecordInvoiceLinkService.search" if query.nil?
      # resource path
      local_var_path = "/invoice-reconciliation-record-invoice-link-service/search".sub('{format}','json')

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
        :return_type => 'Array<InvoiceReconciliationRecordInvoiceLink>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceReconciliationRecordInvoiceLinkService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink Invoice
    # Unlinks the invoice reconciliation record from the provided invoice.
    # @param space_id 
    # @param record_id The ID of the invoice reconciliation record which should be unlinked.
    # @param completion_id The ID of the completion which should be unlinked.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unlink_transaction(space_id, record_id, completion_id, opts = {})
      unlink_transaction_with_http_info(space_id, record_id, completion_id, opts)
      return nil
    end

    # Unlink Invoice
    # Unlinks the invoice reconciliation record from the provided invoice.

    # @param space_id 
    # @param record_id The ID of the invoice reconciliation record which should be unlinked.
    # @param completion_id The ID of the completion which should be unlinked.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unlink_transaction_with_http_info(space_id, record_id, completion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceReconciliationRecordInvoiceLinkService.unlink_transaction ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling InvoiceReconciliationRecordInvoiceLinkService.unlink_transaction" if space_id.nil?
      # verify the required parameter 'record_id' is set
      fail ArgumentError, "Missing the required parameter 'record_id' when calling InvoiceReconciliationRecordInvoiceLinkService.unlink_transaction" if record_id.nil?
      # verify the required parameter 'completion_id' is set
      fail ArgumentError, "Missing the required parameter 'completion_id' when calling InvoiceReconciliationRecordInvoiceLinkService.unlink_transaction" if completion_id.nil?
      # resource path
      local_var_path = "/invoice-reconciliation-record-invoice-link-service/unlink-transaction".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'recordId'] = record_id
      query_params[:'completionId'] = completion_id

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
        @api_client.config.logger.debug "API called: InvoiceReconciliationRecordInvoiceLinkService#unlink_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
