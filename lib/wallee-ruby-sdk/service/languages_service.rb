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
  class LanguagesService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all languages
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [LanguageListResponse]
    def get_languages(opts = {})
      data, _status_code, _headers = get_languages_with_http_info(opts)
      data
    end

    # List all languages

    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(LanguageListResponse, Integer, Hash)>] LanguageListResponse data, response status code and response headers
    def get_languages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LanguagesService.get_languages ...'
      end
      # resource path
      local_var_path = '/languages'

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
      return_type = opts[:debug_return_type] || 'LanguageListResponse'

      new_options = opts.merge(
        :operation => :"LanguagesService.get_languages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LanguagesService#get_languages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a language
    # @param code [String] 
    # @param [Hash] opts the optional parameters
    # @return [RestLanguage]
    def get_languages_code(code, opts = {})
      data, _status_code, _headers = get_languages_code_with_http_info(code, opts)
      data
    end

    # Retrieve a language

    # @param code [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestLanguage, Integer, Hash)>] RestLanguage data, response status code and response headers
    def get_languages_code_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LanguagesService.get_languages_code ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling LanguagesService.get_languages_code"
      end
      # resource path
      local_var_path = '/languages/{code}'.sub('{' + 'code' + '}', CGI.escape(code.to_s))

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
      return_type = opts[:debug_return_type] || 'RestLanguage'

      new_options = opts.merge(
        :operation => :"LanguagesService.get_languages_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LanguagesService#get_languages_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search languages
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [LanguageSearchResponse]
    def get_languages_search(opts = {})
      data, _status_code, _headers = get_languages_search_with_http_info(opts)
      data
    end

    # Search languages

    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(LanguageSearchResponse, Integer, Hash)>] LanguageSearchResponse data, response status code and response headers
    def get_languages_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LanguagesService.get_languages_search ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LanguagesService.get_languages_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LanguagesService.get_languages_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling LanguagesService.get_languages_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/languages/search'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LanguageSearchResponse'

      new_options = opts.merge(
        :operation => :"LanguagesService.get_languages_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LanguagesService#get_languages_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
