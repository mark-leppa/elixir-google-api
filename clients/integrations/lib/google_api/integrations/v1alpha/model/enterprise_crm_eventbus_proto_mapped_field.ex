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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoMappedField do
  @moduledoc """
  Mapped field is a pair of input field and output field.

  ## Attributes

  *   `inputField` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoField.t`, *default:* `nil`) - The input field being mapped from.
  *   `outputField` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoField.t`, *default:* `nil`) - The output field being mapped to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputField =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoField.t() | nil,
          :outputField =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoField.t() | nil
        }

  field(:inputField, as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoField)
  field(:outputField, as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoField)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoMappedField do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoMappedField.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoMappedField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
