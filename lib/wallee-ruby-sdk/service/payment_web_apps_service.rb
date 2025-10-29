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
  class PaymentWebAppsService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a connector
    # Permanently deletes a connector. It cannot be undone.
    # @param connector_external_id [String] The unique identifier assigned during connector&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_web_apps_connectors_connector_external_id(connector_external_id, space, opts = {})
      delete_payment_web_apps_connectors_connector_external_id_with_http_info(connector_external_id, space, opts)
      nil
    end

    # Delete a connector
    # Permanently deletes a connector. It cannot be undone.

    # @param connector_external_id [String] The unique identifier assigned during connector&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_web_apps_connectors_connector_external_id_with_http_info(connector_external_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.delete_payment_web_apps_connectors_connector_external_id ...'
      end
      # verify the required parameter 'connector_external_id' is set
      if @api_client.config.client_side_validation && connector_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'connector_external_id' when calling PaymentWebAppsService.delete_payment_web_apps_connectors_connector_external_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.delete_payment_web_apps_connectors_connector_external_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/connectors/{connectorExternalId}'.sub('{' + 'connectorExternalId' + '}', CGI.escape(connector_external_id.to_s))

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
        :operation => :"PaymentWebAppsService.delete_payment_web_apps_connectors_connector_external_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#delete_payment_web_apps_connectors_connector_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Delete a processor
    # Permanently deletes a processor. It cannot be undone.
    # @param external_id [String] The unique identifier assigned during processor&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_web_apps_processors_external_id(external_id, space, opts = {})
      delete_payment_web_apps_processors_external_id_with_http_info(external_id, space, opts)
      nil
    end

    # Delete a processor
    # Permanently deletes a processor. It cannot be undone.

    # @param external_id [String] The unique identifier assigned during processor&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payment_web_apps_processors_external_id_with_http_info(external_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.delete_payment_web_apps_processors_external_id ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppsService.delete_payment_web_apps_processors_external_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.delete_payment_web_apps_processors_external_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/processors/{externalId}'.sub('{' + 'externalId' + '}', CGI.escape(external_id.to_s))

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
        :operation => :"PaymentWebAppsService.delete_payment_web_apps_processors_external_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#delete_payment_web_apps_processors_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a charge attempt
    # Updates the state of a charge attempt for transactions created with a processor linked to the invoking web app, returning the specified charge attempt.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_charge_attempt_update [PaymentAppChargeAttemptUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [ChargeAttempt]
    def patch_payment_web_apps_charge_attempts_id(id, space, payment_app_charge_attempt_update, opts = {})
      data, _status_code, _headers = patch_payment_web_apps_charge_attempts_id_with_http_info(id, space, payment_app_charge_attempt_update, opts)
      data
    end

    # Update a charge attempt
    # Updates the state of a charge attempt for transactions created with a processor linked to the invoking web app, returning the specified charge attempt.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_charge_attempt_update [PaymentAppChargeAttemptUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(ChargeAttempt, Integer, Hash)>] ChargeAttempt data, response status code and response headers
    def patch_payment_web_apps_charge_attempts_id_with_http_info(id, space, payment_app_charge_attempt_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.patch_payment_web_apps_charge_attempts_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentWebAppsService.patch_payment_web_apps_charge_attempts_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.patch_payment_web_apps_charge_attempts_id"
      end
      # verify the required parameter 'payment_app_charge_attempt_update' is set
      if @api_client.config.client_side_validation && payment_app_charge_attempt_update.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_charge_attempt_update' when calling PaymentWebAppsService.patch_payment_web_apps_charge_attempts_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/charge-attempts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_charge_attempt_update)

      # return_type
      return_type = opts[:debug_return_type] || 'ChargeAttempt'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.patch_payment_web_apps_charge_attempts_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#patch_payment_web_apps_charge_attempts_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a completion
    # Updates the state of a completion for transactions created with a processor linked to the invoking web app, returning the specified completion.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_completion_update [PaymentAppCompletionUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionCompletion]
    def patch_payment_web_apps_completions_id(id, space, payment_app_completion_update, opts = {})
      data, _status_code, _headers = patch_payment_web_apps_completions_id_with_http_info(id, space, payment_app_completion_update, opts)
      data
    end

    # Update a completion
    # Updates the state of a completion for transactions created with a processor linked to the invoking web app, returning the specified completion.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_completion_update [PaymentAppCompletionUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionCompletion, Integer, Hash)>] TransactionCompletion data, response status code and response headers
    def patch_payment_web_apps_completions_id_with_http_info(id, space, payment_app_completion_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.patch_payment_web_apps_completions_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentWebAppsService.patch_payment_web_apps_completions_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.patch_payment_web_apps_completions_id"
      end
      # verify the required parameter 'payment_app_completion_update' is set
      if @api_client.config.client_side_validation && payment_app_completion_update.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_completion_update' when calling PaymentWebAppsService.patch_payment_web_apps_completions_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/completions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_completion_update)

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionCompletion'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.patch_payment_web_apps_completions_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#patch_payment_web_apps_completions_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a connector
    # @param connector_external_id [String] The unique identifier assigned during connector&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_connector_details [PaymentAppConnectorDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentAppConnector]
    def patch_payment_web_apps_connectors_connector_external_id(connector_external_id, space, payment_app_connector_details, opts = {})
      data, _status_code, _headers = patch_payment_web_apps_connectors_connector_external_id_with_http_info(connector_external_id, space, payment_app_connector_details, opts)
      data
    end

    # Update a connector

    # @param connector_external_id [String] The unique identifier assigned during connector&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_connector_details [PaymentAppConnectorDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentAppConnector, Integer, Hash)>] PaymentAppConnector data, response status code and response headers
    def patch_payment_web_apps_connectors_connector_external_id_with_http_info(connector_external_id, space, payment_app_connector_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.patch_payment_web_apps_connectors_connector_external_id ...'
      end
      # verify the required parameter 'connector_external_id' is set
      if @api_client.config.client_side_validation && connector_external_id.nil?
        fail ArgumentError, "Missing the required parameter 'connector_external_id' when calling PaymentWebAppsService.patch_payment_web_apps_connectors_connector_external_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.patch_payment_web_apps_connectors_connector_external_id"
      end
      # verify the required parameter 'payment_app_connector_details' is set
      if @api_client.config.client_side_validation && payment_app_connector_details.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_connector_details' when calling PaymentWebAppsService.patch_payment_web_apps_connectors_connector_external_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/connectors/{connectorExternalId}'.sub('{' + 'connectorExternalId' + '}', CGI.escape(connector_external_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_connector_details)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentAppConnector'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.patch_payment_web_apps_connectors_connector_external_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#patch_payment_web_apps_connectors_connector_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a processor
    # @param external_id [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_processor_details [PaymentAppProcessorDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentAppProcessor]
    def patch_payment_web_apps_processors_external_id(external_id, space, payment_app_processor_details, opts = {})
      data, _status_code, _headers = patch_payment_web_apps_processors_external_id_with_http_info(external_id, space, payment_app_processor_details, opts)
      data
    end

    # Update a processor

    # @param external_id [String] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_processor_details [PaymentAppProcessorDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentAppProcessor, Integer, Hash)>] PaymentAppProcessor data, response status code and response headers
    def patch_payment_web_apps_processors_external_id_with_http_info(external_id, space, payment_app_processor_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.patch_payment_web_apps_processors_external_id ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppsService.patch_payment_web_apps_processors_external_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.patch_payment_web_apps_processors_external_id"
      end
      # verify the required parameter 'payment_app_processor_details' is set
      if @api_client.config.client_side_validation && payment_app_processor_details.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_processor_details' when calling PaymentWebAppsService.patch_payment_web_apps_processors_external_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/processors/{externalId}'.sub('{' + 'externalId' + '}', CGI.escape(external_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_processor_details)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentAppProcessor'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.patch_payment_web_apps_processors_external_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#patch_payment_web_apps_processors_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a refund
    # Updates the state of a refund for transactions created with a processor linked to the invoking web app, returning the specified refund.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_refund_update [PaymentAppRefundUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Refund]
    def patch_payment_web_apps_refunds_id(id, space, payment_app_refund_update, opts = {})
      data, _status_code, _headers = patch_payment_web_apps_refunds_id_with_http_info(id, space, payment_app_refund_update, opts)
      data
    end

    # Update a refund
    # Updates the state of a refund for transactions created with a processor linked to the invoking web app, returning the specified refund.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_refund_update [PaymentAppRefundUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(Refund, Integer, Hash)>] Refund data, response status code and response headers
    def patch_payment_web_apps_refunds_id_with_http_info(id, space, payment_app_refund_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.patch_payment_web_apps_refunds_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentWebAppsService.patch_payment_web_apps_refunds_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.patch_payment_web_apps_refunds_id"
      end
      # verify the required parameter 'payment_app_refund_update' is set
      if @api_client.config.client_side_validation && payment_app_refund_update.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_refund_update' when calling PaymentWebAppsService.patch_payment_web_apps_refunds_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/refunds/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_refund_update)

      # return_type
      return_type = opts[:debug_return_type] || 'Refund'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.patch_payment_web_apps_refunds_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#patch_payment_web_apps_refunds_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Update a void
    # Updates the state of a void for transactions created with a processor linked to the invoking web app, returning the specified void.
    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_void_update [PaymentAppVoidUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [TransactionVoid]
    def patch_payment_web_apps_voids_id(id, space, payment_app_void_update, opts = {})
      data, _status_code, _headers = patch_payment_web_apps_voids_id_with_http_info(id, space, payment_app_void_update, opts)
      data
    end

    # Update a void
    # Updates the state of a void for transactions created with a processor linked to the invoking web app, returning the specified void.

    # @param id [Integer] 
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_void_update [PaymentAppVoidUpdate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(TransactionVoid, Integer, Hash)>] TransactionVoid data, response status code and response headers
    def patch_payment_web_apps_voids_id_with_http_info(id, space, payment_app_void_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.patch_payment_web_apps_voids_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentWebAppsService.patch_payment_web_apps_voids_id"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.patch_payment_web_apps_voids_id"
      end
      # verify the required parameter 'payment_app_void_update' is set
      if @api_client.config.client_side_validation && payment_app_void_update.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_void_update' when calling PaymentWebAppsService.patch_payment_web_apps_voids_id"
      end
      # resource path
      local_var_path = '/payment/web-apps/voids/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_void_update)

      # return_type
      return_type = opts[:debug_return_type] || 'TransactionVoid'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.patch_payment_web_apps_voids_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#patch_payment_web_apps_voids_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a processor
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_processor_details_create [PaymentAppProcessorDetailsCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentAppProcessor]
    def post_payment_web_apps_processors(space, payment_app_processor_details_create, opts = {})
      data, _status_code, _headers = post_payment_web_apps_processors_with_http_info(space, payment_app_processor_details_create, opts)
      data
    end

    # Create a processor

    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_processor_details_create [PaymentAppProcessorDetailsCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentAppProcessor, Integer, Hash)>] PaymentAppProcessor data, response status code and response headers
    def post_payment_web_apps_processors_with_http_info(space, payment_app_processor_details_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.post_payment_web_apps_processors ...'
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.post_payment_web_apps_processors"
      end
      # verify the required parameter 'payment_app_processor_details_create' is set
      if @api_client.config.client_side_validation && payment_app_processor_details_create.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_processor_details_create' when calling PaymentWebAppsService.post_payment_web_apps_processors"
      end
      # resource path
      local_var_path = '/payment/web-apps/processors'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_processor_details_create)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentAppProcessor'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.post_payment_web_apps_processors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#post_payment_web_apps_processors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Activate a processor for production
    # @param external_id [String] The unique identifier assigned during processor&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentAppProcessor]
    def post_payment_web_apps_processors_external_id_activate_for_production(external_id, space, opts = {})
      data, _status_code, _headers = post_payment_web_apps_processors_external_id_activate_for_production_with_http_info(external_id, space, opts)
      data
    end

    # Activate a processor for production

    # @param external_id [String] The unique identifier assigned during processor&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentAppProcessor, Integer, Hash)>] PaymentAppProcessor data, response status code and response headers
    def post_payment_web_apps_processors_external_id_activate_for_production_with_http_info(external_id, space, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.post_payment_web_apps_processors_external_id_activate_for_production ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppsService.post_payment_web_apps_processors_external_id_activate_for_production"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.post_payment_web_apps_processors_external_id_activate_for_production"
      end
      # resource path
      local_var_path = '/payment/web-apps/processors/{externalId}/activate-for-production'.sub('{' + 'externalId' + '}', CGI.escape(external_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentAppProcessor'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.post_payment_web_apps_processors_external_id_activate_for_production",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#post_payment_web_apps_processors_external_id_activate_for_production\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create a connector
    # @param external_id [String] The unique identifier assigned during processor&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_connector_details_create [PaymentAppConnectorDetailsCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [PaymentAppConnector]
    def post_payment_web_apps_processors_external_id_connectors(external_id, space, payment_app_connector_details_create, opts = {})
      data, _status_code, _headers = post_payment_web_apps_processors_external_id_connectors_with_http_info(external_id, space, payment_app_connector_details_create, opts)
      data
    end

    # Create a connector

    # @param external_id [String] The unique identifier assigned during processor&#39;s creation.
    # @param space [Integer] Specifies the ID of the space the operation should be executed in.
    # @param payment_app_connector_details_create [PaymentAppConnectorDetailsCreate] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand 
    # @return [Array<(PaymentAppConnector, Integer, Hash)>] PaymentAppConnector data, response status code and response headers
    def post_payment_web_apps_processors_external_id_connectors_with_http_info(external_id, space, payment_app_connector_details_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentWebAppsService.post_payment_web_apps_processors_external_id_connectors ...'
      end
      # verify the required parameter 'external_id' is set
      if @api_client.config.client_side_validation && external_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_id' when calling PaymentWebAppsService.post_payment_web_apps_processors_external_id_connectors"
      end
      # verify the required parameter 'space' is set
      if @api_client.config.client_side_validation && space.nil?
        fail ArgumentError, "Missing the required parameter 'space' when calling PaymentWebAppsService.post_payment_web_apps_processors_external_id_connectors"
      end
      # verify the required parameter 'payment_app_connector_details_create' is set
      if @api_client.config.client_side_validation && payment_app_connector_details_create.nil?
        fail ArgumentError, "Missing the required parameter 'payment_app_connector_details_create' when calling PaymentWebAppsService.post_payment_web_apps_processors_external_id_connectors"
      end
      # resource path
      local_var_path = '/payment/web-apps/processors/{externalId}/connectors'.sub('{' + 'externalId' + '}', CGI.escape(external_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_app_connector_details_create)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentAppConnector'

      new_options = opts.merge(
        :operation => :"PaymentWebAppsService.post_payment_web_apps_processors_external_id_connectors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentWebAppsService#post_payment_web_apps_processors_external_id_connectors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
