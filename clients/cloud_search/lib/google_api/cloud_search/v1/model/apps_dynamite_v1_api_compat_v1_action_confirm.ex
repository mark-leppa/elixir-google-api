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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1ActionConfirm do
  @moduledoc """
  Confirmation dialog config.

  ## Attributes

  *   `dismiss_text` (*type:* `String.t`, *default:* `nil`) - "Cancel" button label.
  *   `ok_text` (*type:* `String.t`, *default:* `nil`) - "OK" button label.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Confirmation dialog body text.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Confirmation dialog title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dismiss_text => String.t() | nil,
          :ok_text => String.t() | nil,
          :text => String.t() | nil,
          :title => String.t() | nil
        }

  field(:dismiss_text)
  field(:ok_text)
  field(:text)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1ActionConfirm do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1ActionConfirm.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteV1ApiCompatV1ActionConfirm do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
