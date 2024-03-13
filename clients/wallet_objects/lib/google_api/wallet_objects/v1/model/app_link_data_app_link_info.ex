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

defmodule GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfo do
  @moduledoc """


  ## Attributes

  *   `appLogoImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional image to be displayed in the App Link Module
  *   `appTarget` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfoAppTarget.t`, *default:* `nil`) - Url to follow when opening the App Link Module on clients. It will be used by partners to open their webpage or deeplink into their app.
  *   `description` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - String to be displayed in the description of the App Link Module Required
  *   `title` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - String to be displayed in the title of the App Link Module Required
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appLogoImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :appTarget =>
            GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfoAppTarget.t() | nil,
          :description => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :title => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil
        }

  field(:appLogoImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:appTarget, as: GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfoAppTarget)
  field(:description, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:title, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfo do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.AppLinkDataAppLinkInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
