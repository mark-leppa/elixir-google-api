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

defmodule GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args do
  @moduledoc """


  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - The placeholder key for this arg, as a string.
  *   `rects` (*type:* `list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects.t)`, *default:* `nil`) - The screen rectangles being referred to, with dimensions measured in CSS pixels. This is only ever used for SNAPSHOT_RECT arguments. If this is absent for a SNAPSHOT_RECT argument, it means that that argument refers to the entire snapshot.
  *   `secondary_rects` (*type:* `list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsSecondaryRects.t)`, *default:* `nil`) - Secondary screen rectangles being referred to, with dimensions measured in CSS pixels. This is only ever used for SNAPSHOT_RECT arguments.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of argument. One of URL, STRING_LITERAL, INT_LITERAL, BYTES, DURATION, VERBATIM_STRING, PERCENTAGE, HYPERLINK, or SNAPSHOT_RECT.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Argument value, as a localized string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t(),
          :rects =>
            list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects.t()),
          :secondary_rects =>
            list(
              GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsSecondaryRects.t()
            ),
          :type => String.t(),
          :value => String.t()
        }

  field(:key)

  field(
    :rects,
    as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsRects,
    type: :list
  )

  field(
    :secondary_rects,
    as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4ArgsSecondaryRects,
    type: :list
  )

  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
