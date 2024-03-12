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

defmodule GoogleApi.Translate.V3.Model.Dataset do
  @moduledoc """
  A dataset that hosts the examples (sentence pairs) used for translation models.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this dataset was created.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  *   `exampleCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of examples in the dataset.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  *   `sourceLanguageCode` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code of the source language.
  *   `targetLanguageCode` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code of the target language.
  *   `testExampleCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of test examples (sentence pairs).
  *   `trainExampleCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of training examples (sentence pairs).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this dataset was last updated.
  *   `validateExampleCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of validation examples (sentence pairs).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :exampleCount => integer() | nil,
          :name => String.t() | nil,
          :sourceLanguageCode => String.t() | nil,
          :targetLanguageCode => String.t() | nil,
          :testExampleCount => integer() | nil,
          :trainExampleCount => integer() | nil,
          :updateTime => DateTime.t() | nil,
          :validateExampleCount => integer() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:exampleCount)
  field(:name)
  field(:sourceLanguageCode)
  field(:targetLanguageCode)
  field(:testExampleCount)
  field(:trainExampleCount)
  field(:updateTime, as: DateTime)
  field(:validateExampleCount)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.Dataset do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.Dataset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.Dataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
