# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DeploymentManager.V2.Model.ResourceUpdateError do
  @moduledoc """
  Output only. If errors are generated during update of the resource, this field will be populated.

  ## Attributes

  *   `errors` (*type:* `list(GoogleApi.DeploymentManager.V2.Model.ResourceUpdateErrorErrors.t)`, *default:* `nil`) - [Output Only] The array of errors encountered while processing this operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(GoogleApi.DeploymentManager.V2.Model.ResourceUpdateErrorErrors.t())
        }

  field(:errors, as: GoogleApi.DeploymentManager.V2.Model.ResourceUpdateErrorErrors, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.ResourceUpdateError do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.ResourceUpdateError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.ResourceUpdateError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
