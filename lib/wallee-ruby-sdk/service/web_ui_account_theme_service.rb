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
  class WebUiAccountThemeService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete account UI theme
    # @param account_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_account_ui_themes_account_id(account_id, account, opts = {})
      delete_account_ui_themes_account_id_with_http_info(account_id, account, opts)
      nil
    end

    # Delete account UI theme

    # @param account_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_account_ui_themes_account_id_with_http_info(account_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebUiAccountThemeService.delete_account_ui_themes_account_id ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling WebUiAccountThemeService.delete_account_ui_themes_account_id"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling WebUiAccountThemeService.delete_account_ui_themes_account_id"
      end
      # resource path
      local_var_path = '/account/ui-themes/{accountId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
        :operation => :"WebUiAccountThemeService.delete_account_ui_themes_account_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebUiAccountThemeService#delete_account_ui_themes_account_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Delete account theme logo
    # @param account_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_account_ui_themes_account_id_logo(account_id, account, opts = {})
      delete_account_ui_themes_account_id_logo_with_http_info(account_id, account, opts)
      nil
    end

    # Delete account theme logo

    # @param account_id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_account_ui_themes_account_id_logo_with_http_info(account_id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebUiAccountThemeService.delete_account_ui_themes_account_id_logo ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling WebUiAccountThemeService.delete_account_ui_themes_account_id_logo"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling WebUiAccountThemeService.delete_account_ui_themes_account_id_logo"
      end
      # resource path
      local_var_path = '/account/ui-themes/{accountId}/logo'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
        :operation => :"WebUiAccountThemeService.delete_account_ui_themes_account_id_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebUiAccountThemeService#delete_account_ui_themes_account_id_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create account UI theme
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [WebUiAccountTheme]
    def post_account_ui_themes_create(account, body, opts = {})
      data, _status_code, _headers = post_account_ui_themes_create_with_http_info(account, body, opts)
      data
    end

    # Create account UI theme

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebUiAccountTheme, Integer, Hash)>] WebUiAccountTheme data, response status code and response headers
    def post_account_ui_themes_create_with_http_info(account, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebUiAccountThemeService.post_account_ui_themes_create ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling WebUiAccountThemeService.post_account_ui_themes_create"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling WebUiAccountThemeService.post_account_ui_themes_create"
      end
      # resource path
      local_var_path = '/account/ui-themes/create'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'WebUiAccountTheme'

      new_options = opts.merge(
        :operation => :"WebUiAccountThemeService.post_account_ui_themes_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebUiAccountThemeService#post_account_ui_themes_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
