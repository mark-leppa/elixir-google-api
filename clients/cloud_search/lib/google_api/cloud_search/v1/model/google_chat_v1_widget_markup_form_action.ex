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

defmodule GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormAction do
  @moduledoc """
  A form action describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.

  ## Attributes

  *   `actionMethodName` (*type:* `String.t`, *default:* `nil`) - The method name is used to identify which part of the form triggered the form submission. This information is echoed back to the Chat app as part of the card click event. The same method name can be used for several elements that trigger a common behavior if desired.
  *   `parameters` (*type:* `list(GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormActionActionParameter.t)`, *default:* `nil`) - List of action parameters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionMethodName => String.t() | nil,
          :parameters =>
            list(
              GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormActionActionParameter.t()
            )
            | nil
        }

  field(:actionMethodName)

  field(:parameters,
    as: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormActionActionParameter,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormAction do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.GoogleChatV1WidgetMarkupFormAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end