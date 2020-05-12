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
  class SubscriptionService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # apply changes
    # This operation allows to apply changes on a subscription.
    # @param space_id 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionVersion]
    def apply_changes(space_id, request, opts = {})
      data, _status_code, _headers = apply_changes_with_http_info(space_id, request, opts)
      return data
    end

    # apply changes
    # This operation allows to apply changes on a subscription.
    # @param space_id 
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionVersion, Fixnum, Hash)>] SubscriptionVersion data, response status code and response headers
    def apply_changes_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.apply_changes ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.apply_changes" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling SubscriptionService.apply_changes" if request.nil?
      # resource path
      local_var_path = "/subscription/applyChanges".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#apply_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: SubscriptionService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.count" if space_id.nil?
      # resource path
      local_var_path = "/subscription/count".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: SubscriptionService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # The create operation creates a new subscription and a corresponding subscription version.
    # @param space_id 
    # @param create_request 
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionVersion]
    def create(space_id, create_request, opts = {})
      data, _status_code, _headers = create_with_http_info(space_id, create_request, opts)
      return data
    end

    # Create
    # The create operation creates a new subscription and a corresponding subscription version.
    # @param space_id 
    # @param create_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionVersion, Fixnum, Hash)>] SubscriptionVersion data, response status code and response headers
    def create_with_http_info(space_id, create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.create" if space_id.nil?
      # verify the required parameter 'create_request' is set
      fail ArgumentError, "Missing the required parameter 'create_request' when calling SubscriptionService.create" if create_request.nil?
      # resource path
      local_var_path = "/subscription/create".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(create_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # initialize
    # The initialize operation initializes a subscription. This method uses charge flows to carry out the transaction.
    # @param space_id 
    # @param subscription_id The provided subscription id will be used to lookup the subscription which should be initialized.
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionCharge]
    def initialize(space_id, subscription_id, opts = {})
      data, _status_code, _headers = initialize_with_http_info(space_id, subscription_id, opts)
      return data
    end

    # initialize
    # The initialize operation initializes a subscription. This method uses charge flows to carry out the transaction.
    # @param space_id 
    # @param subscription_id The provided subscription id will be used to lookup the subscription which should be initialized.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionCharge, Fixnum, Hash)>] SubscriptionCharge data, response status code and response headers
    def initialize_with_http_info(space_id, subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.initialize ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.initialize" if space_id.nil?
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionService.initialize" if subscription_id.nil?
      # resource path
      local_var_path = "/subscription/initialize".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'subscriptionId'] = subscription_id

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
        :return_type => 'SubscriptionCharge')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#initialize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # initializeSubscriberPresent
    # The initialize operation initializes a subscription when the subscriber is present. The method will initialize a transaction which has to be completed by using the transaction service.
    # @param space_id 
    # @param subscription_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :success_url The subscriber will be redirected to the success URL when the transaction is successful.
    # @option opts [String] :failed_url The subscriber will be redirected to the fail URL when the transaction fails.
    # @return [SubscriptionCharge]
    def initialize_subscriber_present(space_id, subscription_id, opts = {})
      data, _status_code, _headers = initialize_subscriber_present_with_http_info(space_id, subscription_id, opts)
      return data
    end

    # initializeSubscriberPresent
    # The initialize operation initializes a subscription when the subscriber is present. The method will initialize a transaction which has to be completed by using the transaction service.
    # @param space_id 
    # @param subscription_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :success_url The subscriber will be redirected to the success URL when the transaction is successful.
    # @option opts [String] :failed_url The subscriber will be redirected to the fail URL when the transaction fails.
    # @return [Array<(SubscriptionCharge, Fixnum, Hash)>] SubscriptionCharge data, response status code and response headers
    def initialize_subscriber_present_with_http_info(space_id, subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.initialize_subscriber_present ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.initialize_subscriber_present" if space_id.nil?
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionService.initialize_subscriber_present" if subscription_id.nil?
      # resource path
      local_var_path = "/subscription/initializeSubscriberPresent".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'subscriptionId'] = subscription_id
      query_params[:'successUrl'] = opts[:'success_url'] if !opts[:'success_url'].nil?
      query_params[:'failedUrl'] = opts[:'failed_url'] if !opts[:'failed_url'].nil?

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
        :return_type => 'SubscriptionCharge')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#initialize_subscriber_present\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the subscription which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Subscription]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the subscription which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Subscription, Fixnum, Hash)>] Subscription data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionService.read" if id.nil?
      # resource path
      local_var_path = "/subscription/read".sub('{format}','json')

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
        :return_type => 'Subscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the subscriptions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<Subscription>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the subscriptions which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Subscription>, Fixnum, Hash)>] Array<Subscription> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling SubscriptionService.search" if query.nil?
      # resource path
      local_var_path = "/subscription/search".sub('{format}','json')

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
        :return_type => 'Array<Subscription>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search Subscription Invoices
    # This operation allows to search for subscription invoices.
    # @param space_id 
    # @param subscription_id The id of the subscription for which the invoices should be searched for.
    # @param query The query restricts the invoices which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<TransactionInvoice>]
    def search_subscription_invoices(space_id, subscription_id, query, opts = {})
      data, _status_code, _headers = search_subscription_invoices_with_http_info(space_id, subscription_id, query, opts)
      return data
    end

    # Search Subscription Invoices
    # This operation allows to search for subscription invoices.
    # @param space_id 
    # @param subscription_id The id of the subscription for which the invoices should be searched for.
    # @param query The query restricts the invoices which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TransactionInvoice>, Fixnum, Hash)>] Array<TransactionInvoice> data, response status code and response headers
    def search_subscription_invoices_with_http_info(space_id, subscription_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.search_subscription_invoices ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.search_subscription_invoices" if space_id.nil?
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionService.search_subscription_invoices" if subscription_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling SubscriptionService.search_subscription_invoices" if query.nil?
      # resource path
      local_var_path = "/subscription/searchSubscriptionInvoices".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'subscriptionId'] = subscription_id

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
        :return_type => 'Array<TransactionInvoice>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#search_subscription_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # terminate
    # This operation allows to terminate a subscription.
    # @param space_id 
    # @param subscription_id The subscription id identifies the subscription which should be terminated.
    # @param respect_termination_period The respect termination period controls whether the termination period configured on the product version should be respected or if the operation should take effect immediately.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def terminate(space_id, subscription_id, respect_termination_period, opts = {})
      terminate_with_http_info(space_id, subscription_id, respect_termination_period, opts)
      return nil
    end

    # terminate
    # This operation allows to terminate a subscription.
    # @param space_id 
    # @param subscription_id The subscription id identifies the subscription which should be terminated.
    # @param respect_termination_period The respect termination period controls whether the termination period configured on the product version should be respected or if the operation should take effect immediately.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def terminate_with_http_info(space_id, subscription_id, respect_termination_period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.terminate ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.terminate" if space_id.nil?
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionService.terminate" if subscription_id.nil?
      # verify the required parameter 'respect_termination_period' is set
      fail ArgumentError, "Missing the required parameter 'respect_termination_period' when calling SubscriptionService.terminate" if respect_termination_period.nil?
      # resource path
      local_var_path = "/subscription/terminate".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'subscriptionId'] = subscription_id
      query_params[:'respectTerminationPeriod'] = respect_termination_period

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#terminate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update product version
    # The update product version operation updates the product version of the subscription to the latest active product version.
    # @param space_id 
    # @param subscription_id The subscription id identifies the subscription which should be updated to the latest version.
    # @param respect_termination_period The subscription version may be retired. The respect termination period controls whether the termination period configured on the product version should be respected or if the operation should take effect immediately.
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionVersion]
    def update_product_version(space_id, subscription_id, respect_termination_period, opts = {})
      data, _status_code, _headers = update_product_version_with_http_info(space_id, subscription_id, respect_termination_period, opts)
      return data
    end

    # update product version
    # The update product version operation updates the product version of the subscription to the latest active product version.
    # @param space_id 
    # @param subscription_id The subscription id identifies the subscription which should be updated to the latest version.
    # @param respect_termination_period The subscription version may be retired. The respect termination period controls whether the termination period configured on the product version should be respected or if the operation should take effect immediately.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionVersion, Fixnum, Hash)>] SubscriptionVersion data, response status code and response headers
    def update_product_version_with_http_info(space_id, subscription_id, respect_termination_period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionService.update_product_version ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionService.update_product_version" if space_id.nil?
      # verify the required parameter 'subscription_id' is set
      fail ArgumentError, "Missing the required parameter 'subscription_id' when calling SubscriptionService.update_product_version" if subscription_id.nil?
      # verify the required parameter 'respect_termination_period' is set
      fail ArgumentError, "Missing the required parameter 'respect_termination_period' when calling SubscriptionService.update_product_version" if respect_termination_period.nil?
      # resource path
      local_var_path = "/subscription/updateProductVersion".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'subscriptionId'] = subscription_id
      query_params[:'respectTerminationPeriod'] = respect_termination_period

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
        :return_type => 'SubscriptionVersion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionService#update_product_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
