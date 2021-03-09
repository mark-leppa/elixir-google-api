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

defmodule GoogleApi.Vault.V1.Model.CloseMatterResponse do
  @moduledoc """
  Response to a CloseMatterRequest.

  ## Attributes

  *   `matter` (*type:* `GoogleApi.Vault.V1.Model.Matter.t`, *default:* `nil`) - The updated matter, with state CLOSED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :matter => GoogleApi.Vault.V1.Model.Matter.t() | nil
        }

  field(:matter, as: GoogleApi.Vault.V1.Model.Matter)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.CloseMatterResponse do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.CloseMatterResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.CloseMatterResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
