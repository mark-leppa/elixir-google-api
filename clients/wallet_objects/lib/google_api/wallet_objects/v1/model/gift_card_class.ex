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

defmodule GoogleApi.WalletObjects.V1.Model.GiftCardClass do
  @moduledoc """


  ## Attributes

  *   `redemptionIssuers` (*type:* `list(String.t)`, *default:* `nil`) - Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are identified by their issuer ID. Redemption issuers must have at least one Smart Tap key configured. The `enableSmartTap` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `securityAnimation` (*type:* `GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t`, *default:* `nil`) - Optional information about the security animation. If this is set a security animation will be rendered on pass details.
  *   `localizedMerchantName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the merchant_name. The app may display an ellipsis after the first 20 characters to ensure full string is displayed on smaller screens.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#giftCardClass"`.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also use the shorthand version of the RGB triplet which is #rgb, such as `#fc0`.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `review` (*type:* `GoogleApi.WalletObjects.V1.Model.Review.t`, *default:* `nil`) - The review comments set by the platform when a class is marked `approved` or `rejected`.
  *   `localizedIssuerName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `localizedPinLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the pin_label.
  *   `wordMark` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Deprecated.
  *   `pinLabel` (*type:* `String.t`, *default:* `nil`) - The label to display for the PIN, such as "4-digit PIN".
  *   `issuerName` (*type:* `String.t`, *default:* `nil`) - Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `allowMultipleUsersPerObject` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
  *   `allowBarcodeRedemption` (*type:* `boolean()`, *default:* `nil`) - Determines whether the merchant supports gift card redemption using barcode. If true, app displays a barcode for the gift card on the Gift card details screen. If false, a barcode is not displayed.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `homepageUri` (*type:* `GoogleApi.WalletObjects.V1.Model.Uri.t`, *default:* `nil`) - The URI of your application's home page. Populating the URI in this field results in the exact same behavior as populating an URI in linksModuleData (when an object is rendered, a link to the homepage is shown in what would usually be thought of as the linksModuleData section of the object).
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the object, both will be displayed.
  *   `wideProgramLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The wide logo of the gift card program or company. When provided, this will be used in place of the program logo in the top left of the card view.
  *   `cardNumberLabel` (*type:* `String.t`, *default:* `nil`) - The label to display for the card number, such as "Card Number".
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `reviewStatus` (*type:* `String.t`, *default:* `nil`) - Required. The status of the class. This field can be set to `draft` or `underReview` using the insert, patch, or update API calls. Once the review state is changed from `draft` it may not be changed back to `draft`. You should keep this field to `draft` when the class is under development. A `draft` class cannot be used to create any object. You should set this field to `underReview` when you believe the class is ready for use. The platform will automatically set this field to `approved` and it can be immediately used to create or migrate objects. When updating an already `approved` class you should keep setting this field to `underReview`.
  *   `multipleDevicesAndHoldersAllowedStatus` (*type:* `String.t`, *default:* `nil`) - Identifies whether multiple users and devices will save the same object referencing this class.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, nothing will be displayed. The image will display at 100% width.
  *   `programLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The logo of the gift card program or company. This logo is displayed in both the details and list views of the app.
  *   `merchantName` (*type:* `String.t`, *default:* `nil`) - Merchant name, such as "Adam's Apparel". The app may display an ellipsis after the first 20 characters to ensure full string is displayed on smaller screens.
  *   `classTemplateInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t`, *default:* `nil`) - Template information about how the class should be displayed. If unset, Google will fallback to a default set of fields to display.
  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Callback options to be used to call the issuer back for every save/delete of an object for this class by the end-user. All objects of this class are eligible for the callback.
  *   `eventNumberLabel` (*type:* `String.t`, *default:* `nil`) - The label to display for event number, such as "Target Event #".
  *   `enableSmartTap` (*type:* `boolean()`, *default:* `nil`) - Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code used to display the card's country (when the user is not in that country), as well as to display localized content when content is not available in the user's locale.
  *   `localizedCardNumberLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the card_number_label.
  *   `viewUnlockRequirement` (*type:* `String.t`, *default:* `nil`) - View Unlock Requirement options for the gift card.
  *   `localizedEventNumberLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the event_number_label.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow the format issuer ID. identifier where the former is issued by Google and latter is chosen by you. Your unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :redemptionIssuers => list(String.t()) | nil,
          :securityAnimation => GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t() | nil,
          :localizedMerchantName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :kind => String.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :review => GoogleApi.WalletObjects.V1.Model.Review.t() | nil,
          :localizedIssuerName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :localizedPinLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :wordMark => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :pinLabel => String.t() | nil,
          :issuerName => String.t() | nil,
          :allowMultipleUsersPerObject => boolean() | nil,
          :allowBarcodeRedemption => boolean() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :version => String.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :homepageUri => GoogleApi.WalletObjects.V1.Model.Uri.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :wideProgramLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :cardNumberLabel => String.t() | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :reviewStatus => String.t() | nil,
          :multipleDevicesAndHoldersAllowedStatus => String.t() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :programLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :merchantName => String.t() | nil,
          :classTemplateInfo => GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t() | nil,
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :eventNumberLabel => String.t() | nil,
          :enableSmartTap => boolean() | nil,
          :countryCode => String.t() | nil,
          :localizedCardNumberLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :viewUnlockRequirement => String.t() | nil,
          :localizedEventNumberLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :id => String.t() | nil
        }

  field(:redemptionIssuers, type: :list)
  field(:securityAnimation, as: GoogleApi.WalletObjects.V1.Model.SecurityAnimation)
  field(:localizedMerchantName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:kind)
  field(:hexBackgroundColor)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:review, as: GoogleApi.WalletObjects.V1.Model.Review)
  field(:localizedIssuerName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:localizedPinLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:wordMark, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:pinLabel)
  field(:issuerName)
  field(:allowMultipleUsersPerObject)
  field(:allowBarcodeRedemption)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:version)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:homepageUri, as: GoogleApi.WalletObjects.V1.Model.Uri)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:wideProgramLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:cardNumberLabel)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:reviewStatus)
  field(:multipleDevicesAndHoldersAllowedStatus)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:programLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:merchantName)
  field(:classTemplateInfo, as: GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo)
  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:eventNumberLabel)
  field(:enableSmartTap)
  field(:countryCode)
  field(:localizedCardNumberLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:viewUnlockRequirement)
  field(:localizedEventNumberLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.GiftCardClass do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.GiftCardClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.GiftCardClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
