=begin
wallee API: 2.0.2

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
  class RefundService
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
        @api_client.config.logger.debug "Calling API: RefundService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.count" if space_id.nil?
      # resource path
      local_var_path = "/refund/count".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # fail
    # This operation allows to mark a refund as failed which is in state MANUAL_CHECK.
    # @param space_id 
    # @param refund_id The id of the refund which should be marked as failed.
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def fail(space_id, refund_id, opts = {})
      data, _status_code, _headers = fail_with_http_info(space_id, refund_id, opts)
      return data
    end

    # fail
    # This operation allows to mark a refund as failed which is in state MANUAL_CHECK.
    # @param space_id 
    # @param refund_id The id of the refund which should be marked as failed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def fail_with_http_info(space_id, refund_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.fail ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.fail" if space_id.nil?
      # verify the required parameter 'refund_id' is set
      fail ArgumentError, "Missing the required parameter 'refund_id' when calling RefundService.fail" if refund_id.nil?
      # resource path
      local_var_path = "/refund/fail".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'refundId'] = refund_id

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
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#fail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getRefundDocument
    # Returns the PDF document for the refund with given id.
    # @param space_id 
    # @param id The id of the refund to get the document for.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def get_refund_document(space_id, id, opts = {})
      data, _status_code, _headers = get_refund_document_with_http_info(space_id, id, opts)
      return data
    end

    # getRefundDocument
    # Returns the PDF document for the refund with given id.
    # @param space_id 
    # @param id The id of the refund to get the document for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Fixnum, Hash)>] RenderedDocument data, response status code and response headers
    def get_refund_document_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.get_refund_document ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.get_refund_document" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling RefundService.get_refund_document" if id.nil?
      # resource path
      local_var_path = "/refund/getRefundDocument".sub('{format}','json')

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
        :return_type => 'RenderedDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#get_refund_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getRefundDocumentWithTargetMediaType
    # Returns the PDF document for the refund with given id and the given target media type.
    # @param space_id 
    # @param id The id of the refund to get the document for.
    # @param target_media_type_id The id of the target media type for which the refund should be generated for.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def get_refund_document_with_target_media_type(space_id, id, target_media_type_id, opts = {})
      data, _status_code, _headers = get_refund_document_with_target_media_type_with_http_info(space_id, id, target_media_type_id, opts)
      return data
    end

    # getRefundDocumentWithTargetMediaType
    # Returns the PDF document for the refund with given id and the given target media type.
    # @param space_id 
    # @param id The id of the refund to get the document for.
    # @param target_media_type_id The id of the target media type for which the refund should be generated for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Fixnum, Hash)>] RenderedDocument data, response status code and response headers
    def get_refund_document_with_target_media_type_with_http_info(space_id, id, target_media_type_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.get_refund_document_with_target_media_type ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.get_refund_document_with_target_media_type" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling RefundService.get_refund_document_with_target_media_type" if id.nil?
      # verify the required parameter 'target_media_type_id' is set
      fail ArgumentError, "Missing the required parameter 'target_media_type_id' when calling RefundService.get_refund_document_with_target_media_type" if target_media_type_id.nil?
      # resource path
      local_var_path = "/refund/getRefundDocumentWithTargetMediaType".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id
      query_params[:'targetMediaTypeId'] = target_media_type_id

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
        :return_type => 'RenderedDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#get_refund_document_with_target_media_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the refund which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the refund which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling RefundService.read" if id.nil?
      # resource path
      local_var_path = "/refund/read".sub('{format}','json')

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
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # create
    # This operation creates and executes a refund of a particular transaction.
    # @param space_id 
    # @param refund The refund object which should be created.
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def refund(space_id, refund, opts = {})
      data, _status_code, _headers = refund_with_http_info(space_id, refund, opts)
      return data
    end

    # create
    # This operation creates and executes a refund of a particular transaction.
    # @param space_id 
    # @param refund The refund object which should be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def refund_with_http_info(space_id, refund, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.refund ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.refund" if space_id.nil?
      # verify the required parameter 'refund' is set
      fail ArgumentError, "Missing the required parameter 'refund' when calling RefundService.refund" if refund.nil?
      # resource path
      local_var_path = "/refund/refund".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(refund)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the refunds which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<Refund>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the refunds which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Refund>, Fixnum, Hash)>] Array<Refund> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling RefundService.search" if query.nil?
      # resource path
      local_var_path = "/refund/search".sub('{format}','json')

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
        :return_type => 'Array<Refund>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # succeed
    # This operation allows to mark a refund as successful which is in state MANUAL_CHECK.
    # @param space_id 
    # @param refund_id The id of the refund which should be marked as successful.
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def succeed(space_id, refund_id, opts = {})
      data, _status_code, _headers = succeed_with_http_info(space_id, refund_id, opts)
      return data
    end

    # succeed
    # This operation allows to mark a refund as successful which is in state MANUAL_CHECK.
    # @param space_id 
    # @param refund_id The id of the refund which should be marked as successful.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def succeed_with_http_info(space_id, refund_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundService.succeed ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling RefundService.succeed" if space_id.nil?
      # verify the required parameter 'refund_id' is set
      fail ArgumentError, "Missing the required parameter 'refund_id' when calling RefundService.succeed" if refund_id.nil?
      # resource path
      local_var_path = "/refund/succeed".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'refundId'] = refund_id

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
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundService#succeed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
