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

defmodule GoogleApi.WalletObjects.V1.Model.DiscoverableProgram do
  @moduledoc """
  Information about how a class may be discovered and instantiated from within the Android Pay app. This is done by searching for a loyalty or gift card program and scanning or manually entering.

  ## Attributes

  *   `merchantSigninInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.DiscoverableProgramMerchantSigninInfo.t`, *default:* `nil`) - Information about the ability to signin and add a valuable for this program through a merchant site. Used when MERCHANT_HOSTED_SIGNIN is enabled.
  *   `merchantSignupInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.DiscoverableProgramMerchantSignupInfo.t`, *default:* `nil`) - Information about the ability to signup and add a valuable for this program through a merchant site. Used when MERCHANT_HOSTED_SIGNUP is enabled.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Visibility state of the discoverable program.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :merchantSigninInfo =>
            GoogleApi.WalletObjects.V1.Model.DiscoverableProgramMerchantSigninInfo.t() | nil,
          :merchantSignupInfo =>
            GoogleApi.WalletObjects.V1.Model.DiscoverableProgramMerchantSignupInfo.t() | nil,
          :state => String.t() | nil
        }

  field(:merchantSigninInfo,
    as: GoogleApi.WalletObjects.V1.Model.DiscoverableProgramMerchantSigninInfo
  )

  field(:merchantSignupInfo,
    as: GoogleApi.WalletObjects.V1.Model.DiscoverableProgramMerchantSignupInfo
  )

  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.DiscoverableProgram do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.DiscoverableProgram.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.DiscoverableProgram do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
