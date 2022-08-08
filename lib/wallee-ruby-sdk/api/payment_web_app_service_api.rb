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
  class PaymentWebAppService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Activate Processor for Production
    # This operation marks the processor to be usable within the production environment.
    # @param space_id The space ID identifies the space in which the processor is installed in.
    # @param external_id The external ID identifies the processor. The external ID corresponds to the ID provided during inserting of the processor.
    # @param [Hash] opts the optional parameters
    # @return [PaymentAppProcessor]
    def activate_processor_for_production(space_id, external_id, opts = {})
      data, _status_code, _headers = activate_processor_for_production_with_http_info(space_id, external_id, opts)
      return data
    end

    # Activate Processor for Production
    # This operation marks the processor to be usable within the production environment.
    # @param space_id The space ID identifies the space in which the processor is installed in.
    # @param external_id The external ID identifies the processor. The external ID corresponds to the ID provided during inserting of the processor.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentAppProcessor, Fixnum, Hash)>] PaymentAppProcessor data, response status code and response headers
    def activate_processor_for_production_with_http_info(space_id, external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.activate_processor_for_production ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.activate_processor_for_production" if space_id.nil?
      # verify the required parameter 'external_id' is set
      fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppService.activate_processor_for_production" if external_id.nil?
      # resource path
      local_var_path = "/payment-web-app/activate-processor-for-production".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'externalId'] = external_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
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
        :return_type => 'PaymentAppProcessor')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#activate_processor_for_production\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Connector
    # This operation removes the web app payment connector from the given space.
    # @param space_id The space ID identifies the space in which the connector is installed in.
    # @param external_id The external ID identifies the connector. The external ID corresponds to the ID provided during inserting of the connector.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_connector(space_id, external_id, opts = {})
      delete_connector_with_http_info(space_id, external_id, opts)
      return nil
    end

    # Delete Connector
    # This operation removes the web app payment connector from the given space.
    # @param space_id The space ID identifies the space in which the connector is installed in.
    # @param external_id The external ID identifies the connector. The external ID corresponds to the ID provided during inserting of the connector.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_connector_with_http_info(space_id, external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.delete_connector ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.delete_connector" if space_id.nil?
      # verify the required parameter 'external_id' is set
      fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppService.delete_connector" if external_id.nil?
      # resource path
      local_var_path = "/payment-web-app/delete-connector".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'externalId'] = external_id

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
        @api_client.config.logger.debug "API called: PaymentWebAppService#delete_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Processor
    # This operation removes the web app payment processor and its connectors from the given space.
    # @param space_id The space ID identifies the space in which the processor is installed in.
    # @param external_id The external ID identifies the processor. The external ID corresponds to the ID provided during inserting of the processor.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_processor(space_id, external_id, opts = {})
      delete_processor_with_http_info(space_id, external_id, opts)
      return nil
    end

    # Delete Processor
    # This operation removes the web app payment processor and its connectors from the given space.
    # @param space_id The space ID identifies the space in which the processor is installed in.
    # @param external_id The external ID identifies the processor. The external ID corresponds to the ID provided during inserting of the processor.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_processor_with_http_info(space_id, external_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.delete_processor ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.delete_processor" if space_id.nil?
      # verify the required parameter 'external_id' is set
      fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppService.delete_processor" if external_id.nil?
      # resource path
      local_var_path = "/payment-web-app/delete-processor".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'externalId'] = external_id

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
        @api_client.config.logger.debug "API called: PaymentWebAppService#delete_processor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert or Update Connector
    # This operation inserts or updates a web app payment connector.
    # @param space_id The space ID identifies the space into which the connector should be inserted into.
    # @param request The connector object contains all the details required to create or update a web app connector.
    # @param [Hash] opts the optional parameters
    # @return [PaymentAppConnector]
    def insert_or_update_connector(space_id, request, opts = {})
      data, _status_code, _headers = insert_or_update_connector_with_http_info(space_id, request, opts)
      return data
    end

    # Insert or Update Connector
    # This operation inserts or updates a web app payment connector.
    # @param space_id The space ID identifies the space into which the connector should be inserted into.
    # @param request The connector object contains all the details required to create or update a web app connector.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentAppConnector, Fixnum, Hash)>] PaymentAppConnector data, response status code and response headers
    def insert_or_update_connector_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.insert_or_update_connector ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.insert_or_update_connector" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling PaymentWebAppService.insert_or_update_connector" if request.nil?
      # resource path
      local_var_path = "/payment-web-app/insert-or-update-connector".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentAppConnector')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#insert_or_update_connector\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert or Update Processor
    # This operation inserts or updates a web app payment processor.
    # @param space_id The space ID identifies the space into which the processor should be inserted into.
    # @param request The processor object contains all the details required to create or update a web app processor.
    # @param [Hash] opts the optional parameters
    # @return [PaymentAppProcessor]
    def insert_or_update_processor(space_id, request, opts = {})
      data, _status_code, _headers = insert_or_update_processor_with_http_info(space_id, request, opts)
      return data
    end

    # Insert or Update Processor
    # This operation inserts or updates a web app payment processor.
    # @param space_id The space ID identifies the space into which the processor should be inserted into.
    # @param request The processor object contains all the details required to create or update a web app processor.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentAppProcessor, Fixnum, Hash)>] PaymentAppProcessor data, response status code and response headers
    def insert_or_update_processor_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.insert_or_update_processor ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.insert_or_update_processor" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling PaymentWebAppService.insert_or_update_processor" if request.nil?
      # resource path
      local_var_path = "/payment-web-app/insert-or-update-processor".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentAppProcessor')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#insert_or_update_processor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Charge Attempt
    # This operation updates the state of the charge attempt. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned charge attempt corresponds to the charge attempt indicated in the request.
    # @param space_id This is the ID of the space in which the charge attempt is located in.
    # @param request The charge attempt update request allows to update the state of a charge attempt.
    # @param [Hash] opts the optional parameters
    # @return [ChargeAttempt]
    def update_charge_attempt(space_id, request, opts = {})
      data, _status_code, _headers = update_charge_attempt_with_http_info(space_id, request, opts)
      return data
    end

    # Update Charge Attempt
    # This operation updates the state of the charge attempt. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned charge attempt corresponds to the charge attempt indicated in the request.
    # @param space_id This is the ID of the space in which the charge attempt is located in.
    # @param request The charge attempt update request allows to update the state of a charge attempt.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChargeAttempt, Fixnum, Hash)>] ChargeAttempt data, response status code and response headers
    def update_charge_attempt_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.update_charge_attempt ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.update_charge_attempt" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling PaymentWebAppService.update_charge_attempt" if request.nil?
      # resource path
      local_var_path = "/payment-web-app/update-charge-attempt".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChargeAttempt')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#update_charge_attempt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Completion
    # This operation updates the state of the transaction completion. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned completion corresponds to the completion indicated in the request.
    # @param space_id This is the ID of the space in which the completion is located in.
    # @param request The completion update request allows to update the state of a completion.
    # @param [Hash] opts the optional parameters
    # @return [TransactionCompletion]
    def update_completion(space_id, request, opts = {})
      data, _status_code, _headers = update_completion_with_http_info(space_id, request, opts)
      return data
    end

    # Update Completion
    # This operation updates the state of the transaction completion. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned completion corresponds to the completion indicated in the request.
    # @param space_id This is the ID of the space in which the completion is located in.
    # @param request The completion update request allows to update the state of a completion.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionCompletion, Fixnum, Hash)>] TransactionCompletion data, response status code and response headers
    def update_completion_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.update_completion ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.update_completion" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling PaymentWebAppService.update_completion" if request.nil?
      # resource path
      local_var_path = "/payment-web-app/update-completion".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionCompletion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#update_completion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Refund
    # This operation updates the state of the refund. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned refund corresponds to the refund indicated in the request.
    # @param space_id This is the ID of the space in which the refund is located in.
    # @param request The refund update request allows to update the state of a refund.
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def update_refund(space_id, request, opts = {})
      data, _status_code, _headers = update_refund_with_http_info(space_id, request, opts)
      return data
    end

    # Update Refund
    # This operation updates the state of the refund. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned refund corresponds to the refund indicated in the request.
    # @param space_id This is the ID of the space in which the refund is located in.
    # @param request The refund update request allows to update the state of a refund.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def update_refund_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.update_refund ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.update_refund" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling PaymentWebAppService.update_refund" if request.nil?
      # resource path
      local_var_path = "/payment-web-app/update-refund".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#update_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Void
    # This operation updates the state of the transaction void. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned void corresponds to the void indicated in the request.
    # @param space_id This is the ID of the space in which the void is located in.
    # @param request The void update request allows to update the state of a void.
    # @param [Hash] opts the optional parameters
    # @return [TransactionVoid]
    def update_void(space_id, request, opts = {})
      data, _status_code, _headers = update_void_with_http_info(space_id, request, opts)
      return data
    end

    # Update Void
    # This operation updates the state of the transaction void. This method can be invoked for transactions originally created with a processor associated with the web app that invokes this operation. The returned void corresponds to the void indicated in the request.
    # @param space_id This is the ID of the space in which the void is located in.
    # @param request The void update request allows to update the state of a void.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionVoid, Fixnum, Hash)>] TransactionVoid data, response status code and response headers
    def update_void_with_http_info(space_id, request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentWebAppService.update_void ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling PaymentWebAppService.update_void" if space_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling PaymentWebAppService.update_void" if request.nil?
      # resource path
      local_var_path = "/payment-web-app/update-void".sub('{format}','json')

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

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionVoid')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppService#update_void\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
