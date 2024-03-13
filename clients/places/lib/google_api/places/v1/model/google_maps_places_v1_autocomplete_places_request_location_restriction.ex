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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction do
  @moduledoc """
  The region to search. The results will be restricted to the specified region.

  ## Attributes

  *   `circle` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Circle.t`, *default:* `nil`) - A circle defined by a center point and radius.
  *   `rectangle` (*type:* `GoogleApi.Places.V1.Model.GoogleGeoTypeViewport.t`, *default:* `nil`) - A viewport defined by a northeast and a southwest corner.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :circle => GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Circle.t() | nil,
          :rectangle => GoogleApi.Places.V1.Model.GoogleGeoTypeViewport.t() | nil
        }

  field(:circle, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Circle)
  field(:rectangle, as: GoogleApi.Places.V1.Model.GoogleGeoTypeViewport)
end

defimpl Poison.Decoder,
  for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
