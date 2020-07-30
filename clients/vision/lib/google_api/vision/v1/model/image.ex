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

defmodule GoogleApi.Vision.V1.Model.Image do
  @moduledoc """
  Client image to perform Google Cloud Vision API tasks over.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - Image content, represented as a stream of bytes.
      Note: As with all `bytes` fields, protobuffers use a pure binary
      representation, whereas JSON representations use base64.

      Currently, this field only works for BatchAnnotateImages requests. It does
      not work for AsyncBatchAnnotateImages requests.
  *   `source` (*type:* `GoogleApi.Vision.V1.Model.ImageSource.t`, *default:* `nil`) - Google Cloud Storage image location, or publicly-accessible image
      URL. If both `content` and `source` are provided for an image, `content`
      takes precedence and is used to perform the image annotation request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :source => GoogleApi.Vision.V1.Model.ImageSource.t()
        }

  field(:content)
  field(:source, as: GoogleApi.Vision.V1.Model.ImageSource)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.Image do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
