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
  class DebtCollectionCasesService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a debt collection case
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_debt_collection_cases_id(id, space, opts = {})
      delete_debt_collection_cases_id_with_http_info(id, space, opts)
      nil
    end

    # Delete a debt collection case

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_debt_collection_cases_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.delete_debt_collection_cases_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.delete_debt_collection_cases_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.delete_debt_collection_cases_id"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.delete_debt_collection_cases_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#delete_debt_collection_cases_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all debt collection cases
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [DebtCollectionCaseListResponse]
    def get_debt_collection_cases(space, opts = {})
      data, _status_code, _headers = get_debt_collection_cases_with_http_info(space, opts)
      data
    end

    # List all debt collection cases

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(DebtCollectionCaseListResponse, Integer, Hash)>] DebtCollectionCaseListResponse data, response status code and response headers
    def get_debt_collection_cases_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.get_debt_collection_cases ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.get_debt_collection_cases"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling DebtCollectionCasesService.get_debt_collection_cases, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling DebtCollectionCasesService.get_debt_collection_cases, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DebtCollectionCasesService.get_debt_collection_cases, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DebtCollectionCasesService.get_debt_collection_cases, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/debt-collection/cases'

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCaseListResponse'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.get_debt_collection_cases",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#get_debt_collection_cases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a debt collection case
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCase]
    def get_debt_collection_cases_id(id, space, opts = {})
      data, _status_code, _headers = get_debt_collection_cases_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a debt collection case

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCase, Integer, Hash)>] DebtCollectionCase data, response status code and response headers
    def get_debt_collection_cases_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.get_debt_collection_cases_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.get_debt_collection_cases_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.get_debt_collection_cases_id"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCase'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.get_debt_collection_cases_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#get_debt_collection_cases_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve all documents of a debt collection case
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCaseDocumentListResponse]
    def get_debt_collection_cases_id_documents(id, space, opts = {})
      data, _status_code, _headers = get_debt_collection_cases_id_documents_with_http_info(id, space, opts)
      data
    end

    # Retrieve all documents of a debt collection case

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCaseDocumentListResponse, Integer, Hash)>] DebtCollectionCaseDocumentListResponse data, response status code and response headers
    def get_debt_collection_cases_id_documents_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.get_debt_collection_cases_id_documents ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.get_debt_collection_cases_id_documents"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.get_debt_collection_cases_id_documents"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}/documents'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCaseDocumentListResponse'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.get_debt_collection_cases_id_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#get_debt_collection_cases_id_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search debt collection cases
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [DebtCollectionCaseSearchResponse]
    def get_debt_collection_cases_search(space, opts = {})
      data, _status_code, _headers = get_debt_collection_cases_search_with_http_info(space, opts)
      data
    end

    # Search debt collection cases

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(DebtCollectionCaseSearchResponse, Integer, Hash)>] DebtCollectionCaseSearchResponse data, response status code and response headers
    def get_debt_collection_cases_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.get_debt_collection_cases_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.get_debt_collection_cases_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DebtCollectionCasesService.get_debt_collection_cases_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DebtCollectionCasesService.get_debt_collection_cases_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling DebtCollectionCasesService.get_debt_collection_cases_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/debt-collection/cases/search'

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCaseSearchResponse'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.get_debt_collection_cases_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#get_debt_collection_cases_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a debt collection case
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param debt_collection_case_update [DebtCollectionCaseUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCase]
    def patch_debt_collection_cases_id(id, space, debt_collection_case_update, opts = {})
      data, _status_code, _headers = patch_debt_collection_cases_id_with_http_info(id, space, debt_collection_case_update, opts)
      data
    end

    # Update a debt collection case

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param debt_collection_case_update [DebtCollectionCaseUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCase, Integer, Hash)>] DebtCollectionCase data, response status code and response headers
    def patch_debt_collection_cases_id_with_http_info(id, space, debt_collection_case_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.patch_debt_collection_cases_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.patch_debt_collection_cases_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.patch_debt_collection_cases_id"
      end
      # verify the required parameter 'debt_collection_case_update' is set
      if @api_client.config.client_side_validation && debt_collection_case_update.nil?
        fail ArgumentError, "Missing the required parameter 'debt_collection_case_update' when calling DebtCollectionCasesService.patch_debt_collection_cases_id"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(debt_collection_case_update)

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCase'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.patch_debt_collection_cases_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#patch_debt_collection_cases_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a debt collection case
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param debt_collection_case_create [DebtCollectionCaseCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCase]
    def post_debt_collection_cases(space, debt_collection_case_create, opts = {})
      data, _status_code, _headers = post_debt_collection_cases_with_http_info(space, debt_collection_case_create, opts)
      data
    end

    # Create a debt collection case

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param debt_collection_case_create [DebtCollectionCaseCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCase, Integer, Hash)>] DebtCollectionCase data, response status code and response headers
    def post_debt_collection_cases_with_http_info(space, debt_collection_case_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.post_debt_collection_cases ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.post_debt_collection_cases"
      end
      # verify the required parameter 'debt_collection_case_create' is set
      if @api_client.config.client_side_validation && debt_collection_case_create.nil?
        fail ArgumentError, "Missing the required parameter 'debt_collection_case_create' when calling DebtCollectionCasesService.post_debt_collection_cases"
      end
      # resource path
      local_var_path = '/debt-collection/cases'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(debt_collection_case_create)

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCase'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.post_debt_collection_cases",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#post_debt_collection_cases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Close a debt collection case
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCase]
    def post_debt_collection_cases_id_close(id, space, opts = {})
      data, _status_code, _headers = post_debt_collection_cases_id_close_with_http_info(id, space, opts)
      data
    end

    # Close a debt collection case

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCase, Integer, Hash)>] DebtCollectionCase data, response status code and response headers
    def post_debt_collection_cases_id_close_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.post_debt_collection_cases_id_close ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.post_debt_collection_cases_id_close"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.post_debt_collection_cases_id_close"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}/close'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCase'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.post_debt_collection_cases_id_close",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#post_debt_collection_cases_id_close\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Attach a document to a debt collection case
    # @param id [Integer] 
    # @param file_name [String] The file name of the document.
    # @param content [String] The BASE64 encoded content of the document.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCaseDocument]
    def post_debt_collection_cases_id_documents(id, file_name, content, space, opts = {})
      data, _status_code, _headers = post_debt_collection_cases_id_documents_with_http_info(id, file_name, content, space, opts)
      data
    end

    # Attach a document to a debt collection case

    # @param id [Integer] 
    # @param file_name [String] The file name of the document.
    # @param content [String] The BASE64 encoded content of the document.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCaseDocument, Integer, Hash)>] DebtCollectionCaseDocument data, response status code and response headers
    def post_debt_collection_cases_id_documents_with_http_info(id, file_name, content, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.post_debt_collection_cases_id_documents ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.post_debt_collection_cases_id_documents"
      end
      # verify the required parameter 'file_name' is set
      if @api_client.config.client_side_validation && file_name.nil?
        fail ArgumentError, "Missing the required parameter 'file_name' when calling DebtCollectionCasesService.post_debt_collection_cases_id_documents"
      end
      # verify the required parameter 'content' is set
      if @api_client.config.client_side_validation && content.nil?
        fail ArgumentError, "Missing the required parameter 'content' when calling DebtCollectionCasesService.post_debt_collection_cases_id_documents"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.post_debt_collection_cases_id_documents"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}/documents'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fileName'] = file_name
      query_params[:'content'] = content
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCaseDocument'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.post_debt_collection_cases_id_documents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#post_debt_collection_cases_id_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Mark a debt collection case as prepared
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCase]
    def post_debt_collection_cases_id_mark_prepared(id, space, opts = {})
      data, _status_code, _headers = post_debt_collection_cases_id_mark_prepared_with_http_info(id, space, opts)
      data
    end

    # Mark a debt collection case as prepared

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCase, Integer, Hash)>] DebtCollectionCase data, response status code and response headers
    def post_debt_collection_cases_id_mark_prepared_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.post_debt_collection_cases_id_mark_prepared ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.post_debt_collection_cases_id_mark_prepared"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.post_debt_collection_cases_id_mark_prepared"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}/mark-prepared'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCase'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.post_debt_collection_cases_id_mark_prepared",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#post_debt_collection_cases_id_mark_prepared\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Mark a debt collection case as reviewed
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionCase]
    def post_debt_collection_cases_id_mark_reviewed(id, space, opts = {})
      data, _status_code, _headers = post_debt_collection_cases_id_mark_reviewed_with_http_info(id, space, opts)
      data
    end

    # Mark a debt collection case as reviewed

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionCase, Integer, Hash)>] DebtCollectionCase data, response status code and response headers
    def post_debt_collection_cases_id_mark_reviewed_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.post_debt_collection_cases_id_mark_reviewed ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.post_debt_collection_cases_id_mark_reviewed"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.post_debt_collection_cases_id_mark_reviewed"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}/mark-reviewed'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionCase'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.post_debt_collection_cases_id_mark_reviewed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#post_debt_collection_cases_id_mark_reviewed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a payment receipt for a debt collection case
    # @param id [Integer] 
    # @param collected_amount [Float] The amount that was collected.
    # @param external_id [String] A client-generated nonce which uniquely identifies the payment receipt.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [DebtCollectionReceipt]
    def post_debt_collection_cases_id_payment_receipts(id, collected_amount, external_id, space, opts = {})
      data, _status_code, _headers = post_debt_collection_cases_id_payment_receipts_with_http_info(id, collected_amount, external_id, space, opts)
      data
    end

    # Create a payment receipt for a debt collection case

    # @param id [Integer] 
    # @param collected_amount [Float] The amount that was collected.
    # @param external_id [String] A client-generated nonce which uniquely identifies the payment receipt.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(DebtCollectionReceipt, Integer, Hash)>] DebtCollectionReceipt data, response status code and response headers
    def post_debt_collection_cases_id_payment_receipts_with_http_info(id, collected_amount, external_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DebtCollectionCasesService.post_debt_collection_cases_id_payment_receipts ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DebtCollectionCasesService.post_debt_collection_cases_id_payment_receipts"
      end
      # verify the required parameter 'collected_amount' is set
      if @api_client.config.client_side_validation && collected_amount.nil?
        fail ArgumentError, "Missing the required parameter 'collected_amount' when calling DebtCollectionCasesService.post_debt_collection_cases_id_payment_receipts"
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling DebtCollectionCasesService.post_debt_collection_cases_id_payment_receipts"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling DebtCollectionCasesService.post_debt_collection_cases_id_payment_receipts"
      end
      # resource path
      local_var_path = '/debt-collection/cases/{id}/payment-receipts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'collectedAmount'] = collected_amount
      query_params[:'externalId'] = external_id
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DebtCollectionReceipt'

      new_options = opts.merge(
        :operation => :"DebtCollectionCasesService.post_debt_collection_cases_id_payment_receipts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DebtCollectionCasesService#post_debt_collection_cases_id_payment_receipts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
