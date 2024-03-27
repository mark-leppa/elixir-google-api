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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse do
  @moduledoc """
  Response of the CompletionService.ImportCompletionSuggestions method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

  ## Attributes

  *   `errorSamples` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t)`, *default:* `nil`) - A sample of errors encountered while processing the request.
  *   `failureCount` (*type:* `String.t`, *default:* `nil`) - Count of CompletionSuggestions that failed to be imported.
  *   `successCount` (*type:* `String.t`, *default:* `nil`) - Count of CompletionSuggestions successfully imported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorSamples => list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t()) | nil,
          :failureCount => String.t() | nil,
          :successCount => String.t() | nil
        }

  field(:errorSamples, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus, type: :list)
  field(:failureCount)
  field(:successCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
