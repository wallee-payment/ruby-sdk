=begin
wallee API: 2.1.0

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
  class UserSpaceRoleService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add Role
    # This operation grants the given role to the user in the given space.
    # @param user_id The id of the user to whom the role is assigned.
    # @param space_id The space to which the role is mapped.
    # @param role_id The role which is mapped to the user and space.
    # @param [Hash] opts the optional parameters
    # @return [UserSpaceRole]
    def add_role(user_id, space_id, role_id, opts = {})
      data, _status_code, _headers = add_role_with_http_info(user_id, space_id, role_id, opts)
      return data
    end

    # Add Role
    # This operation grants the given role to the user in the given space.
    # @param user_id The id of the user to whom the role is assigned.
    # @param space_id The space to which the role is mapped.
    # @param role_id The role which is mapped to the user and space.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserSpaceRole, Fixnum, Hash)>] UserSpaceRole data, response status code and response headers
    def add_role_with_http_info(user_id, space_id, role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserSpaceRoleService.add_role ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UserSpaceRoleService.add_role" if user_id.nil?
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling UserSpaceRoleService.add_role" if space_id.nil?
      # verify the required parameter 'role_id' is set
      fail ArgumentError, "Missing the required parameter 'role_id' when calling UserSpaceRoleService.add_role" if role_id.nil?
      # resource path
      local_var_path = "/user-space-role/addRole".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'userId'] = user_id
      query_params[:'spaceId'] = space_id
      query_params[:'roleId'] = role_id

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
        :return_type => 'UserSpaceRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSpaceRoleService#add_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Roles
    # List all the roles that are assigned to the given user in the given space.
    # @param user_id The id of the user to whom the role is assigned.
    # @param space_id The space to which the role is mapped.
    # @param [Hash] opts the optional parameters
    # @return [Array<UserSpaceRole>]
    def list(user_id, space_id, opts = {})
      data, _status_code, _headers = list_with_http_info(user_id, space_id, opts)
      return data
    end

    # List Roles
    # List all the roles that are assigned to the given user in the given space.
    # @param user_id The id of the user to whom the role is assigned.
    # @param space_id The space to which the role is mapped.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<UserSpaceRole>, Fixnum, Hash)>] Array<UserSpaceRole> data, response status code and response headers
    def list_with_http_info(user_id, space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserSpaceRoleService.list ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UserSpaceRoleService.list" if user_id.nil?
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling UserSpaceRoleService.list" if space_id.nil?
      # resource path
      local_var_path = "/user-space-role/list".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'userId'] = user_id
      query_params[:'spaceId'] = space_id

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
        :return_type => 'Array<UserSpaceRole>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSpaceRoleService#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove Role
    # This operation removes the specified user space role.
    # @param id The id of user space role which should be removed
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_role(id, opts = {})
      remove_role_with_http_info(id, opts)
      return nil
    end

    # Remove Role
    # This operation removes the specified user space role.
    # @param id The id of user space role which should be removed
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_role_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserSpaceRoleService.remove_role ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UserSpaceRoleService.remove_role" if id.nil?
      # resource path
      local_var_path = "/user-space-role/removeRole".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'id'] = id

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserSpaceRoleService#remove_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
