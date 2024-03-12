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

defmodule GoogleApi.VMMigration.V1.Model.CutoverJob do
  @moduledoc """
  CutoverJob message describes a cutover of a migrating VM. The CutoverJob is the operation of shutting down the VM, creating a snapshot and clonning the VM using the replicated snapshot.

  ## Attributes

  *   `computeEngineDisksTargetDetails` (*type:* `GoogleApi.VMMigration.V1.Model.ComputeEngineDisksTargetDetails.t`, *default:* `nil`) - Output only. Details of the target Persistent Disks in Compute Engine.
  *   `computeEngineTargetDetails` (*type:* `GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDetails.t`, *default:* `nil`) - Output only. Details of the target VM in Compute Engine.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the cutover job was created (as an API call, not when it was actually created in the target).
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the cutover job had finished.
  *   `error` (*type:* `GoogleApi.VMMigration.V1.Model.Status.t`, *default:* `nil`) - Output only. Provides details for the errors that led to the Cutover Job's state.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the cutover job.
  *   `progressPercent` (*type:* `integer()`, *default:* `nil`) - Output only. The current progress in percentage of the cutover job.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the cutover job.
  *   `stateMessage` (*type:* `String.t`, *default:* `nil`) - Output only. A message providing possible extra details about the current state.
  *   `stateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the state was last updated.
  *   `steps` (*type:* `list(GoogleApi.VMMigration.V1.Model.CutoverStep.t)`, *default:* `nil`) - Output only. The cutover steps list representing its progress.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computeEngineDisksTargetDetails =>
            GoogleApi.VMMigration.V1.Model.ComputeEngineDisksTargetDetails.t() | nil,
          :computeEngineTargetDetails =>
            GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDetails.t() | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.VMMigration.V1.Model.Status.t() | nil,
          :name => String.t() | nil,
          :progressPercent => integer() | nil,
          :state => String.t() | nil,
          :stateMessage => String.t() | nil,
          :stateTime => DateTime.t() | nil,
          :steps => list(GoogleApi.VMMigration.V1.Model.CutoverStep.t()) | nil
        }

  field(:computeEngineDisksTargetDetails,
    as: GoogleApi.VMMigration.V1.Model.ComputeEngineDisksTargetDetails
  )

  field(:computeEngineTargetDetails, as: GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDetails)

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.VMMigration.V1.Model.Status)
  field(:name)
  field(:progressPercent)
  field(:state)
  field(:stateMessage)
  field(:stateTime, as: DateTime)
  field(:steps, as: GoogleApi.VMMigration.V1.Model.CutoverStep, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.CutoverJob do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.CutoverJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.CutoverJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
