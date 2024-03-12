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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep do
  @moduledoc """
  A condition that must occur in the specified step order for this user to match the sequence.

  ## Attributes

  *   `constraintDuration` (*type:* `String.t`, *default:* `nil`) - Optional. When set, this step must be satisfied within the constraint_duration of the previous step (For example, t[i] - t[i-1] <= constraint_duration). If not set, there is no duration requirement (the duration is effectively unlimited). It is ignored for the first step.
  *   `filterExpression` (*type:* `GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceFilterExpression.t`, *default:* `nil`) - Required. Immutable. A logical expression of Audience dimension, metric, or event filters in each step.
  *   `immediatelyFollows` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the event satisfying this step must be the very next event after the event satisfying the last step. If unset or false, this step indirectly follows the prior step; for example, there may be events between the prior step and this step. It is ignored for the first step.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Specifies the scope for this step.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :constraintDuration => String.t() | nil,
          :filterExpression =>
            GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceFilterExpression.t()
            | nil,
          :immediatelyFollows => boolean() | nil,
          :scope => String.t() | nil
        }

  field(:constraintDuration)

  field(:filterExpression,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceFilterExpression
  )

  field(:immediatelyFollows)
  field(:scope)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceSequenceFilterAudienceSequenceStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
