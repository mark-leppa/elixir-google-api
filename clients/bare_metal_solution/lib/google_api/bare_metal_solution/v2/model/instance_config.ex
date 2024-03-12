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

defmodule GoogleApi.BareMetalSolution.V2.Model.InstanceConfig do
  @moduledoc """
  Configuration parameters for a new instance.

  ## Attributes

  *   `accountNetworksEnabled` (*type:* `boolean()`, *default:* `nil`) - If true networks can be from different projects of the same vendor account.
  *   `clientNetwork` (*type:* `GoogleApi.BareMetalSolution.V2.Model.NetworkAddress.t`, *default:* `nil`) - Client network address. Filled if InstanceConfig.multivlan_config is false.
  *   `hyperthreading` (*type:* `boolean()`, *default:* `nil`) - Whether the instance should be provisioned with Hyperthreading enabled.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A transient unique identifier to idenfity an instance within an ProvisioningConfig request.
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  *   `kmsKeyVersion` (*type:* `String.t`, *default:* `nil`) - Name of the KMS crypto key version used to encrypt the initial passwords. The key has to have ASYMMETRIC_DECRYPT purpose.
  *   `logicalInterfaces` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.GoogleCloudBaremetalsolutionV2LogicalInterface.t)`, *default:* `nil`) - List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the instance config.
  *   `networkConfig` (*type:* `String.t`, *default:* `nil`) - The type of network configuration on the instance.
  *   `networkTemplate` (*type:* `String.t`, *default:* `nil`) - Server network template name. Filled if InstanceConfig.multivlan_config is true.
  *   `osImage` (*type:* `String.t`, *default:* `nil`) - OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  *   `privateNetwork` (*type:* `GoogleApi.BareMetalSolution.V2.Model.NetworkAddress.t`, *default:* `nil`) - Private network address, if any. Filled if InstanceConfig.multivlan_config is false.
  *   `sshKeyNames` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of names of ssh keys used to provision the instance.
  *   `userNote` (*type:* `String.t`, *default:* `nil`) - User note field, it can be used by customers to add additional information for the BMS Ops team .
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountNetworksEnabled => boolean() | nil,
          :clientNetwork => GoogleApi.BareMetalSolution.V2.Model.NetworkAddress.t() | nil,
          :hyperthreading => boolean() | nil,
          :id => String.t() | nil,
          :instanceType => String.t() | nil,
          :kmsKeyVersion => String.t() | nil,
          :logicalInterfaces =>
            list(
              GoogleApi.BareMetalSolution.V2.Model.GoogleCloudBaremetalsolutionV2LogicalInterface.t()
            )
            | nil,
          :name => String.t() | nil,
          :networkConfig => String.t() | nil,
          :networkTemplate => String.t() | nil,
          :osImage => String.t() | nil,
          :privateNetwork => GoogleApi.BareMetalSolution.V2.Model.NetworkAddress.t() | nil,
          :sshKeyNames => list(String.t()) | nil,
          :userNote => String.t() | nil
        }

  field(:accountNetworksEnabled)
  field(:clientNetwork, as: GoogleApi.BareMetalSolution.V2.Model.NetworkAddress)
  field(:hyperthreading)
  field(:id)
  field(:instanceType)
  field(:kmsKeyVersion)

  field(:logicalInterfaces,
    as: GoogleApi.BareMetalSolution.V2.Model.GoogleCloudBaremetalsolutionV2LogicalInterface,
    type: :list
  )

  field(:name)
  field(:networkConfig)
  field(:networkTemplate)
  field(:osImage)
  field(:privateNetwork, as: GoogleApi.BareMetalSolution.V2.Model.NetworkAddress)
  field(:sshKeyNames, type: :list)
  field(:userNote)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.InstanceConfig do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.InstanceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.InstanceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
