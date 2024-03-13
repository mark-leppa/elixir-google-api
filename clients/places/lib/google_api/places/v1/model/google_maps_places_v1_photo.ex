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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo do
  @moduledoc """
  Information about a photo of a place.

  ## Attributes

  *   `authorAttributions` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AuthorAttribution.t)`, *default:* `nil`) - This photo's authors.
  *   `heightPx` (*type:* `integer()`, *default:* `nil`) - The maximum available height, in pixels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. A reference representing this place photo which may be used to look up this place photo again (also called the API "resource" name: `places/{place_id}/photos/{photo}`).
  *   `widthPx` (*type:* `integer()`, *default:* `nil`) - The maximum available width, in pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorAttributions =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AuthorAttribution.t()) | nil,
          :heightPx => integer() | nil,
          :name => String.t() | nil,
          :widthPx => integer() | nil
        }

  field(:authorAttributions,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AuthorAttribution,
    type: :list
  )

  field(:heightPx)
  field(:name)
  field(:widthPx)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
