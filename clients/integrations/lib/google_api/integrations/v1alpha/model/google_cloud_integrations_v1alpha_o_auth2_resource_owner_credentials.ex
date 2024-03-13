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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials do
  @moduledoc """
  For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.

  ## Attributes

  *   `accessToken` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAccessToken.t`, *default:* `nil`) - Access token fetched from the authorization server.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The client's ID.
  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - The client's secret.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The user's password.
  *   `requestType` (*type:* `String.t`, *default:* `nil`) - Represent how to pass parameters to fetch access token
  *   `scope` (*type:* `String.t`, *default:* `nil`) - A space-delimited list of requested scope permissions.
  *   `tokenEndpoint` (*type:* `String.t`, *default:* `nil`) - The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  *   `tokenParams` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap.t`, *default:* `nil`) - Token parameters for the auth request.
  *   `username` (*type:* `String.t`, *default:* `nil`) - The user's username.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessToken =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAccessToken.t()
            | nil,
          :clientId => String.t() | nil,
          :clientSecret => String.t() | nil,
          :password => String.t() | nil,
          :requestType => String.t() | nil,
          :scope => String.t() | nil,
          :tokenEndpoint => String.t() | nil,
          :tokenParams =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap.t()
            | nil,
          :username => String.t() | nil
        }

  field(:accessToken,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAccessToken
  )

  field(:clientId)
  field(:clientSecret)
  field(:password)
  field(:requestType)
  field(:scope)
  field(:tokenEndpoint)

  field(:tokenParams,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaParameterMap
  )

  field(:username)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
