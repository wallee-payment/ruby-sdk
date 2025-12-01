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

# The `ErrorCode` module defines potential error codes that may be raised by the Wallee SDK.
#
# ## Error Code Ranges:
# - **1000–1999**: Client-side errors – typically due to invalid input (e.g., malformed headers, bad keys).
# - **2000–2999**: Server-side errors – typically due to incorrect data provided by the server.
# - **404**: Not Found – used when an endpoint returns an empty response.
#
module ErrorCode
  # 404
  UNKNOWN_WEBHOOK_ENCRYPTION_PUBLIC_KEY = { code: 404, description: "Unknown webhook signature public key" }

  # 1000–1999
  WEBHOOK_ENCRYPTION_GENERAL_ERROR = { code: 1000, description: "General webhook encryption error" }
  INVALID_WEBHOOK_ENCRYPTION_PUBLIC_KEY = { code: 1001, description: "Invalid webhook signature public key" }
  INVALID_WEBHOOK_ENCRYPTION_HEADER_FORMAT = { code: 1002, description: "Invalid webhook signature header" }
  UNSUPPORTED_WEBHOOK_ENCRYPTION_ALGORYTHM = { code: 1003, description: "Unsupported webhook signature algorithm" }
  UNKNOWN_WEBHOOK_ENCRYPTION_PROVIDER = { code: 1004, description: "Unknown webhook encryption provider" }
  WEBHOOK_ENCRYPTION_VERIFIER_INIT_ERROR = { code: 1005, description: "Encryption verifier initialization error" }
  WEBHOOK_ENCRYPTION_VERIFIER_CONTENT_UPDATE_ERROR = { code: 1006, description: "Error during content update in encryption verifier" }
  WEBHOOK_ENCRYPTION_SIGNATURE_VERIFICATION_FAILED = { code: 1007, description: "Encryption signature verification failed" }
  INVALID_WEBHOOK_ENCRYPTION_CONTENT_SIGNATURE = { code: 1008, description: "Invalid webhook content signature" }

  # 2000–2999
  MISSING_WEBHOOK_ENCRYPTION_ALGORYTHM = { code: 2000, description: "Missing webhook signature algorithm value" }

  def self.to_s(error)
    "#{error[:code]}: #{error[:description]}"
  end
end

class WalleeSdkException < StandardError
  attr_reader :code

  def initialize(code, message)
    @code = code
    full_message = "Error code: #{code[:code]}. #{message}"
    super(full_message)
  end
end
