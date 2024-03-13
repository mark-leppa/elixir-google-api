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

defmodule GoogleApi.DataPortability.V1.Model.PortabilityArchiveState do
  @moduledoc """
  Resource that contains the state of an Archive job.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of ArchiveJob's PortabilityArchiveState singleton. The format is: archiveJobs/{archive_job}/portabilityArchiveState. archive_job is the job ID provided in the request.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Resource that represents the state of the Archive job.
  *   `urls` (*type:* `list(String.t)`, *default:* `nil`) - If the state is complete, this method returns the signed URLs of the objects in the Cloud Storage bucket.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :state => String.t() | nil,
          :urls => list(String.t()) | nil
        }

  field(:name)
  field(:state)
  field(:urls, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DataPortability.V1.Model.PortabilityArchiveState do
  def decode(value, options) do
    GoogleApi.DataPortability.V1.Model.PortabilityArchiveState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataPortability.V1.Model.PortabilityArchiveState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
