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

defmodule GoogleApi.CloudSearch.V1.Model.MessageContent do
  @moduledoc """
  The content of a chat message, which includes 0 or more segments along with 0 or more embeds, which represent various attachment types (like photos).

  ## Attributes

  *   `attachment` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Attachment.t)`, *default:* `nil`) - Items attached to this message, such as photos. This should *NOT* be set by clients. It will be automatically set from media uploaded along with this request and using the information provided in existing_media.
  *   `segment` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Segment.t)`, *default:* `nil`) - The text part of the message content. Segments are concatenated together to yield the full message. A message can have zero or more segments.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachment => list(GoogleApi.CloudSearch.V1.Model.Attachment.t()) | nil,
          :segment => list(GoogleApi.CloudSearch.V1.Model.Segment.t()) | nil
        }

  field(:attachment, as: GoogleApi.CloudSearch.V1.Model.Attachment, type: :list)
  field(:segment, as: GoogleApi.CloudSearch.V1.Model.Segment, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.MessageContent do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.MessageContent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.MessageContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
