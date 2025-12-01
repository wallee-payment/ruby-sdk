# frozen_string_literal: true

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

require "test/unit"
require 'wallee-ruby-sdk'

require_relative "constants.rb"

# wallee webhook listeners service tests
class WebhookListenersServiceTest < Test::Unit::TestCase
  WEBHOOK_LISTENER_NAME = 'Ruby Mock UnitTest Webhook Listener'
  WEBHOOK_LISTENER_ENTITY_ID = 1472041829003

  def setup
    @webhook_listeners_service =   WalleeRubySdk::WebhookListenersService.new
    @webhook_urls_service =   WalleeRubySdk::WebhookURLsService.new
  end

  # create_and_delete_webhook_listener() should create and delete webhook listener
  def test_create_and_delete_webhook_listener
    opts = {
      limit: 1,
      expand: %w[url group],
      order: 'id:DESC',
      query: 'name:"Webhook Test URL Listener" AND state:INACTIVE'
    }
    webhook_urls_search_response = @webhook_urls_service.get_webhooks_urls_search(SPACE_ID, opts)
    assert_equal(1, webhook_urls_search_response.data.count, "Should find one webhook URL")

    webhook_url_id = webhook_urls_search_response.data.first.id
    post_request = private_webhook_listener_create(webhook_url_id)

    post_response = @webhook_listeners_service.post_webhooks_listeners(SPACE_ID, post_request, opts)

    assert_equal(WEBHOOK_LISTENER_NAME, post_response.name, "POST Webhook Listener Name should match.")
    assert_equal(WEBHOOK_LISTENER_ENTITY_ID, post_response.entity, "Entity id should be match")
    assert_equal(webhook_url_id, post_response.url.id, "Webhook URL ID should match")

    @webhook_listeners_service.delete_webhooks_listeners_id(post_response.id, SPACE_ID)
    deleted_response = @webhook_listeners_service.get_webhooks_listeners_id(post_response.id, SPACE_ID, opts)

    assert_equal(post_response.id, deleted_response.id, "Ids should match")
    assert_equal(SPACE_ID.to_i, deleted_response.linked_space_id, "Space ID should match")
    assert_equal(WEBHOOK_LISTENER_NAME, deleted_response.name, "Name should match")
    assert_equal(  WalleeRubySdk::CreationEntityState::DELETED, deleted_response.state, "State should be DELETED")
  end

  # get_webhooks_listeners_search_without_custom_timeout() should search webhook listener - no custom timeout
  def test_get_webhooks_listeners_search_without_custom_timeout
    opts = {
      limit: 1,
      expand: %w[url group],
      order: 'id:DESC',
      query: 'name:Test AND state:INACTIVE'
    }
    search_response = @webhook_listeners_service.get_webhooks_listeners_search(SPACE_ID, opts)

    assert_equal(1, search_response.data.count, "Should find one webhook listener")

    search_response.data.each do |webhook_listener|
      assert_equal SPACE_ID.to_i, webhook_listener.linked_space_id,
                   "Expected Webhook Listener Space ID #{webhook_listener.linked_space_id} to equal #{SPACE_ID}"
      assert_equal "Test", webhook_listener.name,
                   "Expected Webhook Listener Name #{webhook_listener.name} to equal #{"Test"}"
      assert_equal   WalleeRubySdk::CreationEntityState::INACTIVE, webhook_listener.state,
                   "Expected Webhook Listener State #{webhook_listener.state} to equal #{   WalleeRubySdk::CreationEntityState::INACTIVE}"
    end
  end

  # get_webhooks_listeners_search_with_custom_timeout() should search webhook listener with custom timeout: 36 seconds
  def test_get_webhooks_listeners_search_with_custom_timeout
    # Unlike a global static approach, the `Configuration.new` method creates independent instances,
    # allowing for configuration flexibility and avoiding shared state across the application.
    config_with_timeout =   WalleeRubySdk::Configuration.new do |c|
      c.user_id = TEST_USER_ID
      c.authentication_key = TEST_AUTHENTICATION_KEY
      c.timeout = 36
    end
    api_client_with_timeout =   WalleeRubySdk::ApiClient::new(config_with_timeout)
    webhook_listener_service_with_timeout =   WalleeRubySdk::WebhookListenersService.new(api_client_with_timeout)

    opts = {
      limit: 1,
      expand: %w[url group],
      order: 'id:DESC',
      query: 'name:Test AND state:INACTIVE'
    }
    search_response = webhook_listener_service_with_timeout.get_webhooks_listeners_search(SPACE_ID, opts)

    assert_equal(1, search_response.data.count,
                 "Should find one webhook listener with timeout: #{config_with_timeout.timeout} seconds")

    search_response.data.each do |webhook_listener|
      assert_equal SPACE_ID.to_i, webhook_listener.linked_space_id,
                   "Expected Webhook Listener Space ID #{webhook_listener.linked_space_id} to equal #{SPACE_ID}"
      assert_equal "Test", webhook_listener.name,
                   "Expected Webhook Listener Name #{webhook_listener.name} to equal #{"Test"}"
      assert_equal   WalleeRubySdk::CreationEntityState::INACTIVE, webhook_listener.state,
                   "Expected Webhook Listener State #{webhook_listener.state} to equal #{   WalleeRubySdk::CreationEntityState::INACTIVE}"
    end
  end

  private
  def private_webhook_listener_create(webhook_url_id)
      WalleeRubySdk::WebhookListenerCreate.new(
      {
        name: WEBHOOK_LISTENER_NAME,
        state:   WalleeRubySdk::CreationEntityState::ACTIVE,
        entity: WEBHOOK_LISTENER_ENTITY_ID,
        url: webhook_url_id
      })
  end
end