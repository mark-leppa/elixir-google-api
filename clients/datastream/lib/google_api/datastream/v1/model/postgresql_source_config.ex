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

defmodule GoogleApi.Datastream.V1.Model.PostgresqlSourceConfig do
  @moduledoc """
  PostgreSQL data source configuration

  ## Attributes

  *   `excludeObjects` (*type:* `GoogleApi.Datastream.V1.Model.PostgresqlRdbms.t`, *default:* `nil`) - PostgreSQL objects to exclude from the stream.
  *   `includeObjects` (*type:* `GoogleApi.Datastream.V1.Model.PostgresqlRdbms.t`, *default:* `nil`) - PostgreSQL objects to include in the stream.
  *   `publication` (*type:* `String.t`, *default:* `nil`) - Required. The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  *   `replicationSlot` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludeObjects => GoogleApi.Datastream.V1.Model.PostgresqlRdbms.t() | nil,
          :includeObjects => GoogleApi.Datastream.V1.Model.PostgresqlRdbms.t() | nil,
          :publication => String.t() | nil,
          :replicationSlot => String.t() | nil
        }

  field(:excludeObjects, as: GoogleApi.Datastream.V1.Model.PostgresqlRdbms)
  field(:includeObjects, as: GoogleApi.Datastream.V1.Model.PostgresqlRdbms)
  field(:publication)
  field(:replicationSlot)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.PostgresqlSourceConfig do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.PostgresqlSourceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.PostgresqlSourceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
