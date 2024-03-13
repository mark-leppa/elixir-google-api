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

defmodule GoogleApi.Batch.V1.Model.AgentTaskInfo do
  @moduledoc """
  Task Info

  ## Attributes

  *   `runnable` (*type:* `String.t`, *default:* `nil`) - The highest index of a runnable started by the agent for this task. The runnables are indexed from 1. Value 0 is undefined.
  *   `taskId` (*type:* `String.t`, *default:* `nil`) - ID of the Task
  *   `taskStatus` (*type:* `GoogleApi.Batch.V1.Model.TaskStatus.t`, *default:* `nil`) - The status of the Task. If we need agent specific fields we should fork the public TaskStatus into an agent specific one. Or add them below.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :runnable => String.t() | nil,
          :taskId => String.t() | nil,
          :taskStatus => GoogleApi.Batch.V1.Model.TaskStatus.t() | nil
        }

  field(:runnable)
  field(:taskId)
  field(:taskStatus, as: GoogleApi.Batch.V1.Model.TaskStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.AgentTaskInfo do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.AgentTaskInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.AgentTaskInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
