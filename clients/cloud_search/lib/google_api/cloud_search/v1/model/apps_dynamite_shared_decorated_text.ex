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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText do
  @moduledoc """
  A widget that displays text with optional decorations such as a label above or below the text, an icon in front of the text, a selection widget or a button after the text.

  ## Attributes

  *   `bottomLabel` (*type:* `String.t`, *default:* `nil`) - The formatted text label that shows below the main text.
  *   `button` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton.t`, *default:* `nil`) - A button that can be clicked to trigger an action.
  *   `endIcon` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t`, *default:* `nil`) - An icon displayed after the text.
  *   `icon` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t`, *default:* `nil`) - Deprecated in favor of start_icon.
  *   `onClick` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick.t`, *default:* `nil`) - Only the top and bottom label and content region are clickable.
  *   `startIcon` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t`, *default:* `nil`) - The icon displayed in front of the text.
  *   `switchControl` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedTextSwitchControl.t`, *default:* `nil`) - A switch widget can be clicked to change its state or trigger an action.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Required. The main widget formatted text. See Text formatting for details.
  *   `topLabel` (*type:* `String.t`, *default:* `nil`) - The formatted text label that shows above the main text.
  *   `wrapText` (*type:* `boolean()`, *default:* `nil`) - The wrap text setting. If `true`, the text is wrapped and displayed in multiline. Otherwise, the text is truncated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bottomLabel => String.t() | nil,
          :button => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton.t() | nil,
          :endIcon => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t() | nil,
          :icon => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t() | nil,
          :onClick => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick.t() | nil,
          :startIcon => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon.t() | nil,
          :switchControl =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedTextSwitchControl.t() | nil,
          :text => String.t() | nil,
          :topLabel => String.t() | nil,
          :wrapText => boolean() | nil
        }

  field(:bottomLabel)
  field(:button, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButton)
  field(:endIcon, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon)
  field(:icon, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon)
  field(:onClick, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick)
  field(:startIcon, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedIcon)

  field(:switchControl,
    as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedTextSwitchControl
  )

  field(:text)
  field(:topLabel)
  field(:wrapText)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
