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

defmodule GoogleApi.VMMigration.V1.Model.PersistentDisk do
  @moduledoc """
  Details of a created Persistent Disk.

  ## Attributes

  *   `diskUri` (*type:* `String.t`, *default:* `nil`) - The URI of the Persistent Disk.
  *   `sourceDiskNumber` (*type:* `integer()`, *default:* `nil`) - The ordinal number of the source VM disk.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskUri => String.t() | nil,
          :sourceDiskNumber => integer() | nil
        }

  field(:diskUri)
  field(:sourceDiskNumber)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.PersistentDisk do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.PersistentDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.PersistentDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
