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

defmodule GoogleApi.CloudSearch.V1.Model.DeepLinkData do
  @moduledoc """
  Deep-linking data is used to construct a deep-link URI for an activity or frame's embed, such that on click, the user is taken to the right place in a mobile app. If the app is not installed, the user is taken to the app store. If not on mobile, an analogous web uri is used.

  ## Attributes

  *   `appId` (*type:* `String.t`, *default:* `nil`) - Application ID (or project ID) from Google API Console.
  *   `client` (*type:* `list(GoogleApi.CloudSearch.V1.Model.PackagingServiceClient.t)`, *default:* `nil`) - The data for a Google API Console client is entered by a developer during client registration and is stored in PackagingService.
  *   `deepLinkId` (*type:* `String.t`, *default:* `nil`) - The ID for non-URL content. Embeds may either have no analogous web presence or prefer a native mobile experience if supported. In the case of no web presence, instead of setting the "url" field of an embed, such developers will set this field and other content fields, e.g. thumbnail, title, description. If set, this field is used to construct the deep-link URI. Note that the native experience is preferred over the web link and the web link is used as a fallback.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Analogous web presence. Used as desktop fallback or when no native link data is present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appId => String.t() | nil,
          :client => list(GoogleApi.CloudSearch.V1.Model.PackagingServiceClient.t()) | nil,
          :deepLinkId => String.t() | nil,
          :url => String.t() | nil
        }

  field(:appId)
  field(:client, as: GoogleApi.CloudSearch.V1.Model.PackagingServiceClient, type: :list)
  field(:deepLinkId)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.DeepLinkData do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.DeepLinkData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.DeepLinkData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
