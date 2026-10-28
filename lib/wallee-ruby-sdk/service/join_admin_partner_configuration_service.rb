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
  class JoinAdminPartnerConfigurationService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a join admin partner configuration
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_scope_join_program_partners_configurations_id(id, opts = {})
      delete_scope_join_program_partners_configurations_id_with_http_info(id, opts)
      nil
    end

    # Delete a join admin partner configuration

    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_scope_join_program_partners_configurations_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinAdminPartnerConfigurationService.delete_scope_join_program_partners_configurations_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JoinAdminPartnerConfigurationService.delete_scope_join_program_partners_configurations_id"
      end
      # resource path
      local_var_path = '/scope/join-program/partners/configurations/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"JoinAdminPartnerConfigurationService.delete_scope_join_program_partners_configurations_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinAdminPartnerConfigurationService#delete_scope_join_program_partners_configurations_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a join admin partner configuration
    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WalleejoinAdminPartnerConfigurationResponseDto]
    def get_scope_join_program_partners_configurations_id(id, opts = {})
      data, _status_code, _headers = get_scope_join_program_partners_configurations_id_with_http_info(id, opts)
      data
    end

    # Retrieve a join admin partner configuration

    # @param id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WalleejoinAdminPartnerConfigurationResponseDto, Integer, Hash)>] WalleejoinAdminPartnerConfigurationResponseDto data, response status code and response headers
    def get_scope_join_program_partners_configurations_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinAdminPartnerConfigurationService.get_scope_join_program_partners_configurations_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JoinAdminPartnerConfigurationService.get_scope_join_program_partners_configurations_id"
      end
      # resource path
      local_var_path = '/scope/join-program/partners/configurations/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'WalleejoinAdminPartnerConfigurationResponseDto'

      new_options = opts.merge(
        :operation => :"JoinAdminPartnerConfigurationService.get_scope_join_program_partners_configurations_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinAdminPartnerConfigurationService#get_scope_join_program_partners_configurations_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a join admin partner configuration
    # @param partner_account_id [Integer] 
    # @param walleejoin_admin_partner_configuration_request_dto [WalleejoinAdminPartnerConfigurationRequestDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WalleejoinAdminPartnerConfigurationResponseDto]
    def patch_scope_join_program_partners_configurations_partner_account_id(partner_account_id, walleejoin_admin_partner_configuration_request_dto, opts = {})
      data, _status_code, _headers = patch_scope_join_program_partners_configurations_partner_account_id_with_http_info(partner_account_id, walleejoin_admin_partner_configuration_request_dto, opts)
      data
    end

    # Update a join admin partner configuration

    # @param partner_account_id [Integer] 
    # @param walleejoin_admin_partner_configuration_request_dto [WalleejoinAdminPartnerConfigurationRequestDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WalleejoinAdminPartnerConfigurationResponseDto, Integer, Hash)>] WalleejoinAdminPartnerConfigurationResponseDto data, response status code and response headers
    def patch_scope_join_program_partners_configurations_partner_account_id_with_http_info(partner_account_id, walleejoin_admin_partner_configuration_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinAdminPartnerConfigurationService.patch_scope_join_program_partners_configurations_partner_account_id ...'
      end
      # verify the required parameter 'partner_account_id' is set
      if @api_client.config.client_side_validation && partner_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'partner_account_id' when calling JoinAdminPartnerConfigurationService.patch_scope_join_program_partners_configurations_partner_account_id"
      end
      # verify the required parameter 'walleejoin_admin_partner_configuration_request_dto' is set
      if @api_client.config.client_side_validation && walleejoin_admin_partner_configuration_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'walleejoin_admin_partner_configuration_request_dto' when calling JoinAdminPartnerConfigurationService.patch_scope_join_program_partners_configurations_partner_account_id"
      end
      # resource path
      local_var_path = '/scope/join-program/partners/configurations/{partnerAccountId}'.sub('{' + 'partnerAccountId' + '}', CGI.escape(partner_account_id.to_s))

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

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(walleejoin_admin_partner_configuration_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinAdminPartnerConfigurationResponseDto'

      new_options = opts.merge(
        :operation => :"JoinAdminPartnerConfigurationService.patch_scope_join_program_partners_configurations_partner_account_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinAdminPartnerConfigurationService#patch_scope_join_program_partners_configurations_partner_account_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a join admin partner configuration
    # @param walleejoin_admin_partner_configuration_request_dto [WalleejoinAdminPartnerConfigurationRequestDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [WalleejoinAdminPartnerConfigurationResponseDto]
    def post_scope_join_program_partners_configurations(walleejoin_admin_partner_configuration_request_dto, opts = {})
      data, _status_code, _headers = post_scope_join_program_partners_configurations_with_http_info(walleejoin_admin_partner_configuration_request_dto, opts)
      data
    end

    # Create a join admin partner configuration

    # @param walleejoin_admin_partner_configuration_request_dto [WalleejoinAdminPartnerConfigurationRequestDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(WalleejoinAdminPartnerConfigurationResponseDto, Integer, Hash)>] WalleejoinAdminPartnerConfigurationResponseDto data, response status code and response headers
    def post_scope_join_program_partners_configurations_with_http_info(walleejoin_admin_partner_configuration_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JoinAdminPartnerConfigurationService.post_scope_join_program_partners_configurations ...'
      end
      # verify the required parameter 'walleejoin_admin_partner_configuration_request_dto' is set
      if @api_client.config.client_side_validation && walleejoin_admin_partner_configuration_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'walleejoin_admin_partner_configuration_request_dto' when calling JoinAdminPartnerConfigurationService.post_scope_join_program_partners_configurations"
      end
      # resource path
      local_var_path = '/scope/join-program/partners/configurations'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(walleejoin_admin_partner_configuration_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'WalleejoinAdminPartnerConfigurationResponseDto'

      new_options = opts.merge(
        :operation => :"JoinAdminPartnerConfigurationService.post_scope_join_program_partners_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JoinAdminPartnerConfigurationService#post_scope_join_program_partners_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
