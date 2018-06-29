# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.OrdersInStoreRefundLineItemRequest do
  @moduledoc """


  ## Attributes

  - amountPretax (Price): The amount that is refunded. Required. Defaults to: `null`.
  - amountTax (Price): Tax amount that correspond to refund amount in amountPretax. Required. Defaults to: `null`.
  - lineItemId (String.t): The ID of the line item to return. Either lineItemId or productId is required. Defaults to: `null`.
  - operationId (String.t): The ID of the operation. Unique across all operations for a given order. Defaults to: `null`.
  - productId (String.t): The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required. Defaults to: `null`.
  - quantity (integer()): The quantity to return and refund. Defaults to: `null`.
  - reason (String.t): The reason for the return. Defaults to: `null`.
  - reasonText (String.t): The explanation of the reason. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amountPretax => GoogleApi.Content.V2.Model.Price.t(),
          :amountTax => GoogleApi.Content.V2.Model.Price.t(),
          :lineItemId => any(),
          :operationId => any(),
          :productId => any(),
          :quantity => any(),
          :reason => any(),
          :reasonText => any()
        }

  field(:amountPretax, as: GoogleApi.Content.V2.Model.Price)
  field(:amountTax, as: GoogleApi.Content.V2.Model.Price)
  field(:lineItemId)
  field(:operationId)
  field(:productId)
  field(:quantity)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrdersInStoreRefundLineItemRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrdersInStoreRefundLineItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrdersInStoreRefundLineItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
