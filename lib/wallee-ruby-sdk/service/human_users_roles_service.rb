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
  class HumanUsersRolesService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Unassign a role from a human user for an account
    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_human_users_user_id_account_roles(user_id, role_id, account, opts = {})
      delete_human_users_user_id_account_roles_with_http_info(user_id, role_id, account, opts)
      nil
    end

    # Unassign a role from a human user for an account

    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_human_users_user_id_account_roles_with_http_info(user_id, role_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumanUsersRolesService.delete_human_users_user_id_account_roles ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling HumanUsersRolesService.delete_human_users_user_id_account_roles"
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling HumanUsersRolesService.delete_human_users_user_id_account_roles"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling HumanUsersRolesService.delete_human_users_user_id_account_roles"
      end
      # resource path
      local_var_path = '/human-users/{userId}/account-roles'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roleId'] = role_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"HumanUsersRolesService.delete_human_users_user_id_account_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumanUsersRolesService#delete_human_users_user_id_account_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Unassign a role from a human user for a space
    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_human_users_user_id_space_roles(user_id, role_id, space, opts = {})
      delete_human_users_user_id_space_roles_with_http_info(user_id, role_id, space, opts)
      nil
    end

    # Unassign a role from a human user for a space

    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_human_users_user_id_space_roles_with_http_info(user_id, role_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumanUsersRolesService.delete_human_users_user_id_space_roles ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling HumanUsersRolesService.delete_human_users_user_id_space_roles"
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling HumanUsersRolesService.delete_human_users_user_id_space_roles"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling HumanUsersRolesService.delete_human_users_user_id_space_roles"
      end
      # resource path
      local_var_path = '/human-users/{userId}/space-roles'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roleId'] = role_id

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
        :operation => :"HumanUsersRolesService.delete_human_users_user_id_space_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumanUsersRolesService#delete_human_users_user_id_space_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all roles of a human user for an account
    # @param user_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [UserAccountRoleListResponse]
    def get_human_users_user_id_account_roles(user_id, account, opts = {})
      data, _status_code, _headers = get_human_users_user_id_account_roles_with_http_info(user_id, account, opts)
      data
    end

    # List all roles of a human user for an account

    # @param user_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserAccountRoleListResponse, Integer, Hash)>] UserAccountRoleListResponse data, response status code and response headers
    def get_human_users_user_id_account_roles_with_http_info(user_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumanUsersRolesService.get_human_users_user_id_account_roles ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling HumanUsersRolesService.get_human_users_user_id_account_roles"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling HumanUsersRolesService.get_human_users_user_id_account_roles"
      end
      # resource path
      local_var_path = '/human-users/{userId}/account-roles'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserAccountRoleListResponse'

      new_options = opts.merge(
        :operation => :"HumanUsersRolesService.get_human_users_user_id_account_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumanUsersRolesService#get_human_users_user_id_account_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all roles of a human user for a space
    # @param user_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [UserSpaceRoleListResponse]
    def get_human_users_user_id_space_roles(user_id, space, opts = {})
      data, _status_code, _headers = get_human_users_user_id_space_roles_with_http_info(user_id, space, opts)
      data
    end

    # List all roles of a human user for a space

    # @param user_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSpaceRoleListResponse, Integer, Hash)>] UserSpaceRoleListResponse data, response status code and response headers
    def get_human_users_user_id_space_roles_with_http_info(user_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumanUsersRolesService.get_human_users_user_id_space_roles ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling HumanUsersRolesService.get_human_users_user_id_space_roles"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling HumanUsersRolesService.get_human_users_user_id_space_roles"
      end
      # resource path
      local_var_path = '/human-users/{userId}/space-roles'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserSpaceRoleListResponse'

      new_options = opts.merge(
        :operation => :"HumanUsersRolesService.get_human_users_user_id_space_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumanUsersRolesService#get_human_users_user_id_space_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Assign a role to a human user for an account
    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :applies_on_sub_account Whether the role should be assigned to the user in subaccounts only.
    # @return [UserAccountRole]
    def post_human_users_user_id_account_roles(user_id, role_id, account, opts = {})
      data, _status_code, _headers = post_human_users_user_id_account_roles_with_http_info(user_id, role_id, account, opts)
      data
    end

    # Assign a role to a human user for an account

    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :applies_on_sub_account Whether the role should be assigned to the user in subaccounts only.
    # @return [Array<(UserAccountRole, Integer, Hash)>] UserAccountRole data, response status code and response headers
    def post_human_users_user_id_account_roles_with_http_info(user_id, role_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumanUsersRolesService.post_human_users_user_id_account_roles ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling HumanUsersRolesService.post_human_users_user_id_account_roles"
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling HumanUsersRolesService.post_human_users_user_id_account_roles"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling HumanUsersRolesService.post_human_users_user_id_account_roles"
      end
      # resource path
      local_var_path = '/human-users/{userId}/account-roles'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roleId'] = role_id
      query_params[:'appliesOnSubAccount'] = opts[:'applies_on_sub_account'] if !opts[:'applies_on_sub_account'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      header_params[:'Account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UserAccountRole'

      new_options = opts.merge(
        :operation => :"HumanUsersRolesService.post_human_users_user_id_account_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumanUsersRolesService#post_human_users_user_id_account_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Assign a role to a human user for a space
    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [UserSpaceRole]
    def post_human_users_user_id_space_roles(user_id, role_id, space, opts = {})
      data, _status_code, _headers = post_human_users_user_id_space_roles_with_http_info(user_id, role_id, space, opts)
      data
    end

    # Assign a role to a human user for a space

    # @param user_id [Integer] 
    # @param role_id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSpaceRole, Integer, Hash)>] UserSpaceRole data, response status code and response headers
    def post_human_users_user_id_space_roles_with_http_info(user_id, role_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HumanUsersRolesService.post_human_users_user_id_space_roles ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling HumanUsersRolesService.post_human_users_user_id_space_roles"
      end
      # verify the required parameter 'role_id' is set
      if @api_client.config.client_side_validation && role_id.nil?
        fail ArgumentError, "Missing the required parameter 'role_id' when calling HumanUsersRolesService.post_human_users_user_id_space_roles"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling HumanUsersRolesService.post_human_users_user_id_space_roles"
      end
      # resource path
      local_var_path = '/human-users/{userId}/space-roles'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roleId'] = role_id

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
      return_type = opts[:debug_return_type] || 'UserSpaceRole'

      new_options = opts.merge(
        :operation => :"HumanUsersRolesService.post_human_users_user_id_space_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HumanUsersRolesService#post_human_users_user_id_space_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
