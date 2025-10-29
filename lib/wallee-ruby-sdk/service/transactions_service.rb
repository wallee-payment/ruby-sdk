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
  class TransactionsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a one-click token by credentials
    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_transactions_by_credentials_credentials_one_click_tokens_id(credentials, id, space, opts = {})
      delete_payment_transactions_by_credentials_credentials_one_click_tokens_id_with_http_info(credentials, id, space, opts)
      nil
    end

    # Delete a one-click token by credentials

    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_transactions_by_credentials_credentials_one_click_tokens_id_with_http_info(credentials, id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.delete_payment_transactions_by_credentials_credentials_one_click_tokens_id ...'
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionsService.delete_payment_transactions_by_credentials_credentials_one_click_tokens_id"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.delete_payment_transactions_by_credentials_credentials_one_click_tokens_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.delete_payment_transactions_by_credentials_credentials_one_click_tokens_id"
      end
      # resource path
      local_var_path = '/payment/transactions/by-credentials/{credentials}/one-click-tokens/{id}'.sub('{' + 'credentials' + '}', CGI.escape(credentials.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"TransactionsService.delete_payment_transactions_by_credentials_credentials_one_click_tokens_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#delete_payment_transactions_by_credentials_credentials_one_click_tokens_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all transactions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [TransactionListResponse]
    def get_payment_transactions(space, opts = {})
      data, _status_code, _headers = get_payment_transactions_with_http_info(space, opts)
      data
    end

    # List all transactions

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(TransactionListResponse, Integer, Hash)>] TransactionListResponse data, response status code and response headers
    def get_payment_transactions_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling TransactionsService.get_payment_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling TransactionsService.get_payment_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsService.get_payment_transactions, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsService.get_payment_transactions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment/transactions'

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionListResponse'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a transaction by credentials
    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def get_payment_transactions_by_credentials_credentials(credentials, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_by_credentials_credentials_with_http_info(credentials, space, opts)
      data
    end

    # Retrieve a transaction by credentials

    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def get_payment_transactions_by_credentials_credentials_with_http_info(credentials, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_by_credentials_credentials ...'
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionsService.get_payment_transactions_by_credentials_credentials"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_by_credentials_credentials"
      end
      # resource path
      local_var_path = '/payment/transactions/by-credentials/{credentials}'.sub('{' + 'credentials' + '}', CGI.escape(credentials.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_by_credentials_credentials",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_by_credentials_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a Mobile SDK URL by credentials
    # @param credentials [String] The credentials identify the transaction and contain the security details which grant the access to this operation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_payment_transactions_by_credentials_credentials_mobile_sdk_url(credentials, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_by_credentials_credentials_mobile_sdk_url_with_http_info(credentials, space, opts)
      data
    end

    # Retrieve a Mobile SDK URL by credentials

    # @param credentials [String] The credentials identify the transaction and contain the security details which grant the access to this operation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_transactions_by_credentials_credentials_mobile_sdk_url_with_http_info(credentials, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_by_credentials_credentials_mobile_sdk_url ...'
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_mobile_sdk_url"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_mobile_sdk_url"
      end
      # resource path
      local_var_path = '/payment/transactions/by-credentials/{credentials}/mobile-sdk-url'.sub('{' + 'credentials' + '}', CGI.escape(credentials.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_by_credentials_credentials_mobile_sdk_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_by_credentials_credentials_mobile_sdk_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List one-click tokens by credentials
    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TokenVersionListResponse]
    def get_payment_transactions_by_credentials_credentials_one_click_tokens(credentials, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_by_credentials_credentials_one_click_tokens_with_http_info(credentials, space, opts)
      data
    end

    # List one-click tokens by credentials

    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TokenVersionListResponse, Integer, Hash)>] TokenVersionListResponse data, response status code and response headers
    def get_payment_transactions_by_credentials_credentials_one_click_tokens_with_http_info(credentials, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_by_credentials_credentials_one_click_tokens ...'
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_one_click_tokens"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_one_click_tokens"
      end
      # resource path
      local_var_path = '/payment/transactions/by-credentials/{credentials}/one-click-tokens'.sub('{' + 'credentials' + '}', CGI.escape(credentials.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TokenVersionListResponse'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_by_credentials_credentials_one_click_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_by_credentials_credentials_one_click_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List available payment method configurations by credentials
    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param integration_mode [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentMethodConfigurationListResponse]
    def get_payment_transactions_by_credentials_credentials_payment_method_configurations(credentials, integration_mode, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_by_credentials_credentials_payment_method_configurations_with_http_info(credentials, integration_mode, space, opts)
      data
    end

    # List available payment method configurations by credentials

    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param integration_mode [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentMethodConfigurationListResponse, Integer, Hash)>] PaymentMethodConfigurationListResponse data, response status code and response headers
    def get_payment_transactions_by_credentials_credentials_payment_method_configurations_with_http_info(credentials, integration_mode, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_by_credentials_credentials_payment_method_configurations ...'
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_payment_method_configurations"
      end
      # verify the required parameter 'integration_mode' is set
      if @api_client.config.client_side_validation && integration_mode.nil?
        fail ArgumentError, "Missing the required parameter 'integration_mode' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_payment_method_configurations"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_by_credentials_credentials_payment_method_configurations"
      end
      # resource path
      local_var_path = '/payment/transactions/by-credentials/{credentials}/payment-method-configurations'.sub('{' + 'credentials' + '}', CGI.escape(credentials.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'integrationMode'] = integration_mode
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'PaymentMethodConfigurationListResponse'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_by_credentials_credentials_payment_method_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_by_credentials_credentials_payment_method_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Export transactions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields The fields to be included in the export.
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Default is 2,000.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [File]
    def get_payment_transactions_export(space, opts = {})
      data, _status_code, _headers = get_payment_transactions_export_with_http_info(space, opts)
      data
    end

    # Export transactions
    # Timeout for this request is: 60 seconds.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields The fields to be included in the export.
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Default is 2,000.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_payment_transactions_export_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_export ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_export"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsService.get_payment_transactions_export, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 100000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling TransactionsService.get_payment_transactions_export, must be smaller than or equal to 100000.'
      end

      # resource path
      local_var_path = '/payment/transactions/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :multi) unless opts[:'fields'].nil?
      query_params[:'limit'] = opts[:'limit'] unless opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] unless opts[:'offset'].nil?
      query_params[:'order'] = opts[:'order'] unless opts[:'order'].nil?
      query_params[:'query'] = opts[:'query'] unless opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = 60

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a transaction
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def get_payment_transactions_id(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a transaction

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def get_payment_transactions_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a charge flow payment page URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_payment_transactions_id_charge_flow_payment_page_url(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_charge_flow_payment_page_url_with_http_info(id, space, opts)
      data
    end

    # Retrieve a charge flow payment page URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_transactions_id_charge_flow_payment_page_url_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_charge_flow_payment_page_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_charge_flow_payment_page_url"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_charge_flow_payment_page_url"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/charge-flow/payment-page-url'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_charge_flow_payment_page_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_charge_flow_payment_page_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Check if token can be created
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Boolean]
    def get_payment_transactions_id_check_token_creation_possible(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_check_token_creation_possible_with_http_info(id, space, opts)
      data
    end

    # Check if token can be created

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def get_payment_transactions_id_check_token_creation_possible_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_check_token_creation_possible ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_check_token_creation_possible"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_check_token_creation_possible"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/check-token-creation-possible'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Boolean'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_check_token_creation_possible",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_check_token_creation_possible\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve transaction credentials
    # Generates temporary transaction credentials to delegate access to the REST API for the specified transaction.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_payment_transactions_id_credentials(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_credentials_with_http_info(id, space, opts)
      data
    end

    # Retrieve transaction credentials
    # Generates temporary transaction credentials to delegate access to the REST API for the specified transaction.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_transactions_id_credentials_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_credentials ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_credentials"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_credentials"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/credentials'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_credentials",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve an iFrame JavaScript URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_payment_transactions_id_iframe_javascript_url(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_iframe_javascript_url_with_http_info(id, space, opts)
      data
    end

    # Retrieve an iFrame JavaScript URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_transactions_id_iframe_javascript_url_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_iframe_javascript_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_iframe_javascript_url"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_iframe_javascript_url"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/iframe-javascript-url'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_iframe_javascript_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_iframe_javascript_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve an invoice document
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def get_payment_transactions_id_invoice_document(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_invoice_document_with_http_info(id, space, opts)
      data
    end

    # Retrieve an invoice document

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Integer, Hash)>] RenderedDocument data, response status code and response headers
    def get_payment_transactions_id_invoice_document_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_invoice_document ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_invoice_document"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_invoice_document"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/invoice-document'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'RenderedDocument'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_invoice_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_invoice_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve the latest line item version
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionLineItemVersion]
    def get_payment_transactions_id_latest_line_item_version(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_latest_line_item_version_with_http_info(id, space, opts)
      data
    end

    # Retrieve the latest line item version

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionLineItemVersion, Integer, Hash)>] TransactionLineItemVersion data, response status code and response headers
    def get_payment_transactions_id_latest_line_item_version_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_latest_line_item_version ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_latest_line_item_version"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_latest_line_item_version"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/latest-line-item-version'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TransactionLineItemVersion'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_latest_line_item_version",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_latest_line_item_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a Lightbox JavaScript URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_payment_transactions_id_lightbox_javascript_url(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_lightbox_javascript_url_with_http_info(id, space, opts)
      data
    end

    # Retrieve a Lightbox JavaScript URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_transactions_id_lightbox_javascript_url_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_lightbox_javascript_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_lightbox_javascript_url"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_lightbox_javascript_url"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/lightbox-javascript-url'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_lightbox_javascript_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_lightbox_javascript_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a packing slip document
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def get_payment_transactions_id_packing_slip_document(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_packing_slip_document_with_http_info(id, space, opts)
      data
    end

    # Retrieve a packing slip document

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Integer, Hash)>] RenderedDocument data, response status code and response headers
    def get_payment_transactions_id_packing_slip_document_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_packing_slip_document ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_packing_slip_document"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_packing_slip_document"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/packing-slip-document'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'RenderedDocument'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_packing_slip_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_packing_slip_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List available payment method configurations
    # @param id [Integer] 
    # @param integration_mode [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentMethodConfigurationListResponse]
    def get_payment_transactions_id_payment_method_configurations(id, integration_mode, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_payment_method_configurations_with_http_info(id, integration_mode, space, opts)
      data
    end

    # List available payment method configurations

    # @param id [Integer] 
    # @param integration_mode [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentMethodConfigurationListResponse, Integer, Hash)>] PaymentMethodConfigurationListResponse data, response status code and response headers
    def get_payment_transactions_id_payment_method_configurations_with_http_info(id, integration_mode, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_payment_method_configurations ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_payment_method_configurations"
      end
      # verify the required parameter 'integration_mode' is set
      if @api_client.config.client_side_validation && integration_mode.nil?
        fail ArgumentError, "Missing the required parameter 'integration_mode' when calling TransactionsService.get_payment_transactions_id_payment_method_configurations"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_payment_method_configurations"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/payment-method-configurations'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'integrationMode'] = integration_mode
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'PaymentMethodConfigurationListResponse'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_payment_method_configurations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_payment_method_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a payment page URL
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_payment_transactions_id_payment_page_url(id, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_payment_page_url_with_http_info(id, space, opts)
      data
    end

    # Retrieve a payment page URL

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_payment_transactions_id_payment_page_url_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_payment_page_url ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_payment_page_url"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_payment_page_url"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/payment-page-url'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_payment_page_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_payment_page_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List terminal receipts
    # @param id [Integer] 
    # @param format [TerminalReceiptFormat] The format specifies how the receipts will be presented in the response.
    # @param width [Integer] The width defines the dimensions for rendering the document. For PDF format, the width is specified in millimeters, while for text format, it represents the number of characters per line.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [RenderedTerminalReceiptListResponse]
    def get_payment_transactions_id_terminal_receipts(id, format, width, space, opts = {})
      data, _status_code, _headers = get_payment_transactions_id_terminal_receipts_with_http_info(id, format, width, space, opts)
      data
    end

    # List terminal receipts

    # @param id [Integer] 
    # @param format [TerminalReceiptFormat] The format specifies how the receipts will be presented in the response.
    # @param width [Integer] The width defines the dimensions for rendering the document. For PDF format, the width is specified in millimeters, while for text format, it represents the number of characters per line.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedTerminalReceiptListResponse, Integer, Hash)>] RenderedTerminalReceiptListResponse data, response status code and response headers
    def get_payment_transactions_id_terminal_receipts_with_http_info(id, format, width, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_id_terminal_receipts ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.get_payment_transactions_id_terminal_receipts"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling TransactionsService.get_payment_transactions_id_terminal_receipts"
      end
      # verify the required parameter 'width' is set
      if @api_client.config.client_side_validation && width.nil?
        fail ArgumentError, "Missing the required parameter 'width' when calling TransactionsService.get_payment_transactions_id_terminal_receipts"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_id_terminal_receipts"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/terminal-receipts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'format'] = format
      query_params[:'width'] = width

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
      return_type = opts[:debug_return_type] || 'RenderedTerminalReceiptListResponse'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_id_terminal_receipts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_id_terminal_receipts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search transactions
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [TransactionSearchResponse]
    def get_payment_transactions_search(space, opts = {})
      data, _status_code, _headers = get_payment_transactions_search_with_http_info(space, opts)
      data
    end

    # Search transactions

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(TransactionSearchResponse, Integer, Hash)>] TransactionSearchResponse data, response status code and response headers
    def get_payment_transactions_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.get_payment_transactions_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.get_payment_transactions_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsService.get_payment_transactions_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsService.get_payment_transactions_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling TransactionsService.get_payment_transactions_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/payment/transactions/search'

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionSearchResponse'

      new_options = opts.merge(
        :operation => :"TransactionsService.get_payment_transactions_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#get_payment_transactions_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a transaction
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_pending [TransactionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def patch_payment_transactions_id(id, space, transaction_pending, opts = {})
      data, _status_code, _headers = patch_payment_transactions_id_with_http_info(id, space, transaction_pending, opts)
      data
    end

    # Update a transaction

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_pending [TransactionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def patch_payment_transactions_id_with_http_info(id, space, transaction_pending, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.patch_payment_transactions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.patch_payment_transactions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.patch_payment_transactions_id"
      end
      # verify the required parameter 'transaction_pending' is set
      if @api_client.config.client_side_validation && transaction_pending.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_pending' when calling TransactionsService.patch_payment_transactions_id"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_pending)

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.patch_payment_transactions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#patch_payment_transactions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a transaction
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_create [TransactionCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_transactions(space, transaction_create, opts = {})
      data, _status_code, _headers = post_payment_transactions_with_http_info(space, transaction_create, opts)
      data
    end

    # Create a transaction

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_create [TransactionCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_transactions_with_http_info(space, transaction_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions"
      end
      # verify the required parameter 'transaction_create' is set
      if @api_client.config.client_side_validation && transaction_create.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_create' when calling TransactionsService.post_payment_transactions"
      end
      # resource path
      local_var_path = '/payment/transactions'

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_create)

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process via one-click token by credentials
    # Assigns the provided token to the transaction, processes it, and returns a URL for customer redirection to complete the transaction.
    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process(credentials, id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process_with_http_info(credentials, id, space, opts)
      data
    end

    # Process via one-click token by credentials
    # Assigns the provided token to the transaction, processes it, and returns a URL for customer redirection to complete the transaction.

    # @param credentials [String] Identifies the transaction and includes the security details required to authorize access to this operation.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process_with_http_info(credentials, id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process ...'
      end
      # verify the required parameter 'credentials' is set
      if @api_client.config.client_side_validation && credentials.nil?
        fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionsService.post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process"
      end
      # resource path
      local_var_path = '/payment/transactions/by-credentials/{credentials}/one-click-tokens/{id}/process'.sub('{' + 'credentials' + '}', CGI.escape(credentials.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_by_credentials_credentials_one_click_tokens_id_process\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process a transaction via charge flow
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_transactions_id_charge_flow_apply(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_charge_flow_apply_with_http_info(id, space, opts)
      data
    end

    # Process a transaction via charge flow

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_transactions_id_charge_flow_apply_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_charge_flow_apply ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_charge_flow_apply"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_charge_flow_apply"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/charge-flow/apply'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_charge_flow_apply",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_charge_flow_apply\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Cancel a charge flow
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_transactions_id_charge_flow_cancel(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_charge_flow_cancel_with_http_info(id, space, opts)
      data
    end

    # Cancel a charge flow

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_transactions_id_charge_flow_cancel_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_charge_flow_cancel ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_charge_flow_cancel"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_charge_flow_cancel"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/charge-flow/cancel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_charge_flow_cancel",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_charge_flow_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a charge flow recipient
    # @param id [Integer] 
    # @param type [Integer] 
    # @param recipient [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_payment_transactions_id_charge_flow_update_recipient(id, type, recipient, space, opts = {})
      post_payment_transactions_id_charge_flow_update_recipient_with_http_info(id, type, recipient, space, opts)
      nil
    end

    # Update a charge flow recipient

    # @param id [Integer] 
    # @param type [Integer] 
    # @param recipient [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_payment_transactions_id_charge_flow_update_recipient_with_http_info(id, type, recipient, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_charge_flow_update_recipient ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_charge_flow_update_recipient"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling TransactionsService.post_payment_transactions_id_charge_flow_update_recipient"
      end
      # verify the required parameter 'recipient' is set
      if @api_client.config.client_side_validation && recipient.nil?
        fail ArgumentError, "Missing the required parameter 'recipient' when calling TransactionsService.post_payment_transactions_id_charge_flow_update_recipient"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_charge_flow_update_recipient"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/charge-flow/update-recipient'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = type
      query_params[:'recipient'] = recipient

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
        :operation => :"TransactionsService.post_payment_transactions_id_charge_flow_update_recipient",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_charge_flow_update_recipient\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Complete a transaction offline
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionCompletion]
    def post_payment_transactions_id_complete_offline(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_complete_offline_with_http_info(id, space, opts)
      data
    end

    # Complete a transaction offline

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionCompletion, Integer, Hash)>] TransactionCompletion data, response status code and response headers
    def post_payment_transactions_id_complete_offline_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_complete_offline ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_complete_offline"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_complete_offline"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/complete-offline'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TransactionCompletion'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_complete_offline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_complete_offline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Complete a transaction online
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionCompletion]
    def post_payment_transactions_id_complete_online(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_complete_online_with_http_info(id, space, opts)
      data
    end

    # Complete a transaction online

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionCompletion, Integer, Hash)>] TransactionCompletion data, response status code and response headers
    def post_payment_transactions_id_complete_online_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_complete_online ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_complete_online"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_complete_online"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/complete-online'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TransactionCompletion'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_complete_online",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_complete_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Complete a transaction offline partially
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_completion_details [TransactionCompletionDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionCompletion]
    def post_payment_transactions_id_complete_partially_offline(id, space, transaction_completion_details, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_complete_partially_offline_with_http_info(id, space, transaction_completion_details, opts)
      data
    end

    # Complete a transaction offline partially

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_completion_details [TransactionCompletionDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionCompletion, Integer, Hash)>] TransactionCompletion data, response status code and response headers
    def post_payment_transactions_id_complete_partially_offline_with_http_info(id, space, transaction_completion_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_complete_partially_offline ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_complete_partially_offline"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_complete_partially_offline"
      end
      # verify the required parameter 'transaction_completion_details' is set
      if @api_client.config.client_side_validation && transaction_completion_details.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_completion_details' when calling TransactionsService.post_payment_transactions_id_complete_partially_offline"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/complete-partially-offline'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_completion_details)

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionCompletion'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_complete_partially_offline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_complete_partially_offline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Complete a transaction online partially
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_completion_details [TransactionCompletionDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionCompletion]
    def post_payment_transactions_id_complete_partially_online(id, space, transaction_completion_details, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_complete_partially_online_with_http_info(id, space, transaction_completion_details, opts)
      data
    end

    # Complete a transaction online partially

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_completion_details [TransactionCompletionDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionCompletion, Integer, Hash)>] TransactionCompletion data, response status code and response headers
    def post_payment_transactions_id_complete_partially_online_with_http_info(id, space, transaction_completion_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_complete_partially_online ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_complete_partially_online"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_complete_partially_online"
      end
      # verify the required parameter 'transaction_completion_details' is set
      if @api_client.config.client_side_validation && transaction_completion_details.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_completion_details' when calling TransactionsService.post_payment_transactions_id_complete_partially_online"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/complete-partially-online'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_completion_details)

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionCompletion'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_complete_partially_online",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_complete_partially_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Confirm a transaction
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_pending [TransactionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_transactions_id_confirm(id, space, transaction_pending, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_confirm_with_http_info(id, space, transaction_pending, opts)
      data
    end

    # Confirm a transaction

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param transaction_pending [TransactionPending] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_transactions_id_confirm_with_http_info(id, space, transaction_pending, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_confirm ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_confirm"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_confirm"
      end
      # verify the required parameter 'transaction_pending' is set
      if @api_client.config.client_side_validation && transaction_pending.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_pending' when calling TransactionsService.post_payment_transactions_id_confirm"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/confirm'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transaction_pending)

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_confirm",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process a card transaction
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param authenticated_card_request [AuthenticatedCardRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_transactions_id_process_card_details(id, space, authenticated_card_request, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_process_card_details_with_http_info(id, space, authenticated_card_request, opts)
      data
    end

    # Process a card transaction

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param authenticated_card_request [AuthenticatedCardRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_transactions_id_process_card_details_with_http_info(id, space, authenticated_card_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_process_card_details ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_process_card_details"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_process_card_details"
      end
      # verify the required parameter 'authenticated_card_request' is set
      if @api_client.config.client_side_validation && authenticated_card_request.nil?
        fail ArgumentError, "Missing the required parameter 'authenticated_card_request' when calling TransactionsService.post_payment_transactions_id_process_card_details"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/process-card-details'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(authenticated_card_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_process_card_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_process_card_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process a card transaction with 3-D Secure
    # Processes the transaction using the provided card details, potentially utilizing 3-D Secure. Returns a URL where the buyer must be redirected to complete the transaction.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param tokenized_card_request [TokenizedCardRequest] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def post_payment_transactions_id_process_card_details_threed(id, space, tokenized_card_request, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_process_card_details_threed_with_http_info(id, space, tokenized_card_request, opts)
      data
    end

    # Process a card transaction with 3-D Secure
    # Processes the transaction using the provided card details, potentially utilizing 3-D Secure. Returns a URL where the buyer must be redirected to complete the transaction.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param tokenized_card_request [TokenizedCardRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def post_payment_transactions_id_process_card_details_threed_with_http_info(id, space, tokenized_card_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_process_card_details_threed ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_process_card_details_threed"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_process_card_details_threed"
      end
      # verify the required parameter 'tokenized_card_request' is set
      if @api_client.config.client_side_validation && tokenized_card_request.nil?
        fail ArgumentError, "Missing the required parameter 'tokenized_card_request' when calling TransactionsService.post_payment_transactions_id_process_card_details_threed"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/process-card-details-threed'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end
      header_params[:'Space'] = space

      # form parameters
      form_params = opts[:form_params] || {}

      # connection timeout
      connection_timeout = @api_client.config.timeout

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tokenized_card_request)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_process_card_details_threed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_process_card_details_threed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process a transaction via token
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Charge]
    def post_payment_transactions_id_process_with_token(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_process_with_token_with_http_info(id, space, opts)
      data
    end

    # Process a transaction via token

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Charge, Integer, Hash)>] Charge data, response status code and response headers
    def post_payment_transactions_id_process_with_token_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_process_with_token ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_process_with_token"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_process_with_token"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/process-with-token'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'Charge'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_process_with_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_process_with_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Process a transaction without user-interaction
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Transaction]
    def post_payment_transactions_id_process_without_interaction(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_process_without_interaction_with_http_info(id, space, opts)
      data
    end

    # Process a transaction without user-interaction

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def post_payment_transactions_id_process_without_interaction_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_process_without_interaction ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_process_without_interaction"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_process_without_interaction"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/process-without-interaction'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'Transaction'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_process_without_interaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_process_without_interaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Void a transaction offline
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionVoid]
    def post_payment_transactions_id_void_offline(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_void_offline_with_http_info(id, space, opts)
      data
    end

    # Void a transaction offline

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionVoid, Integer, Hash)>] TransactionVoid data, response status code and response headers
    def post_payment_transactions_id_void_offline_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_void_offline ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_void_offline"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_void_offline"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/void-offline'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TransactionVoid'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_void_offline",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_void_offline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Void a transaction online
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionVoid]
    def post_payment_transactions_id_void_online(id, space, opts = {})
      data, _status_code, _headers = post_payment_transactions_id_void_online_with_http_info(id, space, opts)
      data
    end

    # Void a transaction online

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionVoid, Integer, Hash)>] TransactionVoid data, response status code and response headers
    def post_payment_transactions_id_void_online_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsService.post_payment_transactions_id_void_online ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsService.post_payment_transactions_id_void_online"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling TransactionsService.post_payment_transactions_id_void_online"
      end
      # resource path
      local_var_path = '/payment/transactions/{id}/void-online'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) unless opts[:'expand'].nil?

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
      return_type = opts[:debug_return_type] || 'TransactionVoid'

      new_options = opts.merge(
        :operation => :"TransactionsService.post_payment_transactions_id_void_online",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsService#post_payment_transactions_id_void_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
