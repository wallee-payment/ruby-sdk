=begin
wallee API: 2.2.0

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
  class TransactionCompletionService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # completeOffline
    # This operation completes the transaction offline. The completion is not forwarded to the processor. This implies the processor does not do anything. This method is only here to fix manually the transaction state.
    # @param space_id 
    # @param id The id of the transaction which should be completed.
    # @param [Hash] opts the optional parameters
    # @return [TransactionCompletion]
    def complete_offline(space_id, id, opts = {})
      data, _status_code, _headers = complete_offline_with_http_info(space_id, id, opts)
      return data
    end

    # completeOffline
    # This operation completes the transaction offline. The completion is not forwarded to the processor. This implies the processor does not do anything. This method is only here to fix manually the transaction state.
    # @param space_id 
    # @param id The id of the transaction which should be completed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionCompletion, Fixnum, Hash)>] TransactionCompletion data, response status code and response headers
    def complete_offline_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.complete_offline ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.complete_offline" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCompletionService.complete_offline" if id.nil?
      # resource path
      local_var_path = "/transaction-completion/completeOffline".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionCompletion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCompletionService#complete_offline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # completeOnline
    # This operation completes the transaction online. The completion is forwarded to the processor. This implies that the processor may take some actions based on the completion.
    # @param space_id 
    # @param id The id of the transaction which should be completed.
    # @param [Hash] opts the optional parameters
    # @return [TransactionCompletion]
    def complete_online(space_id, id, opts = {})
      data, _status_code, _headers = complete_online_with_http_info(space_id, id, opts)
      return data
    end

    # completeOnline
    # This operation completes the transaction online. The completion is forwarded to the processor. This implies that the processor may take some actions based on the completion.
    # @param space_id 
    # @param id The id of the transaction which should be completed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionCompletion, Fixnum, Hash)>] TransactionCompletion data, response status code and response headers
    def complete_online_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.complete_online ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.complete_online" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCompletionService.complete_online" if id.nil?
      # resource path
      local_var_path = "/transaction-completion/completeOnline".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionCompletion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCompletionService#complete_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # completePartiallyOffline
    # This operation can be used to partially complete the transaction offline. The completion is not forwarded to the processor. This implies the processor does not do anything. This method is only here to fix manually the transaction state.
    # @param space_id 
    # @param completion 
    # @param [Hash] opts the optional parameters
    # @return [TransactionCompletion]
    def complete_partially_offline(space_id, completion, opts = {})
      data, _status_code, _headers = complete_partially_offline_with_http_info(space_id, completion, opts)
      return data
    end

    # completePartiallyOffline
    # This operation can be used to partially complete the transaction offline. The completion is not forwarded to the processor. This implies the processor does not do anything. This method is only here to fix manually the transaction state.
    # @param space_id 
    # @param completion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionCompletion, Fixnum, Hash)>] TransactionCompletion data, response status code and response headers
    def complete_partially_offline_with_http_info(space_id, completion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.complete_partially_offline ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.complete_partially_offline" if space_id.nil?
      # verify the required parameter 'completion' is set
      fail ArgumentError, "Missing the required parameter 'completion' when calling TransactionCompletionService.complete_partially_offline" if completion.nil?
      # resource path
      local_var_path = "/transaction-completion/completePartiallyOffline".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(completion)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionCompletion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCompletionService#complete_partially_offline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # completePartiallyOnline
    # This operation can be used to partially complete the transaction online. The completion is forwarded to the processor. This implies that the processor may take some actions based on the completion.
    # @param space_id 
    # @param completion 
    # @param [Hash] opts the optional parameters
    # @return [TransactionCompletion]
    def complete_partially_online(space_id, completion, opts = {})
      data, _status_code, _headers = complete_partially_online_with_http_info(space_id, completion, opts)
      return data
    end

    # completePartiallyOnline
    # This operation can be used to partially complete the transaction online. The completion is forwarded to the processor. This implies that the processor may take some actions based on the completion.
    # @param space_id 
    # @param completion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionCompletion, Fixnum, Hash)>] TransactionCompletion data, response status code and response headers
    def complete_partially_online_with_http_info(space_id, completion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.complete_partially_online ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.complete_partially_online" if space_id.nil?
      # verify the required parameter 'completion' is set
      fail ArgumentError, "Missing the required parameter 'completion' when calling TransactionCompletionService.complete_partially_online" if completion.nil?
      # resource path
      local_var_path = "/transaction-completion/completePartiallyOnline".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(completion)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionCompletion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCompletionService#complete_partially_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.count" if space_id.nil?
      # resource path
      local_var_path = "/transaction-completion/count".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: TransactionCompletionService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the transaction completions which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [TransactionCompletion]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the transaction completions which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionCompletion, Fixnum, Hash)>] TransactionCompletion data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCompletionService.read" if id.nil?
      # resource path
      local_var_path = "/transaction-completion/read".sub('{format}','json')

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
        :return_type => 'TransactionCompletion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCompletionService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the transaction completions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<TransactionCompletion>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the transaction completions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TransactionCompletion>, Fixnum, Hash)>] Array<TransactionCompletion> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCompletionService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCompletionService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling TransactionCompletionService.search" if query.nil?
      # resource path
      local_var_path = "/transaction-completion/search".sub('{format}','json')

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
        :return_type => 'Array<TransactionCompletion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCompletionService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
