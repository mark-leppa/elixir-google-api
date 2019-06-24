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

defmodule GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails do
  @moduledoc """
  Details for the goal of the type VISIT_NUM_PAGES.

  ## Attributes

  *   `comparisonType` (*type:* `String.t`, *default:* `nil`) - Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or EQUAL.
  *   `comparisonValue` (*type:* `String.t`, *default:* `nil`) - Value used for this comparison.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comparisonType => String.t(),
          :comparisonValue => String.t()
        }

  field(:comparisonType)
  field(:comparisonValue)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GoalVisitNumPagesDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
