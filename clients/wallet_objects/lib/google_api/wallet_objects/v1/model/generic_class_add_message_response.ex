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

defmodule GoogleApi.WalletObjects.V1.Model.GenericClassAddMessageResponse do
  @moduledoc """
  Response to adding a new issuer message to the class. This contains the entire updated GenericClass.

  ## Attributes

  *   `resource` (*type:* `GoogleApi.WalletObjects.V1.Model.GenericClass.t`, *default:* `nil`) - The updated EventTicketClass resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resource => GoogleApi.WalletObjects.V1.Model.GenericClass.t() | nil
        }

  field(:resource, as: GoogleApi.WalletObjects.V1.Model.GenericClass)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.GenericClassAddMessageResponse do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.GenericClassAddMessageResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.GenericClassAddMessageResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
