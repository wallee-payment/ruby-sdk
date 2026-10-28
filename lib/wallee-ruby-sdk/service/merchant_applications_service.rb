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
  class MerchantApplicationsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a merchant application status
    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [MerchantApplicationStatusDto]
    def get_onboarding_merchant_applications_id_status(id, account, opts = {})
      data, _status_code, _headers = get_onboarding_merchant_applications_id_status_with_http_info(id, account, opts)
      data
    end

    # Retrieve a merchant application status

    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(MerchantApplicationStatusDto, Integer, Hash)>] MerchantApplicationStatusDto data, response status code and response headers
    def get_onboarding_merchant_applications_id_status_with_http_info(id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantApplicationsService.get_onboarding_merchant_applications_id_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MerchantApplicationsService.get_onboarding_merchant_applications_id_status"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling MerchantApplicationsService.get_onboarding_merchant_applications_id_status"
      end
      # resource path
      local_var_path = '/onboarding/merchant-applications/{id}/status'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'MerchantApplicationStatusDto'

      new_options = opts.merge(
        :operation => :"MerchantApplicationsService.get_onboarding_merchant_applications_id_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantApplicationsService#get_onboarding_merchant_applications_id_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Return merchant application submission URL
    # Returns the URL where the merchant can review the application and complete the submission.
    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_onboarding_merchant_applications_id_submission_url(id, account, opts = {})
      data, _status_code, _headers = get_onboarding_merchant_applications_id_submission_url_with_http_info(id, account, opts)
      data
    end

    # Return merchant application submission URL
    # Returns the URL where the merchant can review the application and complete the submission.

    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_onboarding_merchant_applications_id_submission_url_with_http_info(id, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantApplicationsService.get_onboarding_merchant_applications_id_submission_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MerchantApplicationsService.get_onboarding_merchant_applications_id_submission_url"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling MerchantApplicationsService.get_onboarding_merchant_applications_id_submission_url"
      end
      # resource path
      local_var_path = '/onboarding/merchant-applications/{id}/submission-url'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'account'] = account

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"MerchantApplicationsService.get_onboarding_merchant_applications_id_submission_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantApplicationsService#get_onboarding_merchant_applications_id_submission_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a merchant application
    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param merchant_application_data_dto [MerchantApplicationDataDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [MerchantApplicationDataDto]
    def patch_onboarding_merchant_applications_id(id, account, merchant_application_data_dto, opts = {})
      data, _status_code, _headers = patch_onboarding_merchant_applications_id_with_http_info(id, account, merchant_application_data_dto, opts)
      data
    end

    # Update a merchant application

    # @param id [Integer] 
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param merchant_application_data_dto [MerchantApplicationDataDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(MerchantApplicationDataDto, Integer, Hash)>] MerchantApplicationDataDto data, response status code and response headers
    def patch_onboarding_merchant_applications_id_with_http_info(id, account, merchant_application_data_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantApplicationsService.patch_onboarding_merchant_applications_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MerchantApplicationsService.patch_onboarding_merchant_applications_id"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling MerchantApplicationsService.patch_onboarding_merchant_applications_id"
      end
      # verify the required parameter 'merchant_application_data_dto' is set
      if @api_client.config.client_side_validation && merchant_application_data_dto.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_application_data_dto' when calling MerchantApplicationsService.patch_onboarding_merchant_applications_id"
      end
      # resource path
      local_var_path = '/onboarding/merchant-applications/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(merchant_application_data_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'MerchantApplicationDataDto'

      new_options = opts.merge(
        :operation => :"MerchantApplicationsService.patch_onboarding_merchant_applications_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantApplicationsService#patch_onboarding_merchant_applications_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a merchant application
    # Creates a merchant application. The request body is optional. Send an empty body to create a draft application, or send the full application payload to create it with initial data
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [MerchantApplicationDataDto] :merchant_application_data_dto 
    # @return [MerchantApplicationDataDto]
    def post_onboarding_merchant_applications(account, opts = {})
      data, _status_code, _headers = post_onboarding_merchant_applications_with_http_info(account, opts)
      data
    end

    # Create a merchant application
    # Creates a merchant application. The request body is optional. Send an empty body to create a draft application, or send the full application payload to create it with initial data

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [MerchantApplicationDataDto] :merchant_application_data_dto 
    # @return [Array<(MerchantApplicationDataDto, Integer, Hash)>] MerchantApplicationDataDto data, response status code and response headers
    def post_onboarding_merchant_applications_with_http_info(account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantApplicationsService.post_onboarding_merchant_applications ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling MerchantApplicationsService.post_onboarding_merchant_applications"
      end
      # resource path
      local_var_path = '/onboarding/merchant-applications'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'merchant_application_data_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'MerchantApplicationDataDto'

      new_options = opts.merge(
        :operation => :"MerchantApplicationsService.post_onboarding_merchant_applications",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantApplicationsService#post_onboarding_merchant_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
