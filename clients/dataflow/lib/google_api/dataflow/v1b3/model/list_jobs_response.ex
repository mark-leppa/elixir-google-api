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

defmodule GoogleApi.Dataflow.V1b3.Model.ListJobsResponse do
  @moduledoc """
  Response to a request to list Cloud Dataflow jobs in a project. This might be a partial response, depending on the page size in the ListJobsRequest. However, if the project does not have any jobs, an instance of ListJobsResponse is not returned and the requests's response body is empty {}.

  ## Attributes

  *   `failedLocation` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.FailedLocation.t)`, *default:* `nil`) - Zero or more messages describing the [regional endpoints] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that failed to respond.
  *   `jobs` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.Job.t)`, *default:* `nil`) - A subset of the requested job information.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Set if there may be more results than fit in this response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failedLocation => list(GoogleApi.Dataflow.V1b3.Model.FailedLocation.t()),
          :jobs => list(GoogleApi.Dataflow.V1b3.Model.Job.t()),
          :nextPageToken => String.t()
        }

  field(:failedLocation, as: GoogleApi.Dataflow.V1b3.Model.FailedLocation, type: :list)
  field(:jobs, as: GoogleApi.Dataflow.V1b3.Model.Job, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ListJobsResponse do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ListJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ListJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
