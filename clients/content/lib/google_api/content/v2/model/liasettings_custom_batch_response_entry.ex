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

defmodule GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry do
  @moduledoc """


  ## Attributes

  - batchId (integer()): The ID of the request entry to which this entry responds. Defaults to: `null`.
  - errors (Errors): A list of errors defined if, and only if, the request failed. Defaults to: `null`.
  - gmbAccounts (GmbAccounts): The the list of accessible GMB accounts. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;content#liasettingsCustomBatchResponseEntry\&quot;. Defaults to: `null`.
  - liaSettings (LiaSettings): The retrieved or updated Lia settings. Defaults to: `null`.
  - posDataProviders ([PosDataProviders]): The list of POS data providers. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => any(),
          :errors => GoogleApi.Content.V2.Model.Errors.t(),
          :gmbAccounts => GoogleApi.Content.V2.Model.GmbAccounts.t(),
          :kind => any(),
          :liaSettings => GoogleApi.Content.V2.Model.LiaSettings.t(),
          :posDataProviders => list(GoogleApi.Content.V2.Model.PosDataProviders.t())
        }

  field(:batchId)
  field(:errors, as: GoogleApi.Content.V2.Model.Errors)
  field(:gmbAccounts, as: GoogleApi.Content.V2.Model.GmbAccounts)
  field(:kind)
  field(:liaSettings, as: GoogleApi.Content.V2.Model.LiaSettings)
  field(:posDataProviders, as: GoogleApi.Content.V2.Model.PosDataProviders, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
