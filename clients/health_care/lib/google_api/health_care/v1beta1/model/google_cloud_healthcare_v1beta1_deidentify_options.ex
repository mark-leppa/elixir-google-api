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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DeidentifyOptions do
  @moduledoc """
  Specifies additional options to apply to the base `profile`.

  ## Attributes

  *   `characterMaskConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.CharacterMaskConfig.t`, *default:* `nil`) - Character mask config for `CharacterMaskField` `FieldMetadatas`.
  *   `contextualDeid` (*type:* `GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig.t`, *default:* `nil`) - Configure contextual de-id.
  *   `cryptoHashConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig.t`, *default:* `nil`) - Crypo hash config for `CharacterMaskField` `FieldMetadatas`.
  *   `dateShiftConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DateShiftConfig.t`, *default:* `nil`) - Date shifting config for `CharacterMaskField` `FieldMetadatas`.
  *   `keepExtensions` (*type:* `GoogleApi.HealthCare.V1beta1.Model.KeepExtensionsConfig.t`, *default:* `nil`) - Configure keeping extensions by default.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :characterMaskConfig =>
            GoogleApi.HealthCare.V1beta1.Model.CharacterMaskConfig.t() | nil,
          :contextualDeid => GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig.t() | nil,
          :cryptoHashConfig => GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig.t() | nil,
          :dateShiftConfig => GoogleApi.HealthCare.V1beta1.Model.DateShiftConfig.t() | nil,
          :keepExtensions => GoogleApi.HealthCare.V1beta1.Model.KeepExtensionsConfig.t() | nil
        }

  field(:characterMaskConfig, as: GoogleApi.HealthCare.V1beta1.Model.CharacterMaskConfig)
  field(:contextualDeid, as: GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig)
  field(:cryptoHashConfig, as: GoogleApi.HealthCare.V1beta1.Model.CryptoHashConfig)
  field(:dateShiftConfig, as: GoogleApi.HealthCare.V1beta1.Model.DateShiftConfig)
  field(:keepExtensions, as: GoogleApi.HealthCare.V1beta1.Model.KeepExtensionsConfig)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DeidentifyOptions do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DeidentifyOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DeidentifyOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
