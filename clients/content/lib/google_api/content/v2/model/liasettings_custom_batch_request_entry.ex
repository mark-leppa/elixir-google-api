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

defmodule GoogleApi.Content.V2.Model.LiasettingsCustomBatchRequestEntry do
  @moduledoc """


  ## Attributes

  - accountId (String.t): The ID of the account for which to get/update account shipping settings. Defaults to: `null`.
  - batchId (integer()): An entry ID, unique within the batch request. Defaults to: `null`.
  - contactEmail (String.t): Inventory validation contact email. Required only for SetInventoryValidationContact. Defaults to: `null`.
  - contactName (String.t): Inventory validation contact name. Required only for SetInventoryValidationContact. Defaults to: `null`.
  - country (String.t): The country code. Required only for RequestInventoryVerification. Defaults to: `null`.
  - gmbEmail (String.t): The GMB account. Required only for RequestGmbAccess. Defaults to: `null`.
  - liaSettings (LiaSettings): The account Lia settings to update. Only defined if the method is update. Defaults to: `null`.
  - merchantId (String.t): The ID of the managing account. Defaults to: `null`.
  - method (String.t):  Defaults to: `null`.
  - posDataProviderId (String.t): The ID of POS data provider. Required only for SetPosProvider. Defaults to: `null`.
  - posExternalAccountId (String.t): The account ID by which this merchant is known to the POS provider. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :batchId => any(),
          :contactEmail => any(),
          :contactName => any(),
          :country => any(),
          :gmbEmail => any(),
          :liaSettings => GoogleApi.Content.V2.Model.LiaSettings.t(),
          :merchantId => any(),
          :method => any(),
          :posDataProviderId => any(),
          :posExternalAccountId => any()
        }

  field(:accountId)
  field(:batchId)
  field(:contactEmail)
  field(:contactName)
  field(:country)
  field(:gmbEmail)
  field(:liaSettings, as: GoogleApi.Content.V2.Model.LiaSettings)
  field(:merchantId)
  field(:method)
  field(:posDataProviderId)
  field(:posExternalAccountId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.LiasettingsCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.LiasettingsCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.LiasettingsCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
