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

defmodule GoogleApi.ServiceControl.V2.Model.Response do
  @moduledoc """
  This message defines attributes for a typical network response. It generally models semantics of an HTTP response.

  ## Attributes

  *   `backendLatency` (*type:* `String.t`, *default:* `nil`) - The length of time it takes the backend service to fully respond to a request. Measured from when the destination service starts to send the request to the backend until when the destination service receives the complete response from the backend.
  *   `code` (*type:* `String.t`, *default:* `nil`) - The HTTP response status code, such as `200` and `404`.
  *   `headers` (*type:* `map()`, *default:* `nil`) - The HTTP response headers. If multiple headers share the same key, they must be merged according to HTTP spec. All header keys must be lowercased, because HTTP header keys are case-insensitive.
  *   `size` (*type:* `String.t`, *default:* `nil`) - The HTTP response size in bytes. If unknown, it must be -1.
  *   `time` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the `destination` service sends the last byte of the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendLatency => String.t() | nil,
          :code => String.t() | nil,
          :headers => map() | nil,
          :size => String.t() | nil,
          :time => DateTime.t() | nil
        }

  field(:backendLatency)
  field(:code)
  field(:headers, type: :map)
  field(:size)
  field(:time, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V2.Model.Response do
  def decode(value, options) do
    GoogleApi.ServiceControl.V2.Model.Response.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V2.Model.Response do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
