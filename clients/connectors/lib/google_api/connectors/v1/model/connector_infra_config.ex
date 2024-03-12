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

defmodule GoogleApi.Connectors.V1.Model.ConnectorInfraConfig do
  @moduledoc """
  This cofiguration provides infra configs like rate limit threshold which need to be configurable for every connector version

  ## Attributes

  *   `connectionRatelimitWindowSeconds` (*type:* `String.t`, *default:* `nil`) - The window used for ratelimiting runtime requests to connections.
  *   `deploymentModel` (*type:* `String.t`, *default:* `nil`) - Indicate whether connector is deployed on GKE/CloudRun
  *   `hpaConfig` (*type:* `GoogleApi.Connectors.V1.Model.HPAConfig.t`, *default:* `nil`) - HPA autoscaling config.
  *   `internalclientRatelimitThreshold` (*type:* `String.t`, *default:* `nil`) - Max QPS supported for internal requests originating from Connd.
  *   `ratelimitThreshold` (*type:* `String.t`, *default:* `nil`) - Max QPS supported by the connector version before throttling of requests.
  *   `resourceLimits` (*type:* `GoogleApi.Connectors.V1.Model.ResourceLimits.t`, *default:* `nil`) - System resource limits.
  *   `resourceRequests` (*type:* `GoogleApi.Connectors.V1.Model.ResourceRequests.t`, *default:* `nil`) - System resource requests.
  *   `sharedDeployment` (*type:* `String.t`, *default:* `nil`) - The name of shared connector deployment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionRatelimitWindowSeconds => String.t() | nil,
          :deploymentModel => String.t() | nil,
          :hpaConfig => GoogleApi.Connectors.V1.Model.HPAConfig.t() | nil,
          :internalclientRatelimitThreshold => String.t() | nil,
          :ratelimitThreshold => String.t() | nil,
          :resourceLimits => GoogleApi.Connectors.V1.Model.ResourceLimits.t() | nil,
          :resourceRequests => GoogleApi.Connectors.V1.Model.ResourceRequests.t() | nil,
          :sharedDeployment => String.t() | nil
        }

  field(:connectionRatelimitWindowSeconds)
  field(:deploymentModel)
  field(:hpaConfig, as: GoogleApi.Connectors.V1.Model.HPAConfig)
  field(:internalclientRatelimitThreshold)
  field(:ratelimitThreshold)
  field(:resourceLimits, as: GoogleApi.Connectors.V1.Model.ResourceLimits)
  field(:resourceRequests, as: GoogleApi.Connectors.V1.Model.ResourceRequests)
  field(:sharedDeployment)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.ConnectorInfraConfig do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.ConnectorInfraConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.ConnectorInfraConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
