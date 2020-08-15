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

defmodule GoogleApi.Dataflow.V1b3.Model.TopologyConfig do
  @moduledoc """
  Global topology of the streaming Dataflow job, including all computations and their sharded locations.

  ## Attributes

  *   `computations` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.ComputationTopology.t)`, *default:* `nil`) - The computations associated with a streaming Dataflow job.
  *   `dataDiskAssignments` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.DataDiskAssignment.t)`, *default:* `nil`) - The disks assigned to a streaming Dataflow job.
  *   `forwardingKeyBits` (*type:* `integer()`, *default:* `nil`) - The size (in bits) of keys that will be assigned to source messages.
  *   `persistentStateVersion` (*type:* `integer()`, *default:* `nil`) - Version number for persistent state.
  *   `userStageToComputationNameMap` (*type:* `map()`, *default:* `nil`) - Maps user stage names to stable computation names.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computations => list(GoogleApi.Dataflow.V1b3.Model.ComputationTopology.t()),
          :dataDiskAssignments => list(GoogleApi.Dataflow.V1b3.Model.DataDiskAssignment.t()),
          :forwardingKeyBits => integer(),
          :persistentStateVersion => integer(),
          :userStageToComputationNameMap => map()
        }

  field(:computations, as: GoogleApi.Dataflow.V1b3.Model.ComputationTopology, type: :list)
  field(:dataDiskAssignments, as: GoogleApi.Dataflow.V1b3.Model.DataDiskAssignment, type: :list)
  field(:forwardingKeyBits)
  field(:persistentStateVersion)
  field(:userStageToComputationNameMap, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.TopologyConfig do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.TopologyConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.TopologyConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
