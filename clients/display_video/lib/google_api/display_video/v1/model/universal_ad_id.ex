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

defmodule GoogleApi.DisplayVideo.V1.Model.UniversalAdId do
  @moduledoc """
  A creative identifier provided by a registry that is unique across all
  platforms. This is part of the VAST 4.0 standard.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique creative identifier.
  *   `registry` (*type:* `String.t`, *default:* `nil`) - The registry provides unique creative identifiers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :registry => String.t()
        }

  field(:id)
  field(:registry)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.UniversalAdId do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.UniversalAdId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.UniversalAdId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
