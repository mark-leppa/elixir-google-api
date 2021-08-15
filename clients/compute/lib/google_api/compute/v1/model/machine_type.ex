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

defmodule GoogleApi.Compute.V1.Model.MachineType do
  @moduledoc """
  Represents a Machine Type resource. You can use specific machine types for your VM instances based on performance and pricing requirements. For more information, read Machine Types.

  ## Attributes

  *   `accelerators` (*type:* `list(GoogleApi.Compute.V1.Model.MachineTypeAccelerators.t)`, *default:* `nil`) - [Output Only] A list of accelerator configurations assigned to this machine type.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `deprecated` (*type:* `GoogleApi.Compute.V1.Model.DeprecationStatus.t`, *default:* `nil`) - [Output Only] The deprecation status associated with this machine type. Only applicable if the machine type is unavailable.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional textual description of the resource.
  *   `guestCpus` (*type:* `integer()`, *default:* `nil`) - [Output Only] The number of virtual CPUs that are available to the instance.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `imageSpaceGb` (*type:* `integer()`, *default:* `nil`) - [Deprecated] This property is deprecated and will never be populated with any relevant values.
  *   `isSharedCpu` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Whether this machine type has a shared CPU. See Shared-core machine types for more information.
  *   `kind` (*type:* `String.t`, *default:* `compute#machineType`) - [Output Only] The type of the resource. Always compute#machineType for machine types.
  *   `maximumPersistentDisks` (*type:* `integer()`, *default:* `nil`) - [Output Only] Maximum persistent disks allowed.
  *   `maximumPersistentDisksSizeGb` (*type:* `String.t`, *default:* `nil`) - [Output Only] Maximum total persistent disks size (GB) allowed.
  *   `memoryMb` (*type:* `integer()`, *default:* `nil`) - [Output Only] The amount of physical memory available to the instance, defined in MB.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the resource.
  *   `scratchDisks` (*type:* `list(GoogleApi.Compute.V1.Model.MachineTypeScratchDisks.t)`, *default:* `nil`) - [Output Only] A list of extended scratch disks assigned to the instance.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the zone where the machine type resides, such as us-central1-a.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators => list(GoogleApi.Compute.V1.Model.MachineTypeAccelerators.t()) | nil,
          :creationTimestamp => String.t() | nil,
          :deprecated => GoogleApi.Compute.V1.Model.DeprecationStatus.t() | nil,
          :description => String.t() | nil,
          :guestCpus => integer() | nil,
          :id => String.t() | nil,
          :imageSpaceGb => integer() | nil,
          :isSharedCpu => boolean() | nil,
          :kind => String.t() | nil,
          :maximumPersistentDisks => integer() | nil,
          :maximumPersistentDisksSizeGb => String.t() | nil,
          :memoryMb => integer() | nil,
          :name => String.t() | nil,
          :scratchDisks => list(GoogleApi.Compute.V1.Model.MachineTypeScratchDisks.t()) | nil,
          :selfLink => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:accelerators, as: GoogleApi.Compute.V1.Model.MachineTypeAccelerators, type: :list)
  field(:creationTimestamp)
  field(:deprecated, as: GoogleApi.Compute.V1.Model.DeprecationStatus)
  field(:description)
  field(:guestCpus)
  field(:id)
  field(:imageSpaceGb)
  field(:isSharedCpu)
  field(:kind)
  field(:maximumPersistentDisks)
  field(:maximumPersistentDisksSizeGb)
  field(:memoryMb)
  field(:name)
  field(:scratchDisks, as: GoogleApi.Compute.V1.Model.MachineTypeScratchDisks, type: :list)
  field(:selfLink)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.MachineType do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.MachineType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.MachineType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
