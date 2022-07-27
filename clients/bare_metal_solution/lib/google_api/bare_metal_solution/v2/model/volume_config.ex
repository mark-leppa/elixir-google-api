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

defmodule GoogleApi.BareMetalSolution.V2.Model.VolumeConfig do
  @moduledoc """
  Configuration parameters for a new volume.

  ## Attributes

  *   `gcpService` (*type:* `String.t`, *default:* `nil`) - The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A transient unique identifier to identify a volume within an ProvisioningConfig request.
  *   `lunRanges` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.LunRange.t)`, *default:* `nil`) - LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  *   `machineIds` (*type:* `list(String.t)`, *default:* `nil`) - Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the volume config.
  *   `nfsExports` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.NfsExport.t)`, *default:* `nil`) - NFS exports. Set only when protocol is PROTOCOL_NFS.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - Volume protocol.
  *   `sizeGb` (*type:* `integer()`, *default:* `nil`) - The requested size of this volume, in GB.
  *   `snapshotsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether snapshots should be enabled.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of this Volume.
  *   `userNote` (*type:* `String.t`, *default:* `nil`) - User note field, it can be used by customers to add additional information for the BMS Ops team .
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcpService => String.t() | nil,
          :id => String.t() | nil,
          :lunRanges => list(GoogleApi.BareMetalSolution.V2.Model.LunRange.t()) | nil,
          :machineIds => list(String.t()) | nil,
          :name => String.t() | nil,
          :nfsExports => list(GoogleApi.BareMetalSolution.V2.Model.NfsExport.t()) | nil,
          :protocol => String.t() | nil,
          :sizeGb => integer() | nil,
          :snapshotsEnabled => boolean() | nil,
          :type => String.t() | nil,
          :userNote => String.t() | nil
        }

  field(:gcpService)
  field(:id)
  field(:lunRanges, as: GoogleApi.BareMetalSolution.V2.Model.LunRange, type: :list)
  field(:machineIds, type: :list)
  field(:name)
  field(:nfsExports, as: GoogleApi.BareMetalSolution.V2.Model.NfsExport, type: :list)
  field(:protocol)
  field(:sizeGb)
  field(:snapshotsEnabled)
  field(:type)
  field(:userNote)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.VolumeConfig do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.VolumeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.VolumeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end