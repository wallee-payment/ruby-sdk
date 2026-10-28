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
  class BoardingSubscriptionStrategyService
    attr_accessor :api_client


    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a boarding subscription information for an account
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param boarding_strategy_information_request [BoardingStrategyInformationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [BoardingStrategyInformationRequest]
    def post_boarding_subscription_strategy_information(account, boarding_strategy_information_request, opts = {})
      data, _status_code, _headers = post_boarding_subscription_strategy_information_with_http_info(account, boarding_strategy_information_request, opts)
      data
    end

    # Create a boarding subscription information for an account

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param boarding_strategy_information_request [BoardingStrategyInformationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardingStrategyInformationRequest, Integer, Hash)>] BoardingStrategyInformationRequest data, response status code and response headers
    def post_boarding_subscription_strategy_information_with_http_info(account, boarding_strategy_information_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_information ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_information"
      end
      # verify the required parameter 'boarding_strategy_information_request' is set
      if @api_client.config.client_side_validation && boarding_strategy_information_request.nil?
        fail ArgumentError, "Missing the required parameter 'boarding_strategy_information_request' when calling BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_information"
      end
      # resource path
      local_var_path = '/boarding/subscription-strategy/information'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(boarding_strategy_information_request)

      # return_type
      return_type = opts[:debug_return_type] || 'BoardingStrategyInformationRequest'

      new_options = opts.merge(
        :operation => :"BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_information",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardingSubscriptionStrategyService#post_boarding_subscription_strategy_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end


    # Create new Boarding Trial Subscription to Account
    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param store_trial_subscription_request_setter [StoreTrialSubscriptionRequestSetter] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_boarding_subscription_strategy_plans(account, store_trial_subscription_request_setter, opts = {})
      post_boarding_subscription_strategy_plans_with_http_info(account, store_trial_subscription_request_setter, opts)
      nil
    end

    # Create new Boarding Trial Subscription to Account

    # @param account [Integer] Specifies the ID of the account the operation should be executed in.
    # @param store_trial_subscription_request_setter [StoreTrialSubscriptionRequestSetter] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_boarding_subscription_strategy_plans_with_http_info(account, store_trial_subscription_request_setter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_plans ...'
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_plans"
      end
      # verify the required parameter 'store_trial_subscription_request_setter' is set
      if @api_client.config.client_side_validation && store_trial_subscription_request_setter.nil?
        fail ArgumentError, "Missing the required parameter 'store_trial_subscription_request_setter' when calling BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_plans"
      end
      # resource path
      local_var_path = '/boarding/subscription-strategy/plans'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(store_trial_subscription_request_setter)

      # return_type
      return_type = opts[:debug_return_type]

      new_options = opts.merge(
        :operation => :"BoardingSubscriptionStrategyService.post_boarding_subscription_strategy_plans",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST.to_sym.downcase, local_var_path, new_options, connection_timeout)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardingSubscriptionStrategyService#post_boarding_subscription_strategy_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}\nConnection Timeout: #{connection_timeout}"
      end
      return data, status_code, headers
    end

  end
end
