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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoValueType do
  @moduledoc """
  Used for define type for values. Currently supported value types include int, string, double, array, and any proto message.

  ## Attributes

  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - 
  *   `doubleArray` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoDoubleArray.t`, *default:* `nil`) - 
  *   `doubleValue` (*type:* `float()`, *default:* `nil`) - 
  *   `intArray` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoIntArray.t`, *default:* `nil`) - 
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - 
  *   `protoValue` (*type:* `map()`, *default:* `nil`) - 
  *   `stringArray` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoStringArray.t`, *default:* `nil`) - 
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanValue => boolean() | nil,
          :doubleArray =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoDoubleArray.t() | nil,
          :doubleValue => float() | nil,
          :intArray =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoIntArray.t() | nil,
          :intValue => String.t() | nil,
          :protoValue => map() | nil,
          :stringArray =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoStringArray.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:booleanValue)

  field(:doubleArray,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoDoubleArray
  )

  field(:doubleValue)
  field(:intArray, as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoIntArray)
  field(:intValue)
  field(:protoValue, type: :map)

  field(:stringArray,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoStringArray
  )

  field(:stringValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoValueType do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoValueType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoValueType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
