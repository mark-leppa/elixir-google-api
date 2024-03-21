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

defmodule GoogleApi.IAM.V1.Model.ReconciliationOperationMetadata do
  @moduledoc """
  Operation metadata returned by the CLH during resource state reconciliation.

  ## Attributes

  *   `deleteResource` (*type:* `boolean()`, *default:* `nil`) - DEPRECATED. Use exclusive_action instead.
  *   `exclusiveAction` (*type:* `String.t`, *default:* `nil`) - Excluisive action returned by the CLH.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleteResource => boolean() | nil,
          :exclusiveAction => String.t() | nil
        }

  field(:deleteResource)
  field(:exclusiveAction)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.ReconciliationOperationMetadata do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.ReconciliationOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.ReconciliationOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
