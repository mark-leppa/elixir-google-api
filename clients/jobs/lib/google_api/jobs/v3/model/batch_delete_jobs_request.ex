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

defmodule GoogleApi.Jobs.V3.Model.BatchDeleteJobsRequest do
  @moduledoc """
  Input only.

  Batch delete jobs request.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Required. The filter string specifies the jobs to be deleted.

      Supported operator: =, AND

      The fields eligible for filtering are:

      * `companyName` (Required)
      * `requisitionId` (Required)

      Sample Query: companyName = "projects/api-test-project/companies/123" AND
      requisitionId = "req-1"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t()
        }

  field(:filter)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.BatchDeleteJobsRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.BatchDeleteJobsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.BatchDeleteJobsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
