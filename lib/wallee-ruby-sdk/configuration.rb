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

module WalleeRubySdk
  class Configuration
    # Defines url scheme
    attr_accessor :scheme

    # Defines url host
    attr_accessor :host

    # Defines url base path
    attr_accessor :base_path

    # Define server configuration index
    attr_accessor :server_index

    # Define server operation configuration index
    attr_accessor :server_operation_index

    # Default server variables
    attr_accessor :server_variables

    # Default server operation variables
    attr_accessor :server_operation_variables

    # Defines the user_id used for request authentication.
    #
    # @return [String]
    attr_accessor :user_id

    # Defines the authentication_key used for request authentication.
    #
    # @return [String]
    attr_accessor :authentication_key

    # Set this to return data as binary instead of downloading a temp file. When enabled (set to true)
    # HTTP responses with return type `File` will be returned as a stream of binary data.
    # Default to false.
    attr_accessor :return_binary_data

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Set this to ignore operation servers for the API client. This is useful when you need to
    # send requests to a different server than the one specified in the OpenAPI document.
    # Will default to the base url defined in the spec but can be overridden by setting
    # `scheme`, `host`, `base_path` directly.
    # Default to false.
    # @return [true, false]
    attr_accessor :ignore_operation_servers

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # The time limit for HTTP request in seconds.
    # Default to .
    attr_accessor :timeout

    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :ssl_verify

    ### TLS/SSL setting
    # Any `OpenSSL::SSL::` constant (see https://ruby-doc.org/stdlib-2.5.1/libdoc/openssl/rdoc/OpenSSL/SSL.html)
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    attr_accessor :ssl_verify_mode

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    attr_accessor :ssl_ca_file

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :ssl_client_cert

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :ssl_client_key

    ### Proxy setting
    # HTTP Proxy settings
    attr_accessor :proxy

    # Set this to customize parameters encoder of array parameter.
    # Default to nil. Faraday uses NestedParamsEncoder when nil.
    #
    # @see The params_encoder option of Faraday. Related source code:
    # https://github.com/lostisland/faraday/tree/main/lib/faraday/encoders
    attr_accessor :params_encoder


    attr_accessor :inject_format

    attr_accessor :force_ending_format

    attr_accessor :default_headers

    def initialize(default_headers = {})
      @scheme = 'https'
      @host = 'app-wallee.com'
      @base_path = '/api/v2.0'
      @server_index = nil
      @server_operation_index = {}
      @server_variables = {}
      @server_operation_variables = {}
      @client_side_validation = true
      @ssl_verify = true
      @ssl_verify_mode = nil
      @ssl_ca_file = nil
      @ssl_client_cert = nil
      @ssl_client_key = nil
      @middlewares = Hash.new { |h, k| h[k] = [] }
      @configure_connection_blocks = []
      @timeout = 25
      # return data as binary instead of file
      @return_binary_data = false
      @params_encoder = nil
      @debugging = false
      @ignore_operation_servers = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
      @default_headers = default_headers
      @user_id = ''
      @authentication_key = ''

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      # remove :// from scheme
      @scheme = scheme.sub(/:\/\//, '')
    end

    def host=(host)
      # remove http(s):// and anything after a slash
      @host = host.sub(/https?:\/\//, '').split('/').first
    end

    def base_path=(base_path)
      # Add leading and trailing slashes to base_path
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    # Returns base URL for specified operation based on server settings
    def base_url(operation = nil)
      return "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') if ignore_operation_servers
      if operation_server_settings.key?(operation) then
        index = server_operation_index.fetch(operation, server_index)
        server_url(index.nil? ? 0 : index, server_operation_variables.fetch(operation, server_variables), operation_server_settings[operation])
      else
        server_index.nil? ? "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '') : server_url(server_index, server_variables, nil)
      end
    end

    # Returns an array of Server setting
    def server_settings
      [
        {
          url: "https://app-wallee.com/api/v2.0",
          description: "No description provided",
        }
      ]
    end

    def operation_server_settings
      {
      }
    end

    # Returns URL based on server settings
    #
    # @param index array index of the server settings
    # @param variables hash of variable and the corresponding value
    def server_url(index, variables = {}, servers = nil)
      servers = server_settings if servers == nil

      # check array index out of bound
      if (index.nil? || index < 0 || index >= servers.size)
        fail ArgumentError, "Invalid index #{index} when selecting the server. Must not be nil and must be less than #{servers.size}"
      end

      server = servers[index]
      url = server[:url]

      return url unless server.key? :variables

      # go through variable and assign a value
      server[:variables].each do |name, variable|
        if variables.key?(name)
          if (!server[:variables][name].key?(:enum_values) || server[:variables][name][:enum_values].include?(variables[name]))
            url.gsub! "{" + name.to_s + "}", variables[name]
          else
            fail ArgumentError, "The variable `#{name}` in the server URL has invalid value #{variables[name]}. Must be #{server[:variables][name][:enum_values]}."
          end
        else
          # use default value
          url.gsub! "{" + name.to_s + "}", server[:variables][name][:default_value]
        end
      end

      url
    end

    # Configure Faraday connection directly.
    #
    # ```
    # c.configure_faraday_connection do |conn|
    #   conn.use Faraday::HttpCache, shared_cache: false, logger: logger
    #   conn.response :logger, nil, headers: true, bodies: true, log_level: :debug do |logger|
    #     logger.filter(/(Authorization: )(.*)/, '\1[REDACTED]')
    #   end
    # end
    #
    # c.configure_faraday_connection do |conn|
    #   conn.adapter :typhoeus
    # end
    # ```
    #
    # @param block [Proc] `#call`able object that takes one arg, the connection
    def configure_faraday_connection(&block)
      @configure_connection_blocks << block
    end

    def configure_connection(conn)
      @configure_connection_blocks.each do |block|
        block.call(conn)
      end
    end

    # Adds middleware to the stack
    def use(*middleware)
      set_faraday_middleware(:use, *middleware)
    end

    # Adds request middleware to the stack
    def request(*middleware)
      set_faraday_middleware(:request, *middleware)
    end

    # Adds response middleware to the stack
    def response(*middleware)
      set_faraday_middleware(:response, *middleware)
    end

    # Adds Faraday middleware setting information to the stack
    #
    # @example Use the `set_faraday_middleware` method to set middleware information
    #   config.set_faraday_middleware(:request, :retry, max: 3, methods: [:get, :post], retry_statuses: [503])
    #   config.set_faraday_middleware(:response, :logger, nil, { bodies: true, log_level: :debug })
    #   config.set_faraday_middleware(:use, Faraday::HttpCache, store: Rails.cache, shared_cache: false)
    #   config.set_faraday_middleware(:insert, 0, FaradayMiddleware::FollowRedirects, { standards_compliant: true, limit: 1 })
    #   config.set_faraday_middleware(:swap, 0, Faraday::Response::Logger)
    #   config.set_faraday_middleware(:delete, Faraday::Multipart::Middleware)
    #
    # @see https://github.com/lostisland/faraday/blob/v2.3.0/lib/faraday/rack_builder.rb#L92-L143
    def set_faraday_middleware(operation, key, *args, &block)
      unless [:request, :response, :use, :insert, :insert_before, :insert_after, :swap, :delete].include?(operation)
        fail ArgumentError, "Invalid faraday middleware operation #{operation}. Must be" \
                            " :request, :response, :use, :insert, :insert_before, :insert_after, :swap or :delete."
      end

      @middlewares[operation] << [key, args, block]
    end
    ruby2_keywords(:set_faraday_middleware) if respond_to?(:ruby2_keywords, true)

    # Set up middleware on the connection
    def configure_middleware(connection)
      return if @middlewares.empty?

      [:request, :response, :use, :insert, :insert_before, :insert_after, :swap].each do |operation|
        next unless @middlewares.key?(operation)

        @middlewares[operation].each do |key, args, block|
          connection.builder.send(operation, key, *args, &block)
        end
      end

      if @middlewares.key?(:delete)
        @middlewares[:delete].each do |key, _args, _block|
          connection.builder.delete(key)
        end
      end
    end
  end
end
