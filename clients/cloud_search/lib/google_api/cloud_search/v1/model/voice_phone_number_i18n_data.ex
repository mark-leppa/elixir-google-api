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

defmodule GoogleApi.CloudSearch.V1.Model.VoicePhoneNumberI18nData do
  @moduledoc """


  ## Attributes

  *   `countryCode` (*type:* `integer()`, *default:* `nil`) - The country calling code for this number, as defined by the ITU. For example, this would be 1 for NANPA countries, and 33 for France (for more info see i18n.phonenumbers.PhoneNumber.country_code).
  *   `internationalNumber` (*type:* `String.t`, *default:* `nil`) - Display number formatted using the INTERNATIONAL format.
  *   `isValid` (*type:* `boolean()`, *default:* `nil`) - When present, indicates the number is valid according to the libphonenumber's isValidNumber API (see https://code.google.com/p/libphonenumber/).
  *   `nationalNumber` (*type:* `String.t`, *default:* `nil`) - Display number formatted using the NATIONAL format.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - A region (country, territory, continent, etc), as defined by Unicode's "CLDR", itself based on ISO 3166 (UN country codes). For details, see https://www.corp.google.com/~engdocs/java/com/google/i18n/identifiers/RegionCode.html
  *   `validationResult` (*type:* `String.t`, *default:* `nil`) - When set to a non-default value, indicates the validation reason that is set when phone number is invalid (is_valid is false).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countryCode => integer() | nil,
          :internationalNumber => String.t() | nil,
          :isValid => boolean() | nil,
          :nationalNumber => String.t() | nil,
          :regionCode => String.t() | nil,
          :validationResult => String.t() | nil
        }

  field(:countryCode)
  field(:internationalNumber)
  field(:isValid)
  field(:nationalNumber)
  field(:regionCode)
  field(:validationResult)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.VoicePhoneNumberI18nData do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.VoicePhoneNumberI18nData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.VoicePhoneNumberI18nData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
