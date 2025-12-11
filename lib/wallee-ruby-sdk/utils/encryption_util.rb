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

require 'base64'
require 'openssl'

module WalleeRubySdk
  class EncryptionUtil
    def self.is_content_valid(content, signature, public_key, encryption_algorithm)

      if encryption_algorithm.nil? || encryption_algorithm.empty?
        raise WalleeSdkException.new(
          SdkExceptionErrorCodes::MISSING_WEBHOOK_ENCRYPTION_ALGORYTHM,
          "Webhook signature algorithm was not provided"
        )
      end

      algorithm_class = get_algorithm_class(encryption_algorithm)
      if algorithm_class.nil?
        raise WalleeSdkException.new(SdkExceptionErrorCodes::UNSUPPORTED_WEBHOOK_ENCRYPTION_ALGORYTHM,
          "Unsupported webhook signature algorithm: '#{encryption_algorithm}'. " \
          "This may indicate that the REST API is using a new encryption algorithm for webhooks. " \
          "Please check whether a newer version of the SDK is available.")
      end

      begin
        signature = Base64.decode64(signature)
      rescue ArgumentError
        raise WalleeSdkException.new(SdkExceptionErrorCodes::INVALID_WEBHOOK_ENCRYPTION_CONTENT_SIGNATURE, 'Invalid signature value format')
      end

      begin
        public_key_bytes = Base64.decode64(public_key)
      rescue ArgumentError
        raise WalleeSdkException.new(SdkExceptionErrorCodes::INVALID_WEBHOOK_ENCRYPTION_PUBLIC_KEY, 'Invalid public key value format')
      end

      begin
        public_key = OpenSSL::PKey.read(public_key_bytes)
      rescue OpenSSL::PKey::PKeyError
        raise WalleeSdkException.new(
            SdkExceptionErrorCodes::INVALID_WEBHOOK_ENCRYPTION_PUBLIC_KEY,
            'Invalid public key: unsupported or unparseable format'
            )
      end

      begin
        return public_key.verify(OpenSSL::Digest::SHA256.new, signature, content)
      rescue OpenSSL::PKey::PKeyError, OpenSSL::PKey::ECError, OpenSSL::PKey::EC::Point::Error
        return false
      end
    end

    def self.get_algorithm_class(algorithm)
      case algorithm
      when 'SHA256withECDSA'
        OpenSSL::PKey::EC
      else
        nil
      end
    end
  end
end