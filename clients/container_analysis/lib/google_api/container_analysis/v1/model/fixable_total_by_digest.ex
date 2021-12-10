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

defmodule GoogleApi.ContainerAnalysis.V1.Model.FixableTotalByDigest do
  @moduledoc """
  Per resource and severity counts of fixable and total vulnerabilities.

  ## Attributes

  *   `fixableCount` (*type:* `String.t`, *default:* `nil`) - The number of fixable vulnerabilities associated with this resource.
  *   `resourceUri` (*type:* `String.t`, *default:* `nil`) - The affected resource.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity for this count. SEVERITY_UNSPECIFIED indicates total across all severities.
  *   `totalCount` (*type:* `String.t`, *default:* `nil`) - The total number of vulnerabilities associated with this resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixableCount => String.t() | nil,
          :resourceUri => String.t() | nil,
          :severity => String.t() | nil,
          :totalCount => String.t() | nil
        }

  field(:fixableCount)
  field(:resourceUri)
  field(:severity)
  field(:totalCount)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.FixableTotalByDigest do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.FixableTotalByDigest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.FixableTotalByDigest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
