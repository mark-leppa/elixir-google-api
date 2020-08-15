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

defmodule GoogleApi.Dataflow.V1b3.Model.CreateJobFromTemplateRequest do
  @moduledoc """
  A request to create a Cloud Dataflow job from a template.

  ## Attributes

  *   `environment` (*type:* `GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment.t`, *default:* `nil`) - The runtime environment for the job.
  *   `gcsPath` (*type:* `String.t`, *default:* `nil`) - Required. A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.
  *   `jobName` (*type:* `String.t`, *default:* `nil`) - Required. The job name to use for the created job.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  *   `parameters` (*type:* `map()`, *default:* `nil`) - The runtime parameters to pass to the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :environment => GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment.t(),
          :gcsPath => String.t(),
          :jobName => String.t(),
          :location => String.t(),
          :parameters => map()
        }

  field(:environment, as: GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment)
  field(:gcsPath)
  field(:jobName)
  field(:location)
  field(:parameters, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.CreateJobFromTemplateRequest do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.CreateJobFromTemplateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.CreateJobFromTemplateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
