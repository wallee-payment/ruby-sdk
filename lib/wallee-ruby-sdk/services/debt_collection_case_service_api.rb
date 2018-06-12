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
  class DebtCollectionCaseService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add Collected Amount
    # Adds a new collected amount to the case, creating a new payment receipt.
    # @param space_id 
    # @param id The id of the debt collection case for which the amount should be added.
    # @param collected_amount The amount that has been collected.
    # @param external_id The unique external id of this payment receipt.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionReceipt]
    def debt_collection_case_service_add_collected_amount(space_id, id, collected_amount, external_id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_add_collected_amount_with_http_info(space_id, id, collected_amount, external_id, opts)
      return data
    end

    # Add Collected Amount
    # Adds a new collected amount to the case, creating a new payment receipt.
    # @param space_id 
    # @param id The id of the debt collection case for which the amount should be added.
    # @param collected_amount The amount that has been collected.
    # @param external_id The unique external id of this payment receipt.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionReceipt, Fixnum, Hash)>] DebtCollectionReceipt data, response status code and response headers
    def debt_collection_case_service_add_collected_amount_with_http_info(space_id, id, collected_amount, external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_add_collected_amount ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_add_collected_amount" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_add_collected_amount" if id.nil?
      # verify the required parameter 'collected_amount' is set
      fail ArgumentError, "Missing the required parameter 'collected_amount' when calling DebtCollectionCaseService.debt_collection_case_service_add_collected_amount" if collected_amount.nil?
      # verify the required parameter 'external_id' is set
      fail ArgumentError, "Missing the required parameter 'external_id' when calling DebtCollectionCaseService.debt_collection_case_service_add_collected_amount" if external_id.nil?
      # resource path
      local_var_path = "/debt-collection-case/addCollectedAmount".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id
      query_params[:'collectedAmount'] = collected_amount
      query_params[:'externalId'] = external_id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DebtCollectionReceipt')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_add_collected_amount\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach Document
    # Attach an additional supporting document to the case.
    # @param space_id 
    # @param id The id of the debt collection case.
    # @param file_name The file name of the document that is uploaded.
    # @param content_base64 The BASE64 encoded contents of the document.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCaseDocument]
    def debt_collection_case_service_attach_document(space_id, id, file_name, content_base64, opts = {})
      data, _status_code, _headers = debt_collection_case_service_attach_document_with_http_info(space_id, id, file_name, content_base64, opts)
      return data
    end

    # Attach Document
    # Attach an additional supporting document to the case.
    # @param space_id 
    # @param id The id of the debt collection case.
    # @param file_name The file name of the document that is uploaded.
    # @param content_base64 The BASE64 encoded contents of the document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCaseDocument, Fixnum, Hash)>] DebtCollectionCaseDocument data, response status code and response headers
    def debt_collection_case_service_attach_document_with_http_info(space_id, id, file_name, content_base64, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_attach_document ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_attach_document" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_attach_document" if id.nil?
      # verify the required parameter 'file_name' is set
      fail ArgumentError, "Missing the required parameter 'file_name' when calling DebtCollectionCaseService.debt_collection_case_service_attach_document" if file_name.nil?
      # verify the required parameter 'content_base64' is set
      fail ArgumentError, "Missing the required parameter 'content_base64' when calling DebtCollectionCaseService.debt_collection_case_service_attach_document" if content_base64.nil?
      # resource path
      local_var_path = "/debt-collection-case/attachDocument".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id
      query_params[:'fileName'] = file_name
      query_params[:'contentBase64'] = content_base64

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DebtCollectionCaseDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_attach_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Close
    # Closes the debt collection case, meaning no further money can be collected.
    # @param space_id 
    # @param id The id of the debt collection case which should be closed.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCase]
    def debt_collection_case_service_close(space_id, id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_close_with_http_info(space_id, id, opts)
      return data
    end

    # Close
    # Closes the debt collection case, meaning no further money can be collected.
    # @param space_id 
    # @param id The id of the debt collection case which should be closed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCase, Fixnum, Hash)>] DebtCollectionCase data, response status code and response headers
    def debt_collection_case_service_close_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_close ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_close" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_close" if id.nil?
      # resource path
      local_var_path = "/debt-collection-case/close".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DebtCollectionCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_close\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def debt_collection_case_service_count(space_id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def debt_collection_case_service_count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_count" if space_id.nil?
      # resource path
      local_var_path = "/debt-collection-case/count".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # Creates the entity with the given properties.
    # @param space_id 
    # @param entity The debt collection case object with the properties which should be created.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCase]
    def debt_collection_case_service_create(space_id, entity, opts = {})
      data, _status_code, _headers = debt_collection_case_service_create_with_http_info(space_id, entity, opts)
      return data
    end

    # Create
    # Creates the entity with the given properties.
    # @param space_id 
    # @param entity The debt collection case object with the properties which should be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCase, Fixnum, Hash)>] DebtCollectionCase data, response status code and response headers
    def debt_collection_case_service_create_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_create" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling DebtCollectionCaseService.debt_collection_case_service_create" if entity.nil?
      # resource path
      local_var_path = "/debt-collection-case/create".sub('{format}','json')

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
        :return_type => 'DebtCollectionCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete
    # Deletes the entity with the given id.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def debt_collection_case_service_delete(space_id, id, opts = {})
      debt_collection_case_service_delete_with_http_info(space_id, id, opts)
      return nil
    end

    # Delete
    # Deletes the entity with the given id.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def debt_collection_case_service_delete_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_delete ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_delete" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_delete" if id.nil?
      # resource path
      local_var_path = "/debt-collection-case/delete".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(id)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Documents
    # Returns all documents that are attached to a debt collection case.
    # @param space_id 
    # @param id The id of the debt collection case for which the attached documents are returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<DebtCollectionCaseDocument>]
    def debt_collection_case_service_documents(space_id, id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_documents_with_http_info(space_id, id, opts)
      return data
    end

    # Documents
    # Returns all documents that are attached to a debt collection case.
    # @param space_id 
    # @param id The id of the debt collection case for which the attached documents are returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DebtCollectionCaseDocument>, Fixnum, Hash)>] Array<DebtCollectionCaseDocument> data, response status code and response headers
    def debt_collection_case_service_documents_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_documents ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_documents" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_documents" if id.nil?
      # resource path
      local_var_path = "/debt-collection-case/documents".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<DebtCollectionCaseDocument>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark Case As Prepared
    # This operation will mark a debt collection case as prepared and allow the collection process to proceed.
    # @param space_id 
    # @param id The id of the debt collection case which should be marked as prepared.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCase]
    def debt_collection_case_service_mark_as_prepared(space_id, id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_mark_as_prepared_with_http_info(space_id, id, opts)
      return data
    end

    # Mark Case As Prepared
    # This operation will mark a debt collection case as prepared and allow the collection process to proceed.
    # @param space_id 
    # @param id The id of the debt collection case which should be marked as prepared.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCase, Fixnum, Hash)>] DebtCollectionCase data, response status code and response headers
    def debt_collection_case_service_mark_as_prepared_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_mark_as_prepared ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_mark_as_prepared" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_mark_as_prepared" if id.nil?
      # resource path
      local_var_path = "/debt-collection-case/markAsPrepared".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DebtCollectionCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_mark_as_prepared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark Case As Reviewed
    # This operation will mark a debt collection case as reviewed and allow the collection process to proceed.
    # @param space_id 
    # @param id The id of the debt collection case which should be reviewed.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCase]
    def debt_collection_case_service_mark_as_reviewed(space_id, id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_mark_as_reviewed_with_http_info(space_id, id, opts)
      return data
    end

    # Mark Case As Reviewed
    # This operation will mark a debt collection case as reviewed and allow the collection process to proceed.
    # @param space_id 
    # @param id The id of the debt collection case which should be reviewed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCase, Fixnum, Hash)>] DebtCollectionCase data, response status code and response headers
    def debt_collection_case_service_mark_as_reviewed_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_mark_as_reviewed ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_mark_as_reviewed" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_mark_as_reviewed" if id.nil?
      # resource path
      local_var_path = "/debt-collection-case/markAsReviewed".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DebtCollectionCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_mark_as_reviewed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the debt collection case which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCase]
    def debt_collection_case_service_read(space_id, id, opts = {})
      data, _status_code, _headers = debt_collection_case_service_read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the debt collection case which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCase, Fixnum, Hash)>] DebtCollectionCase data, response status code and response headers
    def debt_collection_case_service_read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCaseService.debt_collection_case_service_read" if id.nil?
      # resource path
      local_var_path = "/debt-collection-case/read".sub('{format}','json')

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
        :return_type => 'DebtCollectionCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the cases which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<DebtCollectionCase>]
    def debt_collection_case_service_search(space_id, query, opts = {})
      data, _status_code, _headers = debt_collection_case_service_search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the cases which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DebtCollectionCase>, Fixnum, Hash)>] Array<DebtCollectionCase> data, response status code and response headers
    def debt_collection_case_service_search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling DebtCollectionCaseService.debt_collection_case_service_search" if query.nil?
      # resource path
      local_var_path = "/debt-collection-case/search".sub('{format}','json')

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
        :return_type => 'Array<DebtCollectionCase>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # This updates the entity with the given properties. Only those properties which should be updated can be provided. The 'id' and 'version' are required to identify the entity.
    # @param space_id 
    # @param entity The object with all the properties which should be updated. The id and the version are required properties.
    # @param [Hash] opts the optional parameters
    # @return [DebtCollectionCase]
    def debt_collection_case_service_update(space_id, entity, opts = {})
      data, _status_code, _headers = debt_collection_case_service_update_with_http_info(space_id, entity, opts)
      return data
    end

    # Update
    # This updates the entity with the given properties. Only those properties which should be updated can be provided. The &#39;id&#39; and &#39;version&#39; are required to identify the entity.
    # @param space_id 
    # @param entity The object with all the properties which should be updated. The id and the version are required properties.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DebtCollectionCase, Fixnum, Hash)>] DebtCollectionCase data, response status code and response headers
    def debt_collection_case_service_update_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DebtCollectionCaseService.debt_collection_case_service_update ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DebtCollectionCaseService.debt_collection_case_service_update" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling DebtCollectionCaseService.debt_collection_case_service_update" if entity.nil?
      # resource path
      local_var_path = "/debt-collection-case/update".sub('{format}','json')

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
        :return_type => 'DebtCollectionCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCaseService#debt_collection_case_service_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
