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

# wallee encryption util tests
class EncryptionUtilTest < Test::Unit::TestCase

  def setup
    @@valid_content_to_verify =
    '{"entityId":11,"eventId":35,"listenerEntityId":1472041829003,"listenerEntityTechnicalName":"Transaction","spaceId":1,"state":"PROCESSING","timestamp":"2023-12-19T13:43:35+0000","webhookListenerId":2}'

    @@valid_content_signature =
    "MEYCIQCTzbMrMsOAC6T57T9kQTb1iGZVg2R7n6pY9A4ML4P31gIhAIOoav8cG8x0jpRWQztqSJIC8gXWKq+4DuENEySvmMYf"

    @@valid_encoded_publickey =
    "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEdWq7ZBGsjUzhBO3e6mzUBLpjpV3TQw1bL1rk3ocjn5C5qne7TY0OBBhiWgaPtWlvUcqASz903vtfeSTQma+SBA=="

    @@signature_algorithm = "SHA256withECDSA"
  end

  description "should return true for valid content, signature, and public key"
  def test_valid_content
    is_content_valid = WalleeRubySdk::EncryptionUtil.is_content_valid(
        @@valid_content_to_verify, @@valid_content_signature,
        @@valid_encoded_publickey, @@signature_algorithm)

    assert_true(is_content_valid, "Signature check must pass")
  end

  description "should return false when the content does not correspond to the signature"
  def test_invalid_content
    invalid_content = 'ModifiedContent'

    is_content_valid = WalleeRubySdk::EncryptionUtil.is_content_valid(
        invalid_content, @@valid_content_signature,
        @@valid_encoded_publickey, @@signature_algorithm)

    assert_false(is_content_valid, "Signature check must fail")
  end

  description "should return an error for invalid signature in the plain text format"
  def test_invalid_signature
    invalid_signature = 'InvalidModifiedSignature'

    is_content_valid = WalleeRubySdk::EncryptionUtil.is_content_valid(
        @@valid_content_to_verify, invalid_signature,
        @@valid_encoded_publickey, @@signature_algorithm)

    assert_false(is_content_valid, "Signature check must fail")
  end

  description "should return false for invalid signature in the Base64 format"
  def test_invalid_signature_in_base64
    invalid_signature = "MEYCIQCTzbMrMsDAC6T57T9kQTb1iGZVg2R7n6pY9A4ML4P31gIhAIOoav8cG8x0jpRWQztqSJIC8gXWKq";

    is_content_valid = WalleeRubySdk::EncryptionUtil.is_content_valid(
        @@valid_content_to_verify, invalid_signature,
        @@valid_encoded_publickey, @@signature_algorithm)

    assert_false(is_content_valid, "Signature check must fail")
  end

  description "should return an error for invalid public key in the plain text format"
  def test_invalid_public_key
    invalid_public_key = "InvalidModifiedPublicKey";

    assert_raise_kind_of(WalleeSdkException) do
        WalleeRubySdk::EncryptionUtil.is_content_valid(
            @@valid_content_to_verify, @@valid_content_signature,
            invalid_public_key, @@signature_algorithm)
    end
  end

  description "should return an error for invalid public key in the Base64 format"
  def test_invalid_public_key_in_base64
    invalid_public_key = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEdWq7ZBGsjUzhBO3e6mzUBLpjpV3TQw1bL1rk3ocjn5C5qne7TY0OBBhiWgaPtWlvUcqASz903vtfeSTQm";

    assert_raise_kind_of(WalleeSdkException) do
        WalleeRubySdk::EncryptionUtil.is_content_valid(
            @@valid_content_to_verify, @@valid_content_signature,
            invalid_public_key, @@signature_algorithm)
    end
  end

end
