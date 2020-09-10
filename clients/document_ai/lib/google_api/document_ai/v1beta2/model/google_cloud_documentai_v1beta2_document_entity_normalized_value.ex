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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue do
  @moduledoc """
  Parsed and normalized entity value.

  ## Attributes

  *   `addressValue` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleTypePostalAddress.t`, *default:* `nil`) - Postal address. See also: https: //github.com/googleapis/googleapis/blob/ // master/google/type/postal_address.proto
  *   `dateValue` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeDate.t`, *default:* `nil`) - Date value. Includes year, month, day. See also: https: //github.com/googleapis/googleapis/blob/master/google/type/date.proto
  *   `datetimeValue` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeDateTime.t`, *default:* `nil`) - DateTime value. Includes date, time, and timezone. See also: https: //github.com/googleapis/googleapis/blob/ // master/google/type/datetime.proto
  *   `moneyValue` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeMoney.t`, *default:* `nil`) - Money value. See also: https: //github.com/googleapis/googleapis/blob/ // master/google/type/money.proto
  *   `text` (*type:* `String.t`, *default:* `nil`) - Required. Normalized entity value stored as a string. This field is populated for supported document type (e.g. Invoice). For some entity types, one of respective 'structured_value' fields may also be populated. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressValue => GoogleApi.DocumentAI.V1beta2.Model.GoogleTypePostalAddress.t(),
          :dateValue => GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeDate.t(),
          :datetimeValue => GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeDateTime.t(),
          :moneyValue => GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeMoney.t(),
          :text => String.t()
        }

  field(:addressValue, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleTypePostalAddress)
  field(:dateValue, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeDate)
  field(:datetimeValue, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeDateTime)
  field(:moneyValue, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleTypeMoney)
  field(:text)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
