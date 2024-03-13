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

defmodule GoogleApi.WalletObjects.V1.Model.GenericClass do
  @moduledoc """
  Generic Class

  ## Attributes

  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Callback options to be used to call the issuer back for every save/delete of an object for this class by the end-user. All objects of this class are eligible for the callback.
  *   `classTemplateInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t`, *default:* `nil`) - Template information about how the class should be displayed. If unset, Google will fallback to a default set of fields to display.
  *   `enableSmartTap` (*type:* `boolean()`, *default:* `nil`) - Available only to Smart Tap enabled partners. Contact support for additional guidance.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for the class. This ID must be unique across all from an issuer. This value needs to follow the format `issuerID.identifier` where `issuerID` is issued by Google and `identifier` is chosen by you. The unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. If `imageModulesData` is also defined on the object, both will be displayed. Only one of the image from class and one from object level will be rendered when both set.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If `linksModuleData` is also defined on the object, both will be displayed. The maximum number of these fields displayed is 10 from class and 10 from object.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `multipleDevicesAndHoldersAllowedStatus` (*type:* `String.t`, *default:* `nil`) - Identifies whether multiple users and devices will save the same object referencing this class.
  *   `redemptionIssuers` (*type:* `list(String.t)`, *default:* `nil`) - Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are identified by their issuer ID. Redemption issuers must have at least one Smart Tap key configured. The `enableSmartTap` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `securityAnimation` (*type:* `GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t`, *default:* `nil`) - Optional information about the security animation. If this is set a security animation will be rendered on pass details.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If `textModulesData` is also defined on the object, both will be displayed. The maximum number of these fields displayed is 10 from class and 10 from object.
  *   `viewUnlockRequirement` (*type:* `String.t`, *default:* `nil`) - View Unlock Requirement options for the generic pass.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :classTemplateInfo => GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t() | nil,
          :enableSmartTap => boolean() | nil,
          :id => String.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :multipleDevicesAndHoldersAllowedStatus => String.t() | nil,
          :redemptionIssuers => list(String.t()) | nil,
          :securityAnimation => GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :viewUnlockRequirement => String.t() | nil
        }

  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:classTemplateInfo, as: GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo)
  field(:enableSmartTap)
  field(:id)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:multipleDevicesAndHoldersAllowedStatus)
  field(:redemptionIssuers, type: :list)
  field(:securityAnimation, as: GoogleApi.WalletObjects.V1.Model.SecurityAnimation)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:viewUnlockRequirement)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.GenericClass do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.GenericClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.GenericClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
