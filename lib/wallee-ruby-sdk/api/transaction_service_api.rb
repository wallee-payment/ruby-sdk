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
  class TransactionService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Confirm
    # The confirm operation marks the transaction as confirmed. Once the transaction is confirmed no more changes can be applied.
    # @param space_id 
    # @param transaction_model The transaction JSON object to update and confirm.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def confirm(space_id, transaction_model, opts = {})
      data, _status_code, _headers = confirm_with_http_info(space_id, transaction_model, opts)
      return data
    end

    # Confirm
    # The confirm operation marks the transaction as confirmed. Once the transaction is confirmed no more changes can be applied.
    # @param space_id 
    # @param transaction_model The transaction JSON object to update and confirm.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def confirm_with_http_info(space_id, transaction_model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.confirm ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.confirm" if space_id.nil?
      # verify the required parameter 'transaction_model' is set
      fail ArgumentError, "Missing the required parameter 'transaction_model' when calling TransactionService.confirm" if transaction_model.nil?
      # resource path
      local_var_path = "/transaction/confirm".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transaction_model)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#confirm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def count(space_id, opts = {})
      data, _status_code, _headers = count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.count" if space_id.nil?
      # resource path
      local_var_path = "/transaction/count".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # Creates the entity with the given properties.
    # @param space_id 
    # @param transaction The transaction object which should be created.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def create(space_id, transaction, opts = {})
      data, _status_code, _headers = create_with_http_info(space_id, transaction, opts)
      return data
    end

    # Create
    # Creates the entity with the given properties.
    # @param space_id 
    # @param transaction The transaction object which should be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def create_with_http_info(space_id, transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.create" if space_id.nil?
      # verify the required parameter 'transaction' is set
      fail ArgumentError, "Missing the required parameter 'transaction' when calling TransactionService.create" if transaction.nil?
      # resource path
      local_var_path = "/transaction/create".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transaction)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Transaction Credentials
    # This operation allows to create transaction credentials to delegate temporarily the access to the web service API for this particular transaction.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def create_transaction_credentials(space_id, id, opts = {})
      data, _status_code, _headers = create_transaction_credentials_with_http_info(space_id, id, opts)
      return data
    end

    # Create Transaction Credentials
    # This operation allows to create transaction credentials to delegate temporarily the access to the web service API for this particular transaction.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_transaction_credentials_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.create_transaction_credentials ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.create_transaction_credentials" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.create_transaction_credentials" if id.nil?
      # resource path
      local_var_path = "/transaction/createTransactionCredentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#create_transaction_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete One-Click Token with Credentials
    # This operation removes the given token.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param token_id The token ID will be used to find the token which should be removed.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_one_click_token_with_credentials(credentials, token_id, opts = {})
      delete_one_click_token_with_credentials_with_http_info(credentials, token_id, opts)
      return nil
    end

    # Delete One-Click Token with Credentials
    # This operation removes the given token.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param token_id The token ID will be used to find the token which should be removed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_one_click_token_with_credentials_with_http_info(credentials, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.delete_one_click_token_with_credentials ..."
      end
      # verify the required parameter 'credentials' is set
      fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionService.delete_one_click_token_with_credentials" if credentials.nil?
      # verify the required parameter 'token_id' is set
      fail ArgumentError, "Missing the required parameter 'token_id' when calling TransactionService.delete_one_click_token_with_credentials" if token_id.nil?
      # resource path
      local_var_path = "/transaction/deleteOneClickTokenWithCredentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'credentials'] = credentials
      query_params[:'tokenId'] = token_id

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
        @api_client.config.logger.debug "API called: TransactionService#delete_one_click_token_with_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export
    # Exports the transactions into a CSV file. The file will contain the properties defined in the request.
    # @param space_id 
    # @param request The request controls the entries which are exported.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def export(space_id, request, opts = {})
      data, _status_code, _headers = export_with_http_info(space_id, request, opts)
      return data
    end

    # Export
    # Exports the transactions into a CSV file. The file will contain the properties defined in the request.
    # @param space_id 
    # @param request The request controls the entries which are exported.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def export_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.export ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.export" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling TransactionService.export" if request.nil?
      # resource path
      local_var_path = "/transaction/export".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8', 'text/csv']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch One Click Tokens with Credentials
    # This operation returns the token version objects which references the tokens usable as one-click payment tokens for the provided transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<TokenVersion>]
    def fetch_one_click_tokens_with_credentials(credentials, opts = {})
      data, _status_code, _headers = fetch_one_click_tokens_with_credentials_with_http_info(credentials, opts)
      return data
    end

    # Fetch One Click Tokens with Credentials
    # This operation returns the token version objects which references the tokens usable as one-click payment tokens for the provided transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TokenVersion>, Fixnum, Hash)>] Array<TokenVersion> data, response status code and response headers
    def fetch_one_click_tokens_with_credentials_with_http_info(credentials, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.fetch_one_click_tokens_with_credentials ..."
      end
      # verify the required parameter 'credentials' is set
      fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionService.fetch_one_click_tokens_with_credentials" if credentials.nil?
      # resource path
      local_var_path = "/transaction/fetchOneClickTokensWithCredentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'credentials'] = credentials

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TokenVersion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#fetch_one_click_tokens_with_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch Possible Payment Methods
    # This operation allows to get the payment method configurations which can be used with the provided transaction.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<PaymentMethodConfiguration>]
    def fetch_possible_payment_methods(space_id, id, opts = {})
      data, _status_code, _headers = fetch_possible_payment_methods_with_http_info(space_id, id, opts)
      return data
    end

    # Fetch Possible Payment Methods
    # This operation allows to get the payment method configurations which can be used with the provided transaction.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PaymentMethodConfiguration>, Fixnum, Hash)>] Array<PaymentMethodConfiguration> data, response status code and response headers
    def fetch_possible_payment_methods_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.fetch_possible_payment_methods ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.fetch_possible_payment_methods" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.fetch_possible_payment_methods" if id.nil?
      # resource path
      local_var_path = "/transaction/fetchPossiblePaymentMethods".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PaymentMethodConfiguration>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#fetch_possible_payment_methods\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch Possible Payment Methods with Credentials
    # This operation allows to get the payment method configurations which can be used with the provided transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<PaymentMethodConfiguration>]
    def fetch_possible_payment_methods_with_credentials(credentials, opts = {})
      data, _status_code, _headers = fetch_possible_payment_methods_with_credentials_with_http_info(credentials, opts)
      return data
    end

    # Fetch Possible Payment Methods with Credentials
    # This operation allows to get the payment method configurations which can be used with the provided transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PaymentMethodConfiguration>, Fixnum, Hash)>] Array<PaymentMethodConfiguration> data, response status code and response headers
    def fetch_possible_payment_methods_with_credentials_with_http_info(credentials, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.fetch_possible_payment_methods_with_credentials ..."
      end
      # verify the required parameter 'credentials' is set
      fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionService.fetch_possible_payment_methods_with_credentials" if credentials.nil?
      # resource path
      local_var_path = "/transaction/fetchPossiblePaymentMethodsWithCredentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'credentials'] = credentials

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PaymentMethodConfiguration>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#fetch_possible_payment_methods_with_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getInvoiceDocument
    # Returns the PDF document for the transaction invoice with given id.
    # @param space_id 
    # @param id The id of the transaction to get the invoice document for.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def get_invoice_document(space_id, id, opts = {})
      data, _status_code, _headers = get_invoice_document_with_http_info(space_id, id, opts)
      return data
    end

    # getInvoiceDocument
    # Returns the PDF document for the transaction invoice with given id.
    # @param space_id 
    # @param id The id of the transaction to get the invoice document for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Fixnum, Hash)>] RenderedDocument data, response status code and response headers
    def get_invoice_document_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.get_invoice_document ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.get_invoice_document" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.get_invoice_document" if id.nil?
      # resource path
      local_var_path = "/transaction/getInvoiceDocument".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
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
        :return_type => 'RenderedDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#get_invoice_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getLatestTransactionLineItemVersion
    # 
    # @param space_id 
    # @param id The id of the transaction to get the latest line item version for.
    # @param [Hash] opts the optional parameters
    # @return [TransactionLineItemVersion]
    def get_latest_transaction_line_item_version(space_id, id, opts = {})
      data, _status_code, _headers = get_latest_transaction_line_item_version_with_http_info(space_id, id, opts)
      return data
    end

    # getLatestTransactionLineItemVersion
    # 
    # @param space_id 
    # @param id The id of the transaction to get the latest line item version for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionLineItemVersion, Fixnum, Hash)>] TransactionLineItemVersion data, response status code and response headers
    def get_latest_transaction_line_item_version_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.get_latest_transaction_line_item_version ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.get_latest_transaction_line_item_version" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.get_latest_transaction_line_item_version" if id.nil?
      # resource path
      local_var_path = "/transaction/getLatestTransactionLineItemVersion".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionLineItemVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#get_latest_transaction_line_item_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # getPackingSlip
    # Returns the packing slip for the transaction with given id.
    # @param space_id 
    # @param id The id of the transaction to get the packing slip for.
    # @param [Hash] opts the optional parameters
    # @return [RenderedDocument]
    def get_packing_slip(space_id, id, opts = {})
      data, _status_code, _headers = get_packing_slip_with_http_info(space_id, id, opts)
      return data
    end

    # getPackingSlip
    # Returns the packing slip for the transaction with given id.
    # @param space_id 
    # @param id The id of the transaction to get the packing slip for.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RenderedDocument, Fixnum, Hash)>] RenderedDocument data, response status code and response headers
    def get_packing_slip_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.get_packing_slip ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.get_packing_slip" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.get_packing_slip" if id.nil?
      # resource path
      local_var_path = "/transaction/getPackingSlip".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
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
        :return_type => 'RenderedDocument')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#get_packing_slip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process One-Click Token with Credentials
    # This operation assigns the given token to the transaction and process it. This method will return an URL where the customer has to be redirect to complete the transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param token_id The token ID is used to load the corresponding token and to process the transaction with it.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def process_one_click_token_and_redirect_with_credentials(credentials, token_id, opts = {})
      data, _status_code, _headers = process_one_click_token_and_redirect_with_credentials_with_http_info(credentials, token_id, opts)
      return data
    end

    # Process One-Click Token with Credentials
    # This operation assigns the given token to the transaction and process it. This method will return an URL where the customer has to be redirect to complete the transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param token_id The token ID is used to load the corresponding token and to process the transaction with it.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def process_one_click_token_and_redirect_with_credentials_with_http_info(credentials, token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.process_one_click_token_and_redirect_with_credentials ..."
      end
      # verify the required parameter 'credentials' is set
      fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionService.process_one_click_token_and_redirect_with_credentials" if credentials.nil?
      # verify the required parameter 'token_id' is set
      fail ArgumentError, "Missing the required parameter 'token_id' when calling TransactionService.process_one_click_token_and_redirect_with_credentials" if token_id.nil?
      # resource path
      local_var_path = "/transaction/processOneClickTokenAndRedirectWithCredentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'credentials'] = credentials
      query_params[:'tokenId'] = token_id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#process_one_click_token_and_redirect_with_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process Without User Interaction
    # This operation processes the transaction without requiring that the customer is present. Means this operation applies strategies to process the transaction without a direct interaction with the buyer. This operation is suitable for recurring transactions.
    # @param space_id 
    # @param id The id of the transaction which should be processed.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def process_without_user_interaction(space_id, id, opts = {})
      data, _status_code, _headers = process_without_user_interaction_with_http_info(space_id, id, opts)
      return data
    end

    # Process Without User Interaction
    # This operation processes the transaction without requiring that the customer is present. Means this operation applies strategies to process the transaction without a direct interaction with the buyer. This operation is suitable for recurring transactions.
    # @param space_id 
    # @param id The id of the transaction which should be processed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def process_without_user_interaction_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.process_without_user_interaction ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.process_without_user_interaction" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.process_without_user_interaction" if id.nil?
      # resource path
      local_var_path = "/transaction/processWithoutUserInteraction".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#process_without_user_interaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the transaction which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionService.read" if id.nil?
      # resource path
      local_var_path = "/transaction/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
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
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read With Credentials
    # Reads the transaction with the given 'id' and returns it. This method uses the credentials to authenticate and identify the transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def read_with_credentials(credentials, opts = {})
      data, _status_code, _headers = read_with_credentials_with_http_info(credentials, opts)
      return data
    end

    # Read With Credentials
    # Reads the transaction with the given &#39;id&#39; and returns it. This method uses the credentials to authenticate and identify the transaction.
    # @param credentials The credentials identifies the transaction and contains the security details which grants the access this operation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def read_with_credentials_with_http_info(credentials, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.read_with_credentials ..."
      end
      # verify the required parameter 'credentials' is set
      fail ArgumentError, "Missing the required parameter 'credentials' when calling TransactionService.read_with_credentials" if credentials.nil?
      # resource path
      local_var_path = "/transaction/readWithCredentials".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'credentials'] = credentials

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
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#read_with_credentials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the transactions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<Transaction>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the transactions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Transaction>, Fixnum, Hash)>] Array<Transaction> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling TransactionService.search" if query.nil?
      # resource path
      local_var_path = "/transaction/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Transaction>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # This updates the entity with the given properties. Only those properties which should be updated can be provided. The 'id' and 'version' are required to identify the entity.
    # @param space_id 
    # @param entity The transaction object with the properties which should be updated.
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def update(space_id, entity, opts = {})
      data, _status_code, _headers = update_with_http_info(space_id, entity, opts)
      return data
    end

    # Update
    # This updates the entity with the given properties. Only those properties which should be updated can be provided. The &#39;id&#39; and &#39;version&#39; are required to identify the entity.
    # @param space_id 
    # @param entity The transaction object with the properties which should be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def update_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.update ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.update" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling TransactionService.update" if entity.nil?
      # resource path
      local_var_path = "/transaction/update".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # updateTransactionLineItems
    # 
    # @param space_id 
    # @param update_request 
    # @param [Hash] opts the optional parameters
    # @return [TransactionLineItemVersion]
    def update_transaction_line_items(space_id, update_request, opts = {})
      data, _status_code, _headers = update_transaction_line_items_with_http_info(space_id, update_request, opts)
      return data
    end

    # updateTransactionLineItems
    # 
    # @param space_id 
    # @param update_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionLineItemVersion, Fixnum, Hash)>] TransactionLineItemVersion data, response status code and response headers
    def update_transaction_line_items_with_http_info(space_id, update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionService.update_transaction_line_items ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionService.update_transaction_line_items" if space_id.nil?
      # verify the required parameter 'update_request' is set
      fail ArgumentError, "Missing the required parameter 'update_request' when calling TransactionService.update_transaction_line_items" if update_request.nil?
      # resource path
      local_var_path = "/transaction/updateTransactionLineItems".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionLineItemVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionService#update_transaction_line_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
