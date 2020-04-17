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

defmodule GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails do
  @moduledoc """
  Targeting details for proximity location list. This will be
  populated in the details field of an AssignedTargetingOption when
  targeting_type is
  `TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.

  ## Attributes

  *   `proximityLocationListId` (*type:* `String.t`, *default:* `nil`) - Required. ID of the proximity location list. Should refer to the
      location_list_id field of a
      LocationList resource whose type is
      `TARGETING_LOCATION_TYPE_PROXIMITY`.
  *   `proximityRadiusRange` (*type:* `String.t`, *default:* `nil`) - Required. Radius range for proximity location list.
      This represents the size of the area around a chosen location that will be
      targeted.

      `All` proximity location targeting under a single line item must have the
      same radius range value. Set this value to match any existing targeting.
      If updated, this field will change the radius range for all proximity
      targeting under the line item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :proximityLocationListId => String.t(),
          :proximityRadiusRange => String.t()
        }

  field(:proximityLocationListId)
  field(:proximityRadiusRange)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
