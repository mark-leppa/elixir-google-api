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

defmodule GoogleApi.CloudSearch.V1.Model.BroadcastSessionInfo do
  @moduledoc """
  Information about a broadcast session.

  ## Attributes

  *   `broadcastSessionId` (*type:* `String.t`, *default:* `nil`) - A unique server-generated ID for the broadcast session.
  *   `broadcastStats` (*type:* `GoogleApi.CloudSearch.V1.Model.BroadcastStats.t`, *default:* `nil`) - Output only. Current broadcast session's statistics.
  *   `ingestionId` (*type:* `String.t`, *default:* `nil`) - Input only. Deprecated field, should not be used.
  *   `sessionStateInfo` (*type:* `GoogleApi.CloudSearch.V1.Model.SessionStateInfo.t`, *default:* `nil`) - Broadcast session's state information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :broadcastSessionId => String.t() | nil,
          :broadcastStats => GoogleApi.CloudSearch.V1.Model.BroadcastStats.t() | nil,
          :ingestionId => String.t() | nil,
          :sessionStateInfo => GoogleApi.CloudSearch.V1.Model.SessionStateInfo.t() | nil
        }

  field(:broadcastSessionId)
  field(:broadcastStats, as: GoogleApi.CloudSearch.V1.Model.BroadcastStats)
  field(:ingestionId)
  field(:sessionStateInfo, as: GoogleApi.CloudSearch.V1.Model.SessionStateInfo)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.BroadcastSessionInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.BroadcastSessionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.BroadcastSessionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
