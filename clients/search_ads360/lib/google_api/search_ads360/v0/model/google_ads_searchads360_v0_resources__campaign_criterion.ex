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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CampaignCriterion do
  @moduledoc """
  A campaign criterion.

  ## Attributes

  *   `ageRange` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AgeRangeInfo.t`, *default:* `nil`) - Immutable. Age range.
  *   `bidModifier` (*type:* `number()`, *default:* `nil`) - The modifier for the bids when the criterion matches. The modifier must be in the range: 0.1 - 10.0. Most targetable criteria types support modifiers. Use 0 to opt out of a Device type.
  *   `criterionId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the criterion. This field is ignored during mutate.
  *   `device` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_DeviceInfo.t`, *default:* `nil`) - Immutable. Device.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the criterion. This field is ignored for mutates.
  *   `gender` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_GenderInfo.t`, *default:* `nil`) - Immutable. Gender.
  *   `keyword` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo.t`, *default:* `nil`) - Immutable. Keyword.
  *   `language` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LanguageInfo.t`, *default:* `nil`) - Immutable. Language.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The datetime when this campaign criterion was last modified. The datetime is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
  *   `location` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationInfo.t`, *default:* `nil`) - Immutable. Location.
  *   `locationGroup` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationGroupInfo.t`, *default:* `nil`) - Immutable. Location Group
  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Immutable. Whether to target (`false`) or exclude (`true`) the criterion.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the campaign criterion. Campaign criterion resource names have the form: `customers/{customer_id}/campaignCriteria/{campaign_id}~{criterion_id}`
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the criterion.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the criterion.
  *   `userList` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UserListInfo.t`, *default:* `nil`) - Immutable. User List.
  *   `webpage` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_WebpageInfo.t`, *default:* `nil`) - Immutable. Webpage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ageRange =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AgeRangeInfo.t() | nil,
          :bidModifier => number() | nil,
          :criterionId => String.t() | nil,
          :device =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_DeviceInfo.t() | nil,
          :displayName => String.t() | nil,
          :gender =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_GenderInfo.t() | nil,
          :keyword =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo.t() | nil,
          :language =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LanguageInfo.t() | nil,
          :lastModifiedTime => String.t() | nil,
          :location =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationInfo.t() | nil,
          :locationGroup =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationGroupInfo.t()
            | nil,
          :negative => boolean() | nil,
          :resourceName => String.t() | nil,
          :status => String.t() | nil,
          :type => String.t() | nil,
          :userList =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UserListInfo.t() | nil,
          :webpage =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_WebpageInfo.t() | nil
        }

  field(:ageRange, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AgeRangeInfo)
  field(:bidModifier)
  field(:criterionId)
  field(:device, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_DeviceInfo)
  field(:displayName)
  field(:gender, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_GenderInfo)
  field(:keyword, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo)
  field(:language, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LanguageInfo)
  field(:lastModifiedTime)
  field(:location, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationInfo)

  field(:locationGroup,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationGroupInfo
  )

  field(:negative)
  field(:resourceName)
  field(:status)
  field(:type)
  field(:userList, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UserListInfo)
  field(:webpage, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_WebpageInfo)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CampaignCriterion do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CampaignCriterion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CampaignCriterion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
