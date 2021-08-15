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

defmodule GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint do
  @moduledoc """
  [Output Only] A connection connected to this service attachment.

  ## Attributes

  *   `endpoint` (*type:* `String.t`, *default:* `nil`) - The url of a connected endpoint.
  *   `pscConnectionId` (*type:* `String.t`, *default:* `nil`) - The PSC connection id of the connected endpoint.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of a connected endpoint to this service attachment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoint => String.t() | nil,
          :pscConnectionId => String.t() | nil,
          :status => String.t() | nil
        }

  field(:endpoint)
  field(:pscConnectionId)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ServiceAttachmentConnectedEndpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
