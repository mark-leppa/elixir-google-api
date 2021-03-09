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

defmodule GoogleApi.Vault.V1.Model.ListMattersResponse do
  @moduledoc """
  Provides the list of matters.

  ## Attributes

  *   `matters` (*type:* `list(GoogleApi.Vault.V1.Model.Matter.t)`, *default:* `nil`) - List of matters.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Page token to retrieve the next page of results in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :matters => list(GoogleApi.Vault.V1.Model.Matter.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:matters, as: GoogleApi.Vault.V1.Model.Matter, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.ListMattersResponse do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.ListMattersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.ListMattersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
