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

defmodule GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation do
  @moduledoc """
  Identifies the event that kicked off the build.

  ## Attributes

  *   `configSource` (*type:* `GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.t`, *default:* `nil`) - 
  *   `environment` (*type:* `map()`, *default:* `nil`) - 
  *   `parameters` (*type:* `map()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configSource =>
            GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.t()
            | nil,
          :environment => map() | nil,
          :parameters => map() | nil
        }

  field(:configSource,
    as: GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
  )

  field(:environment, type: :map)
  field(:parameters, type: :map)
end

defimpl Poison.Decoder,
  for: GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.OnDemandScanning.V1.Model.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end