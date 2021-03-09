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

defmodule GoogleApi.Vault.V1.Model.HeldDriveQuery do
  @moduledoc """
  Query options for Drive holds.

  ## Attributes

  *   `includeSharedDriveFiles` (*type:* `boolean()`, *default:* `nil`) - If true, include files in shared drives in the hold.
  *   `includeTeamDriveFiles` (*type:* `boolean()`, *default:* `nil`) - If true, include files in Team Drives in the hold.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeSharedDriveFiles => boolean() | nil,
          :includeTeamDriveFiles => boolean() | nil
        }

  field(:includeSharedDriveFiles)
  field(:includeTeamDriveFiles)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.HeldDriveQuery do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.HeldDriveQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.HeldDriveQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
