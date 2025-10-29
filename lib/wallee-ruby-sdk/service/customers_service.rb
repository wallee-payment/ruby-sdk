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
  class CustomersService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete multiple customers
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param request_body [Array<Integer>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RestApiBulkOperationResult>]
    def delete_customers_bulk(space, request_body, opts = {})
      data, _status_code, _headers = delete_customers_bulk_with_http_info(space, request_body, opts)
      data
    end

    # Delete multiple customers

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param request_body [Array<Integer>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RestApiBulkOperationResult>, Integer, Hash)>] Array<RestApiBulkOperationResult> data, response status code and response headers
    def delete_customers_bulk_with_http_info(space, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.delete_customers_bulk ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.delete_customers_bulk"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling CustomersService.delete_customers_bulk"
      end
      # resource path
      local_var_path = '/customers/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RestApiBulkOperationResult>'

      new_options = opts.merge(
        :operation => :"CustomersService.delete_customers_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#delete_customers_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Delete a customer
    # Permanently deletes a customer. It cannot be undone.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_customers_id(id, space, opts = {})
      delete_customers_id_with_http_info(id, space, opts)
      nil
    end

    # Delete a customer
    # Permanently deletes a customer. It cannot be undone.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_customers_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.delete_customers_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersService.delete_customers_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.delete_customers_id"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"CustomersService.delete_customers_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#delete_customers_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List all customers
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [CustomerListResponse]
    def get_customers(space, opts = {})
      data, _status_code, _headers = get_customers_with_http_info(space, opts)
      data
    end

    # List all customers

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :after Set to an object&#39;s ID to retrieve the page of objects coming immediately after the named object.
    # @option opts [Integer] :before Set to an object&#39;s ID to retrieve the page of objects coming immediately before the named object.
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [SortingOrder] :order Specify to retrieve objects in chronological (ASC) or reverse chronological (DESC) order.
    # @return [Array<(CustomerListResponse, Integer, Hash)>] CustomerListResponse data, response status code and response headers
    def get_customers_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.get_customers ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.get_customers"
      end
      if @api_client.config.client_side_validation && !opts[:'after'].nil? && opts[:'after'] < 1
        fail ArgumentError, 'invalid value for "opts[:"after"]" when calling CustomersService.get_customers, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'before'].nil? && opts[:'before'] < 1
        fail ArgumentError, 'invalid value for "opts[:"before"]" when calling CustomersService.get_customers, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomersService.get_customers, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomersService.get_customers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/customers'

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
      return_type = opts[:debug_return_type] || 'CustomerListResponse'

      new_options = opts.merge(
        :operation => :"CustomersService.get_customers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#get_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Retrieve a customer
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Customer]
    def get_customers_id(id, space, opts = {})
      data, _status_code, _headers = get_customers_id_with_http_info(id, space, opts)
      data
    end

    # Retrieve a customer

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Customer, Integer, Hash)>] Customer data, response status code and response headers
    def get_customers_id_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.get_customers_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersService.get_customers_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.get_customers_id"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Customer'

      new_options = opts.merge(
        :operation => :"CustomersService.get_customers_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#get_customers_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # List a customer's email addresses
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [CustomerEmailAddressListResponse]
    def get_customers_id_email_addresses(id, space, opts = {})
      data, _status_code, _headers = get_customers_id_email_addresses_with_http_info(id, space, opts)
      data
    end

    # List a customer&#39;s email addresses

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(CustomerEmailAddressListResponse, Integer, Hash)>] CustomerEmailAddressListResponse data, response status code and response headers
    def get_customers_id_email_addresses_with_http_info(id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.get_customers_id_email_addresses ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersService.get_customers_id_email_addresses"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.get_customers_id_email_addresses"
      end
      # resource path
      local_var_path = '/customers/{id}/email-addresses'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerEmailAddressListResponse'

      new_options = opts.merge(
        :operation => :"CustomersService.get_customers_id_email_addresses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#get_customers_id_email_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Search customers
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [CustomerSearchResponse]
    def get_customers_search(space, opts = {})
      data, _status_code, _headers = get_customers_search_with_http_info(space, opts)
      data
    end

    # Search customers

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @option opts [Integer] :limit A limit on the number of objects to be returned, between 1 and 100. Default is 10.
    # @option opts [Integer] :offset A cursor for pagination, specifies the number of objects to skip.
    # @option opts [String] :order The fields and order to sort the objects by.
    # @option opts [String] :query The search query to filter the objects by.
    # @return [Array<(CustomerSearchResponse, Integer, Hash)>] CustomerSearchResponse data, response status code and response headers
    def get_customers_search_with_http_info(space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.get_customers_search ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.get_customers_search"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomersService.get_customers_search, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomersService.get_customers_search, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] > 10000
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CustomersService.get_customers_search, must be smaller than or equal to 10000.'
      end

      # resource path
      local_var_path = '/customers/search'

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
      return_type = opts[:debug_return_type] || 'CustomerSearchResponse'

      new_options = opts.merge(
        :operation => :"CustomersService.get_customers_search",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#get_customers_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update multiple customers
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_active [Array<CustomerActive>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RestApiBulkOperationResult>]
    def patch_customers_bulk(space, customer_active, opts = {})
      data, _status_code, _headers = patch_customers_bulk_with_http_info(space, customer_active, opts)
      data
    end

    # Update multiple customers

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_active [Array<CustomerActive>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RestApiBulkOperationResult>, Integer, Hash)>] Array<RestApiBulkOperationResult> data, response status code and response headers
    def patch_customers_bulk_with_http_info(space, customer_active, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.patch_customers_bulk ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.patch_customers_bulk"
      end
      # verify the required parameter 'customer_active' is set
      if @api_client.config.client_side_validation && customer_active.nil?
        fail ArgumentError, "Missing the required parameter 'customer_active' when calling CustomersService.patch_customers_bulk"
      end
      # resource path
      local_var_path = '/customers/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_active)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RestApiBulkOperationResult>'

      new_options = opts.merge(
        :operation => :"CustomersService.patch_customers_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#patch_customers_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a customer
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_active [CustomerActive] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Customer]
    def patch_customers_id(id, space, customer_active, opts = {})
      data, _status_code, _headers = patch_customers_id_with_http_info(id, space, customer_active, opts)
      data
    end

    # Update a customer

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_active [CustomerActive] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Customer, Integer, Hash)>] Customer data, response status code and response headers
    def patch_customers_id_with_http_info(id, space, customer_active, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.patch_customers_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersService.patch_customers_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.patch_customers_id"
      end
      # verify the required parameter 'customer_active' is set
      if @api_client.config.client_side_validation && customer_active.nil?
        fail ArgumentError, "Missing the required parameter 'customer_active' when calling CustomersService.patch_customers_id"
      end
      # resource path
      local_var_path = '/customers/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_active)

      # return_type
      return_type = opts[:debug_return_type] || 'Customer'

      new_options = opts.merge(
        :operation => :"CustomersService.patch_customers_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#patch_customers_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a customer
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_create [CustomerCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Customer]
    def post_customers(space, customer_create, opts = {})
      data, _status_code, _headers = post_customers_with_http_info(space, customer_create, opts)
      data
    end

    # Create a customer

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_create [CustomerCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Customer, Integer, Hash)>] Customer data, response status code and response headers
    def post_customers_with_http_info(space, customer_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.post_customers ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.post_customers"
      end
      # verify the required parameter 'customer_create' is set
      if @api_client.config.client_side_validation && customer_create.nil?
        fail ArgumentError, "Missing the required parameter 'customer_create' when calling CustomersService.post_customers"
      end
      # resource path
      local_var_path = '/customers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_create)

      # return_type
      return_type = opts[:debug_return_type] || 'Customer'

      new_options = opts.merge(
        :operation => :"CustomersService.post_customers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#post_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create multiple customers
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_create [Array<CustomerCreate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RestApiBulkOperationResult>]
    def post_customers_bulk(space, customer_create, opts = {})
      data, _status_code, _headers = post_customers_bulk_with_http_info(space, customer_create, opts)
      data
    end

    # Create multiple customers

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param customer_create [Array<CustomerCreate>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RestApiBulkOperationResult>, Integer, Hash)>] Array<RestApiBulkOperationResult> data, response status code and response headers
    def post_customers_bulk_with_http_info(space, customer_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.post_customers_bulk ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.post_customers_bulk"
      end
      # verify the required parameter 'customer_create' is set
      if @api_client.config.client_side_validation && customer_create.nil?
        fail ArgumentError, "Missing the required parameter 'customer_create' when calling CustomersService.post_customers_bulk"
      end
      # resource path
      local_var_path = '/customers/bulk'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_create)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RestApiBulkOperationResult>'

      new_options = opts.merge(
        :operation => :"CustomersService.post_customers_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#post_customers_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Merge two customers
    # @param id [Integer] 
    # @param other [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Customer]
    def post_customers_id_merge_other(id, other, space, opts = {})
      data, _status_code, _headers = post_customers_id_merge_other_with_http_info(id, other, space, opts)
      data
    end

    # Merge two customers

    # @param id [Integer] 
    # @param other [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Customer, Integer, Hash)>] Customer data, response status code and response headers
    def post_customers_id_merge_other_with_http_info(id, other, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomersService.post_customers_id_merge_other ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomersService.post_customers_id_merge_other"
      end
      # verify the required parameter 'other' is set
      if @api_client.config.client_side_validation && other.nil?
        fail ArgumentError, "Missing the required parameter 'other' when calling CustomersService.post_customers_id_merge_other"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling CustomersService.post_customers_id_merge_other"
      end
      # resource path
      local_var_path = '/customers/{id}/merge/{other}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'other' + '}', CGI.escape(other.to_s))

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
      return_type = opts[:debug_return_type] || 'Customer'

      new_options = opts.merge(
        :operation => :"CustomersService.post_customers_id_merge_other",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomersService#post_customers_id_merge_other\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
