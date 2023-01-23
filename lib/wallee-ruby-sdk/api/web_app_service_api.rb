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
  class WebAppService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Check Installation
    # This operation returns true when the app is installed in given space. The web app is implied by the client ID resp. user ID that is been used to invoke this operation.
    # @param space_id This parameter identifies the space which should be checked if the web app is installed.
    # @param [Hash] opts the optional parameters
    # @return [BOOLEAN]
    def check_installation(space_id, opts = {})
      data, _status_code, _headers = check_installation_with_http_info(space_id, opts)
      return data
    end

    # Check Installation
    # This operation returns true when the app is installed in given space. The web app is implied by the client ID resp. user ID that is been used to invoke this operation.

    # @param space_id This parameter identifies the space which should be checked if the web app is installed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BOOLEAN, Fixnum, Hash)>] BOOLEAN data, response status code and response headers
    def check_installation_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebAppService.check_installation ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling WebAppService.check_installation" if space_id.nil?
      # resource path
      local_var_path = "/web-app/check-installation".sub('{format}','json')

      # query parameters
      query_params = {}
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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'BOOLEAN')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebAppService#check_installation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirm
    # This operation confirms the app installation. This method has to be invoked after the user returns to the web app. The request of the user will contain the code as a request parameter. The web app is implied by the client ID resp. user ID that is been used to invoke this operation.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [WebAppConfirmationResponse]
    def confirm(request, opts = {})
      data, _status_code, _headers = confirm_with_http_info(request, opts)
      return data
    end

    # Confirm
    # This operation confirms the app installation. This method has to be invoked after the user returns to the web app. The request of the user will contain the code as a request parameter. The web app is implied by the client ID resp. user ID that is been used to invoke this operation.

    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebAppConfirmationResponse, Fixnum, Hash)>] WebAppConfirmationResponse data, response status code and response headers
    def confirm_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebAppService.confirm ..."
      end
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling WebAppService.confirm" if request.nil?
      # resource path
      local_var_path = "/web-app/confirm".sub('{format}','json')

      # query parameters
      query_params = {}

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names,
        :return_type => 'WebAppConfirmationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebAppService#confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Uninstall
    # This operation uninstalls the web app from the provided space. The web app is implied by the client ID resp. user ID that is been used to invoke this operation.
    # @param space_id This parameter identifies the space within which the web app should be uninstalled.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def uninstall(space_id, opts = {})
      uninstall_with_http_info(space_id, opts)
      return nil
    end

    # Uninstall
    # This operation uninstalls the web app from the provided space. The web app is implied by the client ID resp. user ID that is been used to invoke this operation.

    # @param space_id This parameter identifies the space within which the web app should be uninstalled.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def uninstall_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebAppService.uninstall ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling WebAppService.uninstall" if space_id.nil?
      # resource path
      local_var_path = "/web-app/uninstall".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

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
      
      # connection timeout
      timeout = @api_client.get_connection_timeout()

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :timeout => timeout,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebAppService#uninstall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
