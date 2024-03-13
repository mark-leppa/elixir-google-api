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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaListSuspensionsResponse do
  @moduledoc """
  Response for Suspensions.ListSuspensions.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results.
  *   `suspensions` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaSuspension.t)`, *default:* `nil`) - The suspensions for the relevant execution which the caller has permissions to view and resolve.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :suspensions =>
            list(
              GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaSuspension.t()
            )
            | nil
        }

  field(:nextPageToken)

  field(:suspensions,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaSuspension,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaListSuspensionsResponse do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaListSuspensionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaListSuspensionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
