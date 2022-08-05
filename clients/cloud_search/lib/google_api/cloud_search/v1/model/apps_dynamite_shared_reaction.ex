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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedReaction do
  @moduledoc """


  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - The total number of users who have reacted.
  *   `createTimestamp` (*type:* `String.t`, *default:* `nil`) - When the first emoji of this type was added.
  *   `currentUserParticipated` (*type:* `boolean()`, *default:* `nil`) - Whether the current user reacted using this emoji. Note: Unlike most properties of messages, this is different per-user.
  *   `emoji` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedEmoji.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :createTimestamp => String.t() | nil,
          :currentUserParticipated => boolean() | nil,
          :emoji => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedEmoji.t() | nil
        }

  field(:count)
  field(:createTimestamp)
  field(:currentUserParticipated)
  field(:emoji, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedEmoji)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedReaction do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedReaction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedReaction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
