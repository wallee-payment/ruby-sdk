=begin
wallee API: 2.2.1

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
  class LegalOrganizationFormService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # All
    # This operation returns all entities which are available.
    # @param [Hash] opts the optional parameters
    # @return [Array<LegalOrganizationForm>]
    def all(opts = {})
      data, _status_code, _headers = all_with_http_info(opts)
      return data
    end

    # All
    # This operation returns all entities which are available.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LegalOrganizationForm>, Fixnum, Hash)>] Array<LegalOrganizationForm> data, response status code and response headers
    def all_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LegalOrganizationFormService.all ..."
      end
      # resource path
      local_var_path = "/legal-organization-form/all".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :return_type => 'Array<LegalOrganizationForm>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegalOrganizationFormService#all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find by Country
    # This operation returns all legal organization forms for a given country.
    # @param code The country in ISO 3166-1 alpha-2 format, for which all legal organization forms should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<LegalOrganizationForm>]
    def country(code, opts = {})
      data, _status_code, _headers = country_with_http_info(code, opts)
      return data
    end

    # Find by Country
    # This operation returns all legal organization forms for a given country.
    # @param code The country in ISO 3166-1 alpha-2 format, for which all legal organization forms should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LegalOrganizationForm>, Fixnum, Hash)>] Array<LegalOrganizationForm> data, response status code and response headers
    def country_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LegalOrganizationFormService.country ..."
      end
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling LegalOrganizationFormService.country" if code.nil?
      # resource path
      local_var_path = "/legal-organization-form/country".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'code'] = code

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
        :return_type => 'Array<LegalOrganizationForm>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegalOrganizationFormService#country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param id The id of the legal organization form which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [LegalOrganizationForm]
    def read(id, opts = {})
      data, _status_code, _headers = read_with_http_info(id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param id The id of the legal organization form which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LegalOrganizationForm, Fixnum, Hash)>] LegalOrganizationForm data, response status code and response headers
    def read_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LegalOrganizationFormService.read ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LegalOrganizationFormService.read" if id.nil?
      # resource path
      local_var_path = "/legal-organization-form/read".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'LegalOrganizationForm')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegalOrganizationFormService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
