# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.PlayIntegrity.V1.Model.RequestDetails do
  @moduledoc """
  Contains the integrity request information.

  ## Attributes

  *   `nonce` (*type:* `String.t`, *default:* `nil`) - Required. Nonce that was provided in the request (which is base64 web-safe no-wrap).
  *   `requestPackageName` (*type:* `String.t`, *default:* `nil`) - Required. Application package name this attestation was requested for. Note: This field makes no guarantees or promises on the caller integrity. For details on application integrity, check application_integrity.
  *   `timestampMillis` (*type:* `String.t`, *default:* `nil`) - Required. Timestamp, in milliseconds, of the integrity application request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nonce => String.t() | nil,
          :requestPackageName => String.t() | nil,
          :timestampMillis => String.t() | nil
        }

  field(:nonce)
  field(:requestPackageName)
  field(:timestampMillis)
end

defimpl Poison.Decoder, for: GoogleApi.PlayIntegrity.V1.Model.RequestDetails do
  def decode(value, options) do
    GoogleApi.PlayIntegrity.V1.Model.RequestDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayIntegrity.V1.Model.RequestDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
