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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedVideoReference do
  @moduledoc """
  Reference to a transcoded video attachment.

  ## Attributes

  *   `format` (*type:* `list(integer())`, *default:* `nil`) - Available transcode format. Value is defined in video/storage/proto/content_header.proto
  *   `status` (*type:* `String.t`, *default:* `nil`) - Transcode status
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :format => list(integer()) | nil,
          :status => String.t() | nil
        }

  field(:format, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedVideoReference do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedVideoReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedVideoReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
