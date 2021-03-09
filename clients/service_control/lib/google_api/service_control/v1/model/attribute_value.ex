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

defmodule GoogleApi.ServiceControl.V1.Model.AttributeValue do
  @moduledoc """
  The allowed types for [VALUE] in a `[KEY]:[VALUE]` attribute.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - A Boolean value represented by `true` or `false`.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - A 64-bit signed integer.
  *   `stringValue` (*type:* `GoogleApi.ServiceControl.V1.Model.TruncatableString.t`, *default:* `nil`) - A string up to 256 bytes long.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean() | nil,
          :intValue => String.t() | nil,
          :stringValue => GoogleApi.ServiceControl.V1.Model.TruncatableString.t() | nil
        }

  field(:boolValue)
  field(:intValue)
  field(:stringValue, as: GoogleApi.ServiceControl.V1.Model.TruncatableString)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.AttributeValue do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.AttributeValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.AttributeValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
