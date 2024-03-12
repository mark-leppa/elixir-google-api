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

defmodule GoogleApi.Translate.V3.Model.Romanization do
  @moduledoc """
  A single romanization response.

  ## Attributes

  *   `detectedLanguageCode` (*type:* `String.t`, *default:* `nil`) - The ISO-639 language code of source text in the initial request, detected automatically, if no source language was passed within the initial request. If the source language was passed, auto-detection of the language does not occur and this field is empty.
  *   `romanizedText` (*type:* `String.t`, *default:* `nil`) - Romanized text. If an error occurs during romanization, this field might be excluded from the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedLanguageCode => String.t() | nil,
          :romanizedText => String.t() | nil
        }

  field(:detectedLanguageCode)
  field(:romanizedText)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.Romanization do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.Romanization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.Romanization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
