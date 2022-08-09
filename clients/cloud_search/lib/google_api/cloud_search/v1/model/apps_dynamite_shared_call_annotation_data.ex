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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallAnnotationData do
  @moduledoc """
  Data used to render Meet or Google Voice chips in Chat. See go/dynamite-calling-artifacts-in-chat.

  ## Attributes

  *   `callEndedTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when the call ended. Used to render the call ended system message.
  *   `callMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallMetadata.t`, *default:* `nil`) - Required. Call metadata required to create the call artifacts. For now, the metadata contains only the call id to identify the call. This field allows additional data (e.g. voice call type) to be added if needed in the future.
  *   `callStatus` (*type:* `String.t`, *default:* `nil`) - Required. Indicates the call status for the space. Used to determine the chip's state.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callEndedTimestamp => DateTime.t() | nil,
          :callMetadata =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallMetadata.t() | nil,
          :callStatus => String.t() | nil
        }

  field(:callEndedTimestamp, as: DateTime)
  field(:callMetadata, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallMetadata)
  field(:callStatus)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallAnnotationData do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallAnnotationData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCallAnnotationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end