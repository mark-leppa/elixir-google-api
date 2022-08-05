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

defmodule GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkup do
  @moduledoc """
  A widget is a UI element that presents texts, images, etc.

  ## Attributes

  *   `buttons` (*type:* `list(GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupButton.t)`, *default:* `nil`) - A list of buttons. Buttons is also oneof data and only one of these fields should be set.
  *   `image` (*type:* `GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupImage.t`, *default:* `nil`) - Display an image in this widget.
  *   `keyValue` (*type:* `GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupKeyValue.t`, *default:* `nil`) - Display a key value item in this widget.
  *   `textParagraph` (*type:* `GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupTextParagraph.t`, *default:* `nil`) - Display a text paragraph in this widget.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttons =>
            list(GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupButton.t()) | nil,
          :image => GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupImage.t() | nil,
          :keyValue => GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupKeyValue.t() | nil,
          :textParagraph =>
            GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupTextParagraph.t() | nil
        }

  field(:buttons, as: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupButton, type: :list)
  field(:image, as: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupImage)
  field(:keyValue, as: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupKeyValue)
  field(:textParagraph, as: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupTextParagraph)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkup do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
