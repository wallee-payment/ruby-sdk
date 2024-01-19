require 'base64'
require 'openssl'

module Wallee
  class EncryptionUtil
    def self.is_content_valid(content, signature, public_key, encryption_algorithm)
      algorithm_class = get_algorithm_class(encryption_algorithm)
      raise "Unsupported algorithm: #{encryption_algorithm}" if algorithm_class.nil?

      begin
        signature = Base64.decode64(signature)
      rescue ArgumentError
        raise 'Invalid signature value format'
      end

      begin
        public_key_bytes = Base64.decode64(public_key)
      rescue ArgumentError
        raise 'Invalid public key value format'
      end

      public_key = OpenSSL::PKey.read(public_key_bytes)

      begin
        public_key.verify(OpenSSL::Digest::SHA256.new, signature, content)
        return true
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