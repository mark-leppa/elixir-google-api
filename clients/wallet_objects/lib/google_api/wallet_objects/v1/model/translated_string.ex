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

defmodule GoogleApi.WalletObjects.V1.Model.TranslatedString do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#translatedString"`.
  *   `language` (*type:* `String.t`, *default:* `nil`) - Represents the BCP 47 language tag. Example values are "en-US", "en-GB", "de", or "de-AT".
  *   `value` (*type:* `String.t`, *default:* `nil`) - The UTF-8 encoded translated string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :language => String.t() | nil,
          :value => String.t() | nil
        }

  field(:kind)
  field(:language)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.TranslatedString do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.TranslatedString.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.TranslatedString do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
