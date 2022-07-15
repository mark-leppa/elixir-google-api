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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot do
  @moduledoc """
  Snapshot of the configurations used to generate the profile.

  ## Attributes

  *   `dataProfileJob` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileJobConfig.t`, *default:* `nil`) - A copy of the configuration used to generate this profile.
  *   `inspectConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t`, *default:* `nil`) - A copy of the inspection config used to generate this profile. This is a copy of the inspect_template specified in `DataProfileJobConfig`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataProfileJob =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileJobConfig.t() | nil,
          :inspectConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t() | nil
        }

  field(:dataProfileJob, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileJobConfig)
  field(:inspectConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end