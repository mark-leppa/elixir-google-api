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

defmodule GoogleApi.Dataflow.V1b3.Model.PipelineDescription do
  @moduledoc """
  A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.

  ## Attributes

  *   `displayData` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.DisplayData.t)`, *default:* `nil`) - Pipeline level display data.
  *   `executionPipelineStage` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary.t)`, *default:* `nil`) - Description of each stage of execution of the pipeline.
  *   `originalPipelineTransform` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.TransformSummary.t)`, *default:* `nil`) - Description of each transform in the pipeline and collections between them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayData => list(GoogleApi.Dataflow.V1b3.Model.DisplayData.t()),
          :executionPipelineStage =>
            list(GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary.t()),
          :originalPipelineTransform => list(GoogleApi.Dataflow.V1b3.Model.TransformSummary.t())
        }

  field(:displayData, as: GoogleApi.Dataflow.V1b3.Model.DisplayData, type: :list)

  field(:executionPipelineStage,
    as: GoogleApi.Dataflow.V1b3.Model.ExecutionStageSummary,
    type: :list
  )

  field(:originalPipelineTransform,
    as: GoogleApi.Dataflow.V1b3.Model.TransformSummary,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.PipelineDescription do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.PipelineDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.PipelineDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
