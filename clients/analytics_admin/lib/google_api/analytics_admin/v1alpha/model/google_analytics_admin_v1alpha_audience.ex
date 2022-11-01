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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudience do
  @moduledoc """
  A resource message representing a GA4 Audience.

  ## Attributes

  *   `adsPersonalizationEnabled` (*type:* `boolean()`, *default:* `nil`) - Output only. It is automatically set by GA to false if this is an NPA Audience and is excluded from ads personalization.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Required. The description of the Audience.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the Audience.
  *   `eventTrigger` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger.t`, *default:* `nil`) - Optional. Specifies an event to log when a user joins the Audience. If not set, no event is logged when a user joins the Audience.
  *   `exclusionDurationMode` (*type:* `String.t`, *default:* `nil`) - Immutable. Specifies how long an exclusion lasts for users that meet the exclusion filter. It is applied to all EXCLUDE filter clauses and is ignored when there is no EXCLUDE filter clause in the Audience.
  *   `filterClauses` (*type:* `list(GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceFilterClause.t)`, *default:* `nil`) - Required. Immutable. Unordered list. Filter clauses that define the Audience. All clauses will be AND’ed together.
  *   `membershipDurationDays` (*type:* `integer()`, *default:* `nil`) - Required. Immutable. The duration a user should stay in an Audience. It cannot be set to more than 540 days.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this Audience resource. Format: properties/{propertyId}/audiences/{audienceId}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adsPersonalizationEnabled => boolean() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :eventTrigger =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger.t()
            | nil,
          :exclusionDurationMode => String.t() | nil,
          :filterClauses =>
            list(
              GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceFilterClause.t()
            )
            | nil,
          :membershipDurationDays => integer() | nil,
          :name => String.t() | nil
        }

  field(:adsPersonalizationEnabled)
  field(:description)
  field(:displayName)

  field(:eventTrigger,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceEventTrigger
  )

  field(:exclusionDurationMode)

  field(:filterClauses,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceFilterClause,
    type: :list
  )

  field(:membershipDurationDays)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudience do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudience.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
