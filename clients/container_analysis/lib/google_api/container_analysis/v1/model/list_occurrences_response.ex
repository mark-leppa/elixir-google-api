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

defmodule GoogleApi.ContainerAnalysis.V1.Model.ListOccurrencesResponse do
  @moduledoc """
  Response for listing occurrences.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The next pagination token in the list response. It should be used as `page_token` for the following request. An empty value means no more results.
  *   `occurrences` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Occurrence.t)`, *default:* `nil`) - The occurrences requested.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :occurrences => list(GoogleApi.ContainerAnalysis.V1.Model.Occurrence.t()) | nil
        }

  field(:nextPageToken)
  field(:occurrences, as: GoogleApi.ContainerAnalysis.V1.Model.Occurrence, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.ListOccurrencesResponse do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.ListOccurrencesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.ListOccurrencesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
