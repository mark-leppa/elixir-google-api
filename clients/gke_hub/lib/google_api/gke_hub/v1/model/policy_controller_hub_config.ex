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

defmodule GoogleApi.GKEHub.V1.Model.PolicyControllerHubConfig do
  @moduledoc """
  Configuration for Policy Controller

  ## Attributes

  *   `auditIntervalSeconds` (*type:* `String.t`, *default:* `nil`) - Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether.
  *   `constraintViolationLimit` (*type:* `String.t`, *default:* `nil`) - The maximum number of audit violations to be stored in a constraint. If not set, the internal default (currently 20) will be used.
  *   `deploymentConfigs` (*type:* `%{optional(String.t) => GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig.t}`, *default:* `nil`) - Map of deployment configs to deployments ("admission", "audit", "mutation').
  *   `exemptableNamespaces` (*type:* `list(String.t)`, *default:* `nil`) - The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster.
  *   `installSpec` (*type:* `String.t`, *default:* `nil`) - The install_spec represents the intended state specified by the latest request that mutated install_spec in the feature spec, not the lifecycle state of the feature observed by the Hub feature controller that is reported in the feature state.
  *   `logDeniesEnabled` (*type:* `boolean()`, *default:* `nil`) - Logs all denies and dry run failures.
  *   `monitoring` (*type:* `GoogleApi.GKEHub.V1.Model.PolicyControllerMonitoringConfig.t`, *default:* `nil`) - Monitoring specifies the configuration of monitoring.
  *   `mutationEnabled` (*type:* `boolean()`, *default:* `nil`) - Enables the ability to mutate resources using Policy Controller.
  *   `policyContent` (*type:* `GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyContentSpec.t`, *default:* `nil`) - Specifies the desired policy content on the cluster
  *   `referentialRulesEnabled` (*type:* `boolean()`, *default:* `nil`) - Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auditIntervalSeconds => String.t() | nil,
          :constraintViolationLimit => String.t() | nil,
          :deploymentConfigs =>
            %{
              optional(String.t()) =>
                GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig.t()
            }
            | nil,
          :exemptableNamespaces => list(String.t()) | nil,
          :installSpec => String.t() | nil,
          :logDeniesEnabled => boolean() | nil,
          :monitoring => GoogleApi.GKEHub.V1.Model.PolicyControllerMonitoringConfig.t() | nil,
          :mutationEnabled => boolean() | nil,
          :policyContent => GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyContentSpec.t() | nil,
          :referentialRulesEnabled => boolean() | nil
        }

  field(:auditIntervalSeconds)
  field(:constraintViolationLimit)

  field(:deploymentConfigs,
    as: GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig,
    type: :map
  )

  field(:exemptableNamespaces, type: :list)
  field(:installSpec)
  field(:logDeniesEnabled)
  field(:monitoring, as: GoogleApi.GKEHub.V1.Model.PolicyControllerMonitoringConfig)
  field(:mutationEnabled)
  field(:policyContent, as: GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyContentSpec)
  field(:referentialRulesEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.PolicyControllerHubConfig do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.PolicyControllerHubConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.PolicyControllerHubConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
