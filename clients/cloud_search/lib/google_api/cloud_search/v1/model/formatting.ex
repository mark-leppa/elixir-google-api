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

defmodule GoogleApi.CloudSearch.V1.Model.Formatting do
  @moduledoc """
  Formatting information for a segment.

  ## Attributes

  *   `bold` (*type:* `boolean()`, *default:* `nil`) - 
  *   `highlight` (*type:* `boolean()`, *default:* `nil`) - This indicates that the segment should be rendered as highlighted or visually emphasized.
  *   `italics` (*type:* `boolean()`, *default:* `nil`) - 
  *   `strikethrough` (*type:* `boolean()`, *default:* `nil`) - 
  *   `style` (*type:* `String.t`, *default:* `nil`) - If set, this indicates that the segment should be rendered with the specified style. The absence of an explicit style represents "no style", i.e. the segment can be rendered with the default style chosen by the application.
  *   `underline` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bold => boolean() | nil,
          :highlight => boolean() | nil,
          :italics => boolean() | nil,
          :strikethrough => boolean() | nil,
          :style => String.t() | nil,
          :underline => boolean() | nil
        }

  field(:bold)
  field(:highlight)
  field(:italics)
  field(:strikethrough)
  field(:style)
  field(:underline)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.Formatting do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.Formatting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.Formatting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
