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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedWidget do
  @moduledoc """
  A widget is a UI element that presents texts, images, etc.

  ## Attributes

  *   `buttonList` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButtonList.t`, *default:* `nil`) - A list of buttons. For example, the following JSON creates two buttons. The first is a filled text button and the second is an image button that opens a link: ``` "buttonList": { "buttons": [ "button": { "text": "Edit", "Color": { "Red": 255 "Green": 255 "Blue": 255 } "disabled": true }, "button": { "icon": { "knownIcon": "INVITE" "altText": "check calendar" }, "onClick": { "openLink": { "url": "https://example.com/calendar" } } }, ] } ```
  *   `columns` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedColumns.t`, *default:* `nil`) - Displays a single row of columns with widgets stacked vertically in each column. For example, the following JSON creates a 2 column widget each containing a single item. ``` "columns": { "wrapStyle": "WRAP", "columnItems": [ { "horizontalSizeStyle": "FILL_AVAILABLE_SPACE", "horizontalAlignment": "CENTER", "verticalAlignment" : "CENTER", "widgets": [ { "textParagraph": { "text": "First column text paragraph", } } ] }, { "horizontalSizeStyle": "FILL_AVAILABLE_SPACE", "horizontalAlignment": "CENTER", "verticalAlignment" : "CENTER", "widgets": [ { "textParagraph": { "text": "Second column text paragraph", } } ] }, ] } } ```
  *   `dateTimePicker` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDateTimePicker.t`, *default:* `nil`) - Displays a selection/input widget for date/time. For example, the following JSON creates a date/time picker for an appointment time: ``` "date_time_picker": { "name": "appointment_time", "label": "Book your appointment at:", "type": "DateTimePickerType.DATE_AND_TIME", "valueMsEpoch": "796435200000" } ```
  *   `decoratedText` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText.t`, *default:* `nil`) - Displays a decorated text item in this widget. For example, the following JSON creates a decorated text widget showing email address: ``` "decoratedText": { "icon": { "knownIcon": "EMAIL" }, "topLabel": "Email Address", "content": "heba.salam@example.com", "bottomLabel": "This is a new Email address!", "switchWidget": { "name": "has_send_welcome_email_to_heba_salam", "selected": false, "controlType": "ControlType.CHECKBOX" } } ```
  *   `divider` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDivider.t`, *default:* `nil`) - Displays a divider. For example, the following JSON creates a divider: ``` "divider": { } ```
  *   `grid` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedGrid.t`, *default:* `nil`) - Displays a grid with a collection of items. For example, the following JSON creates a 2 column grid with a single item: ``` "grid": { "title": "A fine collection of items", "numColumns": 2, "borderStyle": { "type": "STROKE", "cornerRadius": 4.0 }, "items": [ "image": { "imageUri": "https://www.example.com/image.png", "cropStyle": { "type": "SQUARE" }, "borderStyle": { "type": "STROKE" } }, "title": "An item", "textAlignment": "CENTER" ], "onClick": { "openLink": { "url":"https://www.example.com" } } } ```
  *   `horizontalAlignment` (*type:* `String.t`, *default:* `nil`) - The horizontal alignment of this widget.
  *   `image` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedImage.t`, *default:* `nil`) - Displays an image in this widget. For example, the following JSON creates an image with alternative text: ``` "image": { "imageUrl": "https://example.com/heba_salam.png" "altText": "Avatar for Heba Salam" } ```
  *   `selectionInput` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInput.t`, *default:* `nil`) - Displays a switch control in this widget. For example, the following JSON creates a dropdown selection for size: ``` "switchControl": { "name": "size", "label": "Size" "type": "SelectionType.DROPDOWN", "items": [ { "text": "S", "value": "small", "selected": false }, { "text": "M", "value": "medium", "selected": true }, { "text": "L", "value": "large", "selected": false }, { "text": "XL", "value": "extra_large", "selected": false } ] } ```
  *   `textInput` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTextInput.t`, *default:* `nil`) - Displays a text input in this widget. For example, the following JSON creates a text input for mail address: ``` "textInput": { "name": "mailing_address", "label": "Mailing Address" } ``` As another example, the following JSON creates a text input for programming language with static suggestions: ``` "textInput": { "name": "preferred_programing_language", "label": "Preferred Language", "initialSuggestions": { "items": [ { "text": "C++" }, { "text": "Java" }, { "text": "JavaScript" }, { "text": "Python" } ] } } ```
  *   `textParagraph` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTextParagraph.t`, *default:* `nil`) - Displays a text paragraph in this widget. For example, the following JSON creates a bolded text: ``` "textParagraph": { "text": " *bold text*" } ```
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttonList => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButtonList.t() | nil,
          :columns => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedColumns.t() | nil,
          :dateTimePicker =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDateTimePicker.t() | nil,
          :decoratedText =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText.t() | nil,
          :divider => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDivider.t() | nil,
          :grid => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedGrid.t() | nil,
          :horizontalAlignment => String.t() | nil,
          :image => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedImage.t() | nil,
          :selectionInput =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInput.t() | nil,
          :textInput => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTextInput.t() | nil,
          :textParagraph =>
            GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTextParagraph.t() | nil
        }

  field(:buttonList, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedButtonList)
  field(:columns, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedColumns)
  field(:dateTimePicker, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDateTimePicker)
  field(:decoratedText, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDecoratedText)
  field(:divider, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedDivider)
  field(:grid, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedGrid)
  field(:horizontalAlignment)
  field(:image, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedImage)
  field(:selectionInput, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInput)
  field(:textInput, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTextInput)
  field(:textParagraph, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedTextParagraph)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedWidget do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedWidget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedWidget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
