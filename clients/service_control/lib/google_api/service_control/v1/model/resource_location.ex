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

defmodule GoogleApi.ServiceControl.V1.Model.ResourceLocation do
  @moduledoc """
  Location information about a resource.

  ## Attributes

  *   `currentLocations` (*type:* `list(String.t)`, *default:* `nil`) - The locations of a resource after the execution of the operation. Requests to create or delete a location based resource must populate the 'current_locations' field and not the 'original_locations' field. For example: "europe-west1-a" "us-east1" "nam3"
  *   `originalLocations` (*type:* `list(String.t)`, *default:* `nil`) - The locations of a resource prior to the execution of the operation. Requests that mutate the resource's location must populate both the 'original_locations' as well as the 'current_locations' fields. For example: "europe-west1-a" "us-east1" "nam3"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentLocations => list(String.t()) | nil,
          :originalLocations => list(String.t()) | nil
        }

  field(:currentLocations, type: :list)
  field(:originalLocations, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.ResourceLocation do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.ResourceLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.ResourceLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
