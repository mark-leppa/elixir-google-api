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

defmodule GoogleApi.CloudSearch.V1.Model.ChatConfig do
  @moduledoc """
  Configuration of the in meeting chat.

  ## Attributes

  *   `chatType` (*type:* `String.t`, *default:* `nil`) - The Type of chat this Conference is currently using.
  *   `googleChatConfig` (*type:* `GoogleApi.CloudSearch.V1.Model.GoogleChatConfig.t`, *default:* `nil`) - The configuration of Google Chat when selected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chatType => String.t() | nil,
          :googleChatConfig => GoogleApi.CloudSearch.V1.Model.GoogleChatConfig.t() | nil
        }

  field(:chatType)
  field(:googleChatConfig, as: GoogleApi.CloudSearch.V1.Model.GoogleChatConfig)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ChatConfig do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ChatConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ChatConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end