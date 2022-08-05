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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedMessageInfo do
  @moduledoc """
  Information that references a Dynamite chat message.

  ## Attributes

  *   `messageId` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteMessageId.t`, *default:* `nil`) - Id of the source chat message. This is kept here because the top-level message ID to refers the AF message ID.
  *   `topicReadTimeUsec` (*type:* `String.t`, *default:* `nil`) - Timestamp of when the topic containing the message has been read by the user. This is populated if the message references an inline reply, in which case the space may be marked as read but the topic still has unread messages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :messageId => GoogleApi.CloudSearch.V1.Model.AppsDynamiteMessageId.t() | nil,
          :topicReadTimeUsec => String.t() | nil
        }

  field(:messageId, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteMessageId)
  field(:topicReadTimeUsec)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedMessageInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedMessageInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedMessageInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
