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

defmodule GoogleApi.AlloyDB.V1.Model.RestoreClusterRequest do
  @moduledoc """
  Message for restoring a Cluster from a backup or another cluster at a given point in time.

  ## Attributes

  *   `backupSource` (*type:* `GoogleApi.AlloyDB.V1.Model.BackupSource.t`, *default:* `nil`) - Backup source.
  *   `cluster` (*type:* `GoogleApi.AlloyDB.V1.Model.Cluster.t`, *default:* `nil`) - Required. The resource being created
  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - Required. ID of the requesting object.
  *   `continuousBackupSource` (*type:* `GoogleApi.AlloyDB.V1.Model.ContinuousBackupSource.t`, *default:* `nil`) - ContinuousBackup source. Continuous backup needs to be enabled in the source cluster for this operation to succeed.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, performs request validation (e.g. permission checks and any other type of validation), but do not actually execute the import request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupSource => GoogleApi.AlloyDB.V1.Model.BackupSource.t() | nil,
          :cluster => GoogleApi.AlloyDB.V1.Model.Cluster.t() | nil,
          :clusterId => String.t() | nil,
          :continuousBackupSource => GoogleApi.AlloyDB.V1.Model.ContinuousBackupSource.t() | nil,
          :requestId => String.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:backupSource, as: GoogleApi.AlloyDB.V1.Model.BackupSource)
  field(:cluster, as: GoogleApi.AlloyDB.V1.Model.Cluster)
  field(:clusterId)
  field(:continuousBackupSource, as: GoogleApi.AlloyDB.V1.Model.ContinuousBackupSource)
  field(:requestId)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.RestoreClusterRequest do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.RestoreClusterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.RestoreClusterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
