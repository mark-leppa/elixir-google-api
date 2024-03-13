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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryEvent do
  @moduledoc """
  A set of changes within a Google Analytics account or its child properties that resulted from the same cause. Common causes would be updates made in the Google Analytics UI, changes from customer support, or automatic Google Analytics system changes.

  ## Attributes

  *   `actorType` (*type:* `String.t`, *default:* `nil`) - The type of actor that made this change.
  *   `changeTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when change was made.
  *   `changes` (*type:* `list(GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChange.t)`, *default:* `nil`) - A list of changes made in this change history event that fit the filters specified in SearchChangeHistoryEventsRequest.
  *   `changesFiltered` (*type:* `boolean()`, *default:* `nil`) - If true, then the list of changes returned was filtered, and does not represent all changes that occurred in this event.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this change history event. This ID is unique across Google Analytics.
  *   `userActorEmail` (*type:* `String.t`, *default:* `nil`) - Email address of the Google account that made the change. This will be a valid email address if the actor field is set to USER, and empty otherwise. Google accounts that have been deleted will cause an error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actorType => String.t() | nil,
          :changeTime => DateTime.t() | nil,
          :changes =>
            list(
              GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChange.t()
            )
            | nil,
          :changesFiltered => boolean() | nil,
          :id => String.t() | nil,
          :userActorEmail => String.t() | nil
        }

  field(:actorType)
  field(:changeTime, as: DateTime)

  field(:changes,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChange,
    type: :list
  )

  field(:changesFiltered)
  field(:id)
  field(:userActorEmail)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryEvent do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
