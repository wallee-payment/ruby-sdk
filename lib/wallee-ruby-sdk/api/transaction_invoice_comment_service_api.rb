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
  class TransactionInvoiceCommentService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Find by invoice
    # Returns all comments of the given transaction invoice.
    # @param space_id 
    # @param invoice_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<TransactionInvoiceComment>]
    def all(space_id, invoice_id, opts = {})
      data, _status_code, _headers = all_with_http_info(space_id, invoice_id, opts)
      return data
    end

    # Find by invoice
    # Returns all comments of the given transaction invoice.
    # @param space_id 
    # @param invoice_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TransactionInvoiceComment>, Fixnum, Hash)>] Array<TransactionInvoiceComment> data, response status code and response headers
    def all_with_http_info(space_id, invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.all ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.all" if space_id.nil?
      # verify the required parameter 'invoice_id' is set
      fail ArgumentError, "Missing the required parameter 'invoice_id' when calling TransactionInvoiceCommentService.all" if invoice_id.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/all".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'invoiceId'] = invoice_id

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TransactionInvoiceComment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # Creates the comment with the given properties.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [TransactionInvoiceComment]
    def create(space_id, entity, opts = {})
      data, _status_code, _headers = create_with_http_info(space_id, entity, opts)
      return data
    end

    # Create
    # Creates the comment with the given properties.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionInvoiceComment, Fixnum, Hash)>] TransactionInvoiceComment data, response status code and response headers
    def create_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.create" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling TransactionInvoiceCommentService.create" if entity.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/create".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInvoiceComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete
    # Deletes the comment with the given id.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(space_id, id, opts = {})
      delete_with_http_info(space_id, id, opts)
      return nil
    end

    # Delete
    # Deletes the comment with the given id.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.delete ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.delete" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentService.delete" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/delete".sub('{format}','json')

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
      local_header_content_type = ['application/json;charset=utf-8']
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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Pin
    # Pins the comment to the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def pin(space_id, id, opts = {})
      pin_with_http_info(space_id, id, opts)
      return nil
    end

    # Pin
    # Pins the comment to the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def pin_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.pin ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.pin" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentService.pin" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/pin".sub('{format}','json')

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#pin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the comment with the given 'id' and returns it.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [TransactionInvoiceComment]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the comment with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionInvoiceComment, Fixnum, Hash)>] TransactionInvoiceComment data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentService.read" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/read".sub('{format}','json')

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
        :return_type => 'TransactionInvoiceComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unpin
    # Unpins the comment from the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unpin(space_id, id, opts = {})
      unpin_with_http_info(space_id, id, opts)
      return nil
    end

    # Unpin
    # Unpins the comment from the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def unpin_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.unpin ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.unpin" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionInvoiceCommentService.unpin" if id.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/unpin".sub('{format}','json')

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#unpin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # This updates the comment with the given properties. Only those properties which should be updated can be provided. The 'id' and 'version' are required to identify the comment.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [TransactionInvoiceComment]
    def update(space_id, entity, opts = {})
      data, _status_code, _headers = update_with_http_info(space_id, entity, opts)
      return data
    end

    # Update
    # This updates the comment with the given properties. Only those properties which should be updated can be provided. The &#39;id&#39; and &#39;version&#39; are required to identify the comment.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionInvoiceComment, Fixnum, Hash)>] TransactionInvoiceComment data, response status code and response headers
    def update_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionInvoiceCommentService.update ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionInvoiceCommentService.update" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling TransactionInvoiceCommentService.update" if entity.nil?
      # resource path
      local_var_path = "/transaction-invoice-comment/update".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInvoiceComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionInvoiceCommentService#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
