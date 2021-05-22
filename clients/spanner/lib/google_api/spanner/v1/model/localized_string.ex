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

defmodule GoogleApi.Spanner.V1.Model.LocalizedString do
  @moduledoc """
  A message representing a user-facing string whose value may need to be translated before being displayed.

  ## Attributes

  *   `args` (*type:* `map()`, *default:* `nil`) - A map of arguments used when creating the localized message. Keys represent parameter names which may be used by the localized version when substituting dynamic values.
  *   `message` (*type:* `String.t`, *default:* `nil`) - The canonical English version of this message. If no token is provided or the front-end has no message associated with the token, this text will be displayed as-is.
  *   `token` (*type:* `String.t`, *default:* `nil`) - The token identifying the message, e.g. 'METRIC_READ_CPU'. This should be unique within the service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => map() | nil,
          :message => String.t() | nil,
          :token => String.t() | nil
        }

  field(:args, type: :map)
  field(:message)
  field(:token)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.LocalizedString do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.LocalizedString.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.LocalizedString do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
