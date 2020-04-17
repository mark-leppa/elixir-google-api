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

defmodule GoogleApi.DisplayVideo.V1.Model.ListFirstAndThirdPartyAudiencesResponse do
  @moduledoc """


  ## Attributes

  *   `firstAndThirdPartyAudiences` (*type:* `list(GoogleApi.DisplayVideo.V1.Model.FirstAndThirdPartyAudience.t)`, *default:* `nil`) - The list of first and third party audiences.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results.
      Pass this value in the
      page_token
      field in the subsequent call to `ListFirstAndThirdPartyAudiences` method to
      retrieve the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :firstAndThirdPartyAudiences =>
            list(GoogleApi.DisplayVideo.V1.Model.FirstAndThirdPartyAudience.t()),
          :nextPageToken => String.t()
        }

  field(:firstAndThirdPartyAudiences,
    as: GoogleApi.DisplayVideo.V1.Model.FirstAndThirdPartyAudience,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.ListFirstAndThirdPartyAudiencesResponse do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ListFirstAndThirdPartyAudiencesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.ListFirstAndThirdPartyAudiencesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
