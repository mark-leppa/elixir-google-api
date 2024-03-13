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

defmodule GoogleApi.WalletObjects.V1.Model.EventTicketClass do
  @moduledoc """


  ## Attributes

  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `homepageUri` (*type:* `GoogleApi.WalletObjects.V1.Model.Uri.t`, *default:* `nil`) - The URI of your application's home page. Populating the URI in this field results in the exact same behavior as populating an URI in linksModuleData (when an object is rendered, a link to the homepage is shown in what would usually be thought of as the linksModuleData section of the object).
  *   `wordMark` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Deprecated.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code used to display the card's country (when the user is not in that country), as well as to display localized content when content is not available in the user's locale.
  *   `classTemplateInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t`, *default:* `nil`) - Template information about how the class should be displayed. If unset, Google will fallback to a default set of fields to display.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the object, both will be displayed.
  *   `eventName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Required. The name of the event, such as "LA Dodgers at SF Giants".
  *   `sectionLabel` (*type:* `String.t`, *default:* `nil`) - The label to use for the section value (`eventTicketObject.seatInfo.section`) on the card detail view. Each available option maps to a set of localized strings, so that translations are shown to the user based on their locale. Both `sectionLabel` and `customSectionLabel` may not be set. If neither is set, the label will default to "Section", localized. If the section field is unset, this label will not be used.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#eventTicketClass"`.
  *   `finePrint` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - The fine print, terms, or conditions of the ticket.
  *   `customSectionLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the section value (`eventTicketObject.seatInfo.section`) on the card detail view. This should only be used if the default "Section" label or one of the `sectionLabel` options is not sufficient. Both `sectionLabel` and `customSectionLabel` may not be set. If neither is set, the label will default to "Section", localized. If the section field is unset, this label will not be used.
  *   `localizedIssuerName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `multipleDevicesAndHoldersAllowedStatus` (*type:* `String.t`, *default:* `nil`) - Identifies whether multiple users and devices will save the same object referencing this class.
  *   `issuerName` (*type:* `String.t`, *default:* `nil`) - Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `venue` (*type:* `GoogleApi.WalletObjects.V1.Model.EventVenue.t`, *default:* `nil`) - Event venue details.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also use the shorthand version of the RGB triplet which is #rgb, such as `#fc0`.
  *   `securityAnimation` (*type:* `GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t`, *default:* `nil`) - Optional information about the security animation. If this is set a security animation will be rendered on pass details.
  *   `seatLabel` (*type:* `String.t`, *default:* `nil`) - The label to use for the seat value (`eventTicketObject.seatInfo.seat`) on the card detail view. Each available option maps to a set of localized strings, so that translations are shown to the user based on their locale. Both `seatLabel` and `customSeatLabel` may not be set. If neither is set, the label will default to "Seat", localized. If the seat field is unset, this label will not be used.
  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Callback options to be used to call the issuer back for every save/delete of an object for this class by the end-user. All objects of this class are eligible for the callback.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  *   `viewUnlockRequirement` (*type:* `String.t`, *default:* `nil`) - View Unlock Requirement options for the event ticket.
  *   `customGateLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the gate value (`eventTicketObject.seatInfo.gate`) on the card detail view. This should only be used if the default "Gate" label or one of the `gateLabel` options is not sufficient. Both `gateLabel` and `customGateLabel` may not be set. If neither is set, the label will default to "Gate", localized. If the gate field is unset, this label will not be used.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `eventId` (*type:* `String.t`, *default:* `nil`) - The ID of the event. This ID should be unique for every event in an account. It is used to group tickets together if the user has saved multiple tickets for the same event. It can be at most 64 characters. If provided, the grouping will be stable. Be wary of unintentional collision to avoid grouping tickets that should not be grouped. If you use only one class per event, you can simply set this to the `classId` (with or without the issuer ID portion). If not provided, the platform will attempt to use other data to group tickets (potentially unstable).
  *   `customSeatLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the seat value (`eventTicketObject.seatInfo.seat`) on the card detail view. This should only be used if the default "Seat" label or one of the `seatLabel` options is not sufficient. Both `seatLabel` and `customSeatLabel` may not be set. If neither is set, the label will default to "Seat", localized. If the seat field is unset, this label will not be used.
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `customConfirmationCodeLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the confirmation code value (`eventTicketObject.reservationInfo.confirmationCode`) on the card detail view. This should only be used if the default "Confirmation Code" label or one of the `confirmationCodeLabel` options is not sufficient. Both `confirmationCodeLabel` and `customConfirmationCodeLabel` may not be set. If neither is set, the label will default to "Confirmation Code", localized. If the confirmation code field is unset, this label will not be used.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, nothing will be displayed. The image will display at 100% width.
  *   `logo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The logo image of the ticket. This image is displayed in the card detail view of the app.
  *   `gateLabel` (*type:* `String.t`, *default:* `nil`) - The label to use for the gate value (`eventTicketObject.seatInfo.gate`) on the card detail view. Each available option maps to a set of localized strings, so that translations are shown to the user based on their locale. Both `gateLabel` and `customGateLabel` may not be set. If neither is set, the label will default to "Gate", localized. If the gate field is unset, this label will not be used.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow the format issuer ID. identifier where the former is issued by Google and latter is chosen by you. Your unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `customRowLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the row value (`eventTicketObject.seatInfo.row`) on the card detail view. This should only be used if the default "Row" label or one of the `rowLabel` options is not sufficient. Both `rowLabel` and `customRowLabel` may not be set. If neither is set, the label will default to "Row", localized. If the row field is unset, this label will not be used.
  *   `enableSmartTap` (*type:* `boolean()`, *default:* `nil`) - Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `reviewStatus` (*type:* `String.t`, *default:* `nil`) - Required. The status of the class. This field can be set to `draft` or `underReview` using the insert, patch, or update API calls. Once the review state is changed from `draft` it may not be changed back to `draft`. You should keep this field to `draft` when the class is under development. A `draft` class cannot be used to create any object. You should set this field to `underReview` when you believe the class is ready for use. The platform will automatically set this field to `approved` and it can be immediately used to create or migrate objects. When updating an already `approved` class you should keep setting this field to `underReview`.
  *   `allowMultipleUsersPerObject` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
  *   `wideLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The wide logo of the ticket. When provided, this will be used in place of the logo in the top left of the card view.
  *   `review` (*type:* `GoogleApi.WalletObjects.V1.Model.Review.t`, *default:* `nil`) - The review comments set by the platform when a class is marked `approved` or `rejected`.
  *   `confirmationCodeLabel` (*type:* `String.t`, *default:* `nil`) - The label to use for the confirmation code value (`eventTicketObject.reservationInfo.confirmationCode`) on the card detail view. Each available option maps to a set of localized strings, so that translations are shown to the user based on their locale. Both `confirmationCodeLabel` and `customConfirmationCodeLabel` may not be set. If neither is set, the label will default to "Confirmation Code", localized. If the confirmation code field is unset, this label will not be used.
  *   `redemptionIssuers` (*type:* `list(String.t)`, *default:* `nil`) - Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are identified by their issuer ID. Redemption issuers must have at least one Smart Tap key configured. The `enableSmartTap` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `rowLabel` (*type:* `String.t`, *default:* `nil`) - The label to use for the row value (`eventTicketObject.seatInfo.row`) on the card detail view. Each available option maps to a set of localized strings, so that translations are shown to the user based on their locale. Both `rowLabel` and `customRowLabel` may not be set. If neither is set, the label will default to "Row", localized. If the row field is unset, this label will not be used.
  *   `dateTime` (*type:* `GoogleApi.WalletObjects.V1.Model.EventDateTime.t`, *default:* `nil`) - The date & time information of the event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :homepageUri => GoogleApi.WalletObjects.V1.Model.Uri.t() | nil,
          :wordMark => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :countryCode => String.t() | nil,
          :classTemplateInfo => GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t() | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :eventName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :sectionLabel => String.t() | nil,
          :kind => String.t() | nil,
          :finePrint => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customSectionLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :localizedIssuerName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :multipleDevicesAndHoldersAllowedStatus => String.t() | nil,
          :issuerName => String.t() | nil,
          :venue => GoogleApi.WalletObjects.V1.Model.EventVenue.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :securityAnimation => GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t() | nil,
          :seatLabel => String.t() | nil,
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :version => String.t() | nil,
          :viewUnlockRequirement => String.t() | nil,
          :customGateLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :eventId => String.t() | nil,
          :customSeatLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :customConfirmationCodeLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :logo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :gateLabel => String.t() | nil,
          :id => String.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :customRowLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :enableSmartTap => boolean() | nil,
          :reviewStatus => String.t() | nil,
          :allowMultipleUsersPerObject => boolean() | nil,
          :wideLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :review => GoogleApi.WalletObjects.V1.Model.Review.t() | nil,
          :confirmationCodeLabel => String.t() | nil,
          :redemptionIssuers => list(String.t()) | nil,
          :rowLabel => String.t() | nil,
          :dateTime => GoogleApi.WalletObjects.V1.Model.EventDateTime.t() | nil
        }

  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:homepageUri, as: GoogleApi.WalletObjects.V1.Model.Uri)
  field(:wordMark, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:countryCode)
  field(:classTemplateInfo, as: GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:eventName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:sectionLabel)
  field(:kind)
  field(:finePrint, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customSectionLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:localizedIssuerName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:multipleDevicesAndHoldersAllowedStatus)
  field(:issuerName)
  field(:venue, as: GoogleApi.WalletObjects.V1.Model.EventVenue)
  field(:hexBackgroundColor)
  field(:securityAnimation, as: GoogleApi.WalletObjects.V1.Model.SecurityAnimation)
  field(:seatLabel)
  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:version)
  field(:viewUnlockRequirement)
  field(:customGateLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:eventId)
  field(:customSeatLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:customConfirmationCodeLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:logo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:gateLabel)
  field(:id)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:customRowLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:enableSmartTap)
  field(:reviewStatus)
  field(:allowMultipleUsersPerObject)
  field(:wideLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:review, as: GoogleApi.WalletObjects.V1.Model.Review)
  field(:confirmationCodeLabel)
  field(:redemptionIssuers, type: :list)
  field(:rowLabel)
  field(:dateTime, as: GoogleApi.WalletObjects.V1.Model.EventDateTime)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.EventTicketClass do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.EventTicketClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.EventTicketClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
