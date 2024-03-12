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

defmodule GoogleApi.Datastream.V1.Model.OracleSourceConfig do
  @moduledoc """
  Oracle data source configuration

  ## Attributes

  *   `dropLargeObjects` (*type:* `GoogleApi.Datastream.V1.Model.DropLargeObjects.t`, *default:* `nil`) - Drop large object values.
  *   `excludeObjects` (*type:* `GoogleApi.Datastream.V1.Model.OracleRdbms.t`, *default:* `nil`) - Oracle objects to exclude from the stream.
  *   `includeObjects` (*type:* `GoogleApi.Datastream.V1.Model.OracleRdbms.t`, *default:* `nil`) - Oracle objects to include in the stream.
  *   `maxConcurrentBackfillTasks` (*type:* `integer()`, *default:* `nil`) - Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  *   `maxConcurrentCdcTasks` (*type:* `integer()`, *default:* `nil`) - Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  *   `streamLargeObjects` (*type:* `GoogleApi.Datastream.V1.Model.StreamLargeObjects.t`, *default:* `nil`) - Stream large object values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dropLargeObjects => GoogleApi.Datastream.V1.Model.DropLargeObjects.t() | nil,
          :excludeObjects => GoogleApi.Datastream.V1.Model.OracleRdbms.t() | nil,
          :includeObjects => GoogleApi.Datastream.V1.Model.OracleRdbms.t() | nil,
          :maxConcurrentBackfillTasks => integer() | nil,
          :maxConcurrentCdcTasks => integer() | nil,
          :streamLargeObjects => GoogleApi.Datastream.V1.Model.StreamLargeObjects.t() | nil
        }

  field(:dropLargeObjects, as: GoogleApi.Datastream.V1.Model.DropLargeObjects)
  field(:excludeObjects, as: GoogleApi.Datastream.V1.Model.OracleRdbms)
  field(:includeObjects, as: GoogleApi.Datastream.V1.Model.OracleRdbms)
  field(:maxConcurrentBackfillTasks)
  field(:maxConcurrentCdcTasks)
  field(:streamLargeObjects, as: GoogleApi.Datastream.V1.Model.StreamLargeObjects)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.OracleSourceConfig do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.OracleSourceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.OracleSourceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
