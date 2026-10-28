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
  class JoinPartnershipService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a join partnership
    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_join_program_partnerships_id(id, account, opts = {})
      delete_join_program_partnerships_id_with_http_info(id, account, opts)
      nil
    end

    # Delete a join partnership

    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_join_program_partnerships_id_with_http_info(id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.delete_join_program_partnerships_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JoinPartnershipService.delete_join_program_partnerships_id"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.delete_join_program_partnerships_id"
      end
      # resource path
      local_var_path = '/join-program/partnerships/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.delete_join_program_partnerships_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#delete_join_program_partnerships_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all join partnerships
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [WalleejoinPartnershipResponseDtoListResponse]
    def get_join_program_partnerships(account, opts = {})
      data, _status_code, _headers = get_join_program_partnerships_with_http_info(account, opts)
      data
    end

    # List all join partnerships

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(WalleejoinPartnershipResponseDtoListResponse, Integer, Hash)>] WalleejoinPartnershipResponseDtoListResponse data, response status code and response headers
    def get_join_program_partnerships_with_http_info(account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.get_join_program_partnerships ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.get_join_program_partnerships"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling JoinPartnershipService.get_join_program_partnerships, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling JoinPartnershipService.get_join_program_partnerships, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling JoinPartnershipService.get_join_program_partnerships, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling JoinPartnershipService.get_join_program_partnerships, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/join-program/partnerships'

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
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinPartnershipResponseDtoListResponse'

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.get_join_program_partnerships",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#get_join_program_partnerships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a join partnership
    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WalleejoinPartnershipResponseDto]
    def get_join_program_partnerships_id(id, account, opts = {})
      data, _status_code, _headers = get_join_program_partnerships_id_with_http_info(id, account, opts)
      data
    end

    # Retrieve a join partnership

    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WalleejoinPartnershipResponseDto, Integer, Hash)>] WalleejoinPartnershipResponseDto data, response status code and response headers
    def get_join_program_partnerships_id_with_http_info(id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.get_join_program_partnerships_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JoinPartnershipService.get_join_program_partnerships_id"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.get_join_program_partnerships_id"
      end
      # resource path
      local_var_path = '/join-program/partnerships/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinPartnershipResponseDto'

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.get_join_program_partnerships_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#get_join_program_partnerships_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search join partnerships
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [WalleejoinPartnershipResponseDtoSearchResponse]
    def get_join_program_partnerships_search(account, opts = {})
      data, _status_code, _headers = get_join_program_partnerships_search_with_http_info(account, opts)
      data
    end

    # Search join partnerships

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(WalleejoinPartnershipResponseDtoSearchResponse, Integer, Hash)>] WalleejoinPartnershipResponseDtoSearchResponse data, response status code and response headers
    def get_join_program_partnerships_search_with_http_info(account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.get_join_program_partnerships_search ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.get_join_program_partnerships_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling JoinPartnershipService.get_join_program_partnerships_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling JoinPartnershipService.get_join_program_partnerships_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling JoinPartnershipService.get_join_program_partnerships_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/join-program/partnerships/search'

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
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinPartnershipResponseDtoSearchResponse'

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.get_join_program_partnerships_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#get_join_program_partnerships_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a join account partnership
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param walleejoin_create_partnership_api_request_dto [WalleejoinCreatePartnershipApiRequestDto] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def post_join_program_partnerships_create_affiliate(account, walleejoin_create_partnership_api_request_dto, opts = {})
      data, _status_code, _headers = post_join_program_partnerships_create_affiliate_with_http_info(account, walleejoin_create_partnership_api_request_dto, opts)
      data
    end

    # Create a join account partnership

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param walleejoin_create_partnership_api_request_dto [WalleejoinCreatePartnershipApiRequestDto] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def post_join_program_partnerships_create_affiliate_with_http_info(account, walleejoin_create_partnership_api_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.post_join_program_partnerships_create_affiliate ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.post_join_program_partnerships_create_affiliate"
      end
      # verify the required parameter 'walleejoin_create_partnership_api_request_dto' is set
      if @api_client.config.client_side_validation && walleejoin_create_partnership_api_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'walleejoin_create_partnership_api_request_dto' when calling JoinPartnershipService.post_join_program_partnerships_create_affiliate"
      end
      # resource path
      local_var_path = '/join-program/partnerships/create-affiliate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(walleejoin_create_partnership_api_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.post_join_program_partnerships_create_affiliate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#post_join_program_partnerships_create_affiliate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a join platform partnership
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param walleejoin_create_partnership_api_request_dto [WalleejoinCreatePartnershipApiRequestDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WalleejoinPartnershipResponseDto]
    def post_join_program_partnerships_create_isv(account, walleejoin_create_partnership_api_request_dto, opts = {})
      data, _status_code, _headers = post_join_program_partnerships_create_isv_with_http_info(account, walleejoin_create_partnership_api_request_dto, opts)
      data
    end

    # Create a join platform partnership

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param walleejoin_create_partnership_api_request_dto [WalleejoinCreatePartnershipApiRequestDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WalleejoinPartnershipResponseDto, Integer, Hash)>] WalleejoinPartnershipResponseDto data, response status code and response headers
    def post_join_program_partnerships_create_isv_with_http_info(account, walleejoin_create_partnership_api_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.post_join_program_partnerships_create_isv ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.post_join_program_partnerships_create_isv"
      end
      # verify the required parameter 'walleejoin_create_partnership_api_request_dto' is set
      if @api_client.config.client_side_validation && walleejoin_create_partnership_api_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'walleejoin_create_partnership_api_request_dto' when calling JoinPartnershipService.post_join_program_partnerships_create_isv"
      end
      # resource path
      local_var_path = '/join-program/partnerships/create-isv'

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
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(walleejoin_create_partnership_api_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinPartnershipResponseDto'

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.post_join_program_partnerships_create_isv",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#post_join_program_partnerships_create_isv\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a join partnership for an existing merchant
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param walleejoin_partnership_create [WalleejoinPartnershipCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WalleejoinPartnershipResponseDto]
    def post_join_program_partnerships_create_simple(account, walleejoin_partnership_create, opts = {})
      data, _status_code, _headers = post_join_program_partnerships_create_simple_with_http_info(account, walleejoin_partnership_create, opts)
      data
    end

    # Create a join partnership for an existing merchant

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param walleejoin_partnership_create [WalleejoinPartnershipCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WalleejoinPartnershipResponseDto, Integer, Hash)>] WalleejoinPartnershipResponseDto data, response status code and response headers
    def post_join_program_partnerships_create_simple_with_http_info(account, walleejoin_partnership_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinPartnershipService.post_join_program_partnerships_create_simple ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling JoinPartnershipService.post_join_program_partnerships_create_simple"
      end
      # verify the required parameter 'walleejoin_partnership_create' is set
      if @api_client.config.client_side_validation && walleejoin_partnership_create.nil?
        fail ArgumentError, "Missing the required parameter 'walleejoin_partnership_create' when calling JoinPartnershipService.post_join_program_partnerships_create_simple"
      end
      # resource path
      local_var_path = '/join-program/partnerships/create-simple'

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
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(walleejoin_partnership_create)

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinPartnershipResponseDto'

      new_options = opts.merge(
        :operation => :"JoinPartnershipService.post_join_program_partnerships_create_simple",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinPartnershipService#post_join_program_partnerships_create_simple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
