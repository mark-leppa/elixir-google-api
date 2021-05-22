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

defmodule GoogleApi.Spanner.V1.Model.Metric do
  @moduledoc """
  A message representing the actual monitoring data, values for each key bucket over time, of a metric.

  ## Attributes

  *   `aggregation` (*type:* `String.t`, *default:* `nil`) - The aggregation function used to aggregate each key bucket
  *   `category` (*type:* `GoogleApi.Spanner.V1.Model.LocalizedString.t`, *default:* `nil`) - The category of the metric, e.g. "Activity", "Alerts", "Reads", etc.
  *   `derived` (*type:* `GoogleApi.Spanner.V1.Model.DerivedMetric.t`, *default:* `nil`) - The references to numerator and denominator metrics for a derived metric.
  *   `displayLabel` (*type:* `GoogleApi.Spanner.V1.Model.LocalizedString.t`, *default:* `nil`) - The displayed label of the metric.
  *   `hasNonzeroData` (*type:* `boolean()`, *default:* `nil`) - Whether the metric has any non-zero data.
  *   `hotValue` (*type:* `number()`, *default:* `nil`) - The value that is considered hot for the metric. On a per metric basis hotness signals high utilization and something that might potentially be a cause for concern by the end user. hot_value is used to calibrate and scale visual color scales.
  *   `indexedHotKeys` (*type:* `%{optional(String.t) => GoogleApi.Spanner.V1.Model.IndexedHotKey.t}`, *default:* `nil`) - The (sparse) mapping from time index to an IndexedHotKey message, representing those time intervals for which there are hot keys.
  *   `indexedKeyRangeInfos` (*type:* `%{optional(String.t) => GoogleApi.Spanner.V1.Model.IndexedKeyRangeInfos.t}`, *default:* `nil`) - The (sparse) mapping from time interval index to an IndexedKeyRangeInfos message, representing those time intervals for which there are informational messages concerning key ranges.
  *   `info` (*type:* `GoogleApi.Spanner.V1.Model.LocalizedString.t`, *default:* `nil`) - Information about the metric.
  *   `matrix` (*type:* `GoogleApi.Spanner.V1.Model.MetricMatrix.t`, *default:* `nil`) - The data for the metric as a matrix.
  *   `unit` (*type:* `GoogleApi.Spanner.V1.Model.LocalizedString.t`, *default:* `nil`) - The unit of the metric.
  *   `visible` (*type:* `boolean()`, *default:* `nil`) - Whether the metric is visible to the end user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregation => String.t() | nil,
          :category => GoogleApi.Spanner.V1.Model.LocalizedString.t() | nil,
          :derived => GoogleApi.Spanner.V1.Model.DerivedMetric.t() | nil,
          :displayLabel => GoogleApi.Spanner.V1.Model.LocalizedString.t() | nil,
          :hasNonzeroData => boolean() | nil,
          :hotValue => number() | nil,
          :indexedHotKeys =>
            %{optional(String.t()) => GoogleApi.Spanner.V1.Model.IndexedHotKey.t()} | nil,
          :indexedKeyRangeInfos =>
            %{optional(String.t()) => GoogleApi.Spanner.V1.Model.IndexedKeyRangeInfos.t()} | nil,
          :info => GoogleApi.Spanner.V1.Model.LocalizedString.t() | nil,
          :matrix => GoogleApi.Spanner.V1.Model.MetricMatrix.t() | nil,
          :unit => GoogleApi.Spanner.V1.Model.LocalizedString.t() | nil,
          :visible => boolean() | nil
        }

  field(:aggregation)
  field(:category, as: GoogleApi.Spanner.V1.Model.LocalizedString)
  field(:derived, as: GoogleApi.Spanner.V1.Model.DerivedMetric)
  field(:displayLabel, as: GoogleApi.Spanner.V1.Model.LocalizedString)
  field(:hasNonzeroData)
  field(:hotValue)
  field(:indexedHotKeys, as: GoogleApi.Spanner.V1.Model.IndexedHotKey, type: :map)
  field(:indexedKeyRangeInfos, as: GoogleApi.Spanner.V1.Model.IndexedKeyRangeInfos, type: :map)
  field(:info, as: GoogleApi.Spanner.V1.Model.LocalizedString)
  field(:matrix, as: GoogleApi.Spanner.V1.Model.MetricMatrix)
  field(:unit, as: GoogleApi.Spanner.V1.Model.LocalizedString)
  field(:visible)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Metric do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Metric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Metric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
