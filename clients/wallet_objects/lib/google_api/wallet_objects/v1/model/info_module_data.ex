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

defmodule GoogleApi.WalletObjects.V1.Model.InfoModuleData do
  @moduledoc """


  ## Attributes

  *   `labelValueRows` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LabelValueRow.t)`, *default:* `nil`) - A list of collections of labels and values. These will be displayed one after the other in a singular column.
  *   `showLastUpdateTime` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelValueRows => list(GoogleApi.WalletObjects.V1.Model.LabelValueRow.t()) | nil,
          :showLastUpdateTime => boolean() | nil
        }

  field(:labelValueRows, as: GoogleApi.WalletObjects.V1.Model.LabelValueRow, type: :list)
  field(:showLastUpdateTime)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.InfoModuleData do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.InfoModuleData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.InfoModuleData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
