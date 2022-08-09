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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCardCardAction do
  @moduledoc """
  A card action is the action associated with the card. For example, an invoice card might include actions such as delete invoice, email invoice, or open the invoice in a browser.

  ## Attributes

  *   `actionLabel` (*type:* `String.t`, *default:* `nil`) - The label that displays as the action menu item.
  *   `onClick` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick.t`, *default:* `nil`) - The onclick action for this action item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionLabel => String.t() | nil,
          :onClick => GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick.t() | nil
        }

  field(:actionLabel)
  field(:onClick, as: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedOnClick)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCardCardAction do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCardCardAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCardCardAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end