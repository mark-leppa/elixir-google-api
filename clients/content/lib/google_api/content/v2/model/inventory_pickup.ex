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

defmodule GoogleApi.Content.V2.Model.InventoryPickup do
  @moduledoc """


  ## Attributes

  - pickupMethod (String.t): Whether store pickup is available for this offer and whether the pickup option should be shown as buy, reserve, or not supported. Only supported for local inventory. Unless the value is \&quot;not supported\&quot;, must be submitted together with pickupSla. Defaults to: `null`.
  - pickupSla (String.t): The expected date that an order will be ready for pickup, relative to when the order is placed. Only supported for local inventory. Must be submitted together with pickupMethod. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pickupMethod => any(),
          :pickupSla => any()
        }

  field(:pickupMethod)
  field(:pickupSla)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.InventoryPickup do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.InventoryPickup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.InventoryPickup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
