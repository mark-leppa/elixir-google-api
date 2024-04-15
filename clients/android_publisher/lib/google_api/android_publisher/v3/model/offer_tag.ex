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

defmodule GoogleApi.AndroidPublisher.V3.Model.OfferTag do
  @moduledoc """
  Represents a custom tag specified for base plans and subscription offers.

  ## Attributes

  *   `tag` (*type:* `String.t`, *default:* `nil`) - Must conform with RFC-1034. That is, this string can only contain lower-case letters (a-z), numbers (0-9), and hyphens (-), and be at most 20 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tag => String.t() | nil
        }

  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.OfferTag do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.OfferTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.OfferTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
