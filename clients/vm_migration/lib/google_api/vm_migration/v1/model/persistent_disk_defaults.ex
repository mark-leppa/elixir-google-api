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

defmodule GoogleApi.VMMigration.V1.Model.PersistentDiskDefaults do
  @moduledoc """
  Details for creation of a Persistent Disk.

  ## Attributes

  *   `additionalLabels` (*type:* `map()`, *default:* `nil`) - A map of labels to associate with the Persistent Disk.
  *   `diskName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the Persistent Disk to create.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - The disk type to use.
  *   `encryption` (*type:* `GoogleApi.VMMigration.V1.Model.Encryption.t`, *default:* `nil`) - Optional. The encryption to apply to the disk.
  *   `sourceDiskNumber` (*type:* `integer()`, *default:* `nil`) - Required. The ordinal number of the source VM disk.
  *   `vmAttachmentDetails` (*type:* `GoogleApi.VMMigration.V1.Model.VmAttachmentDetails.t`, *default:* `nil`) - Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalLabels => map() | nil,
          :diskName => String.t() | nil,
          :diskType => String.t() | nil,
          :encryption => GoogleApi.VMMigration.V1.Model.Encryption.t() | nil,
          :sourceDiskNumber => integer() | nil,
          :vmAttachmentDetails => GoogleApi.VMMigration.V1.Model.VmAttachmentDetails.t() | nil
        }

  field(:additionalLabels, type: :map)
  field(:diskName)
  field(:diskType)
  field(:encryption, as: GoogleApi.VMMigration.V1.Model.Encryption)
  field(:sourceDiskNumber)
  field(:vmAttachmentDetails, as: GoogleApi.VMMigration.V1.Model.VmAttachmentDetails)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.PersistentDiskDefaults do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.PersistentDiskDefaults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.PersistentDiskDefaults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
