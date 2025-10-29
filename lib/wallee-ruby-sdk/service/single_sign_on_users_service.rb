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

require 'cgi'

module WalleeRubySdk
  class SingleSignOnUsersService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a single sign-on user
    # Permanently deletes a single sign-on user. It cannot be undone.
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_single_sign_on_users_id(id, opts = {})
      delete_single_sign_on_users_id_with_http_info(id, opts)
      nil
    end

    # Delete a single sign-on user
    # Permanently deletes a single sign-on user. It cannot be undone.

    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_single_sign_on_users_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SingleSignOnUsersService.delete_single_sign_on_users_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SingleSignOnUsersService.delete_single_sign_on_users_id"
      end
      # resource path
      local_var_path = '/single-sign-on-users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"SingleSignOnUsersService.delete_single_sign_on_users_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SingleSignOnUsersService#delete_single_sign_on_users_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all single sign-on users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [SingleSignOnUserListResponse]
    def get_single_sign_on_users(opts = {})
      data, _status_code, _headers = get_single_sign_on_users_with_http_info(opts)
      data
    end

    # List all single sign-on users

    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(SingleSignOnUserListResponse, Integer, Hash)>] SingleSignOnUserListResponse data, response status code and response headers
    def get_single_sign_on_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SingleSignOnUsersService.get_single_sign_on_users ...'
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling SingleSignOnUsersService.get_single_sign_on_users, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling SingleSignOnUsersService.get_single_sign_on_users, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SingleSignOnUsersService.get_single_sign_on_users, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SingleSignOnUsersService.get_single_sign_on_users, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/single-sign-on-users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] unless opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] unless opts[:'before'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] unless opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleSignOnUserListResponse'

      new_options = opts.merge(
        :operation => :"SingleSignOnUsersService.get_single_sign_on_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SingleSignOnUsersService#get_single_sign_on_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a single sign-on user
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SingleSignOnUser]
    def get_single_sign_on_users_id(id, opts = {})
      data, _status_code, _headers = get_single_sign_on_users_id_with_http_info(id, opts)
      data
    end

    # Retrieve a single sign-on user

    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SingleSignOnUser, Integer, Hash)>] SingleSignOnUser data, response status code and response headers
    def get_single_sign_on_users_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SingleSignOnUsersService.get_single_sign_on_users_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SingleSignOnUsersService.get_single_sign_on_users_id"
      end
      # resource path
      local_var_path = '/single-sign-on-users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleSignOnUser'

      new_options = opts.merge(
        :operation => :"SingleSignOnUsersService.get_single_sign_on_users_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SingleSignOnUsersService#get_single_sign_on_users_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search single sign-on users
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [SingleSignOnUserSearchResponse]
    def get_single_sign_on_users_search(opts = {})
      data, _status_code, _headers = get_single_sign_on_users_search_with_http_info(opts)
      data
    end

    # Search single sign-on users

    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(SingleSignOnUserSearchResponse, Integer, Hash)>] SingleSignOnUserSearchResponse data, response status code and response headers
    def get_single_sign_on_users_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SingleSignOnUsersService.get_single_sign_on_users_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SingleSignOnUsersService.get_single_sign_on_users_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SingleSignOnUsersService.get_single_sign_on_users_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SingleSignOnUsersService.get_single_sign_on_users_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/single-sign-on-users/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] unless opts[:'offset'].nil?
      query_params[:'order'] = opts[:'order'] unless opts[:'order'].nil?
      query_params[:'query'] = opts[:'query'] unless opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleSignOnUserSearchResponse'

      new_options = opts.merge(
        :operation => :"SingleSignOnUsersService.get_single_sign_on_users_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SingleSignOnUsersService#get_single_sign_on_users_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a single sign-on user
    # @param id [Integer] 
    # @param single_sign_on_user_update [SingleSignOnUserUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SingleSignOnUser]
    def patch_single_sign_on_users_id(id, single_sign_on_user_update, opts = {})
      data, _status_code, _headers = patch_single_sign_on_users_id_with_http_info(id, single_sign_on_user_update, opts)
      data
    end

    # Update a single sign-on user

    # @param id [Integer] 
    # @param single_sign_on_user_update [SingleSignOnUserUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SingleSignOnUser, Integer, Hash)>] SingleSignOnUser data, response status code and response headers
    def patch_single_sign_on_users_id_with_http_info(id, single_sign_on_user_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SingleSignOnUsersService.patch_single_sign_on_users_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SingleSignOnUsersService.patch_single_sign_on_users_id"
      end
      # verify the required parameter 'single_sign_on_user_update' is set
      if @api_client.config.client_side_validation && single_sign_on_user_update.nil?
        fail ArgumentError, "Missing the required parameter 'single_sign_on_user_update' when calling SingleSignOnUsersService.patch_single_sign_on_users_id"
      end
      # resource path
      local_var_path = '/single-sign-on-users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(single_sign_on_user_update)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleSignOnUser'

      new_options = opts.merge(
        :operation => :"SingleSignOnUsersService.patch_single_sign_on_users_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SingleSignOnUsersService#patch_single_sign_on_users_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a single sign-on user
    # @param single_sign_on_user_create [SingleSignOnUserCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [SingleSignOnUser]
    def post_single_sign_on_users(single_sign_on_user_create, opts = {})
      data, _status_code, _headers = post_single_sign_on_users_with_http_info(single_sign_on_user_create, opts)
      data
    end

    # Create a single sign-on user

    # @param single_sign_on_user_create [SingleSignOnUserCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(SingleSignOnUser, Integer, Hash)>] SingleSignOnUser data, response status code and response headers
    def post_single_sign_on_users_with_http_info(single_sign_on_user_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SingleSignOnUsersService.post_single_sign_on_users ...'
      end
      # verify the required parameter 'single_sign_on_user_create' is set
      if @api_client.config.client_side_validation && single_sign_on_user_create.nil?
        fail ArgumentError, "Missing the required parameter 'single_sign_on_user_create' when calling SingleSignOnUsersService.post_single_sign_on_users"
      end
      # resource path
      local_var_path = '/single-sign-on-users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(single_sign_on_user_create)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleSignOnUser'

      new_options = opts.merge(
        :operation => :"SingleSignOnUsersService.post_single_sign_on_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SingleSignOnUsersService#post_single_sign_on_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
