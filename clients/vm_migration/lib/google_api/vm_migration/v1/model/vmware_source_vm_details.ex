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

defmodule GoogleApi.VMMigration.V1.Model.VmwareSourceVmDetails do
  @moduledoc """
  Represent the source Vmware VM details.

  ## Attributes

  *   `committedStorageBytes` (*type:* `String.t`, *default:* `nil`) - The total size of the disks being migrated in bytes.
  *   `disks` (*type:* `list(GoogleApi.VMMigration.V1.Model.VmwareDiskDetails.t)`, *default:* `nil`) - The disks attached to the source VM.
  *   `firmware` (*type:* `String.t`, *default:* `nil`) - The firmware type of the source VM.
  *   `vmCapabilitiesInfo` (*type:* `GoogleApi.VMMigration.V1.Model.VmCapabilities.t`, *default:* `nil`) - Output only. Information about VM capabilities needed for some Compute Engine features.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :committedStorageBytes => String.t() | nil,
          :disks => list(GoogleApi.VMMigration.V1.Model.VmwareDiskDetails.t()) | nil,
          :firmware => String.t() | nil,
          :vmCapabilitiesInfo => GoogleApi.VMMigration.V1.Model.VmCapabilities.t() | nil
        }

  field(:committedStorageBytes)
  field(:disks, as: GoogleApi.VMMigration.V1.Model.VmwareDiskDetails, type: :list)
  field(:firmware)
  field(:vmCapabilitiesInfo, as: GoogleApi.VMMigration.V1.Model.VmCapabilities)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.VmwareSourceVmDetails do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.VmwareSourceVmDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.VmwareSourceVmDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
