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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInputSelectionItem do
  @moduledoc """
  The item in the switch control. A radio button, at most one of the items is selected.

  ## Attributes

  *   `selected` (*type:* `boolean()`, *default:* `nil`) - If more than one item is selected for `RADIO_BUTTON` and `DROPDOWN`, the first selected item is treated as selected and the ones after are ignored.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The text to be displayed.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value associated with this item. The client should use this as a form input value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :selected => boolean() | nil,
          :text => String.t() | nil,
          :value => String.t() | nil
        }

  field(:selected)
  field(:text)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInputSelectionItem do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInputSelectionItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedSelectionInputSelectionItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
