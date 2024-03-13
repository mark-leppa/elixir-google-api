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

defmodule GoogleApi.Batch.V1.Model.TaskGroup do
  @moduledoc """
  A TaskGroup defines one or more Tasks that all share the same TaskSpec.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. TaskGroup name. The system generates this field based on parent Job name. For example: "projects/123456/locations/us-west1/jobs/job01/taskGroups/group01".
  *   `parallelism` (*type:* `String.t`, *default:* `nil`) - Max number of tasks that can run in parallel. Default to min(task_count, parallel tasks per job limit). See: [Job Limits](https://cloud.google.com/batch/quotas#job_limits). Field parallelism must be 1 if the scheduling_policy is IN_ORDER.
  *   `permissiveSsh` (*type:* `boolean()`, *default:* `nil`) - When true, Batch will configure SSH to allow passwordless login between VMs running the Batch tasks in the same TaskGroup.
  *   `requireHostsFile` (*type:* `boolean()`, *default:* `nil`) - When true, Batch will populate a file with a list of all VMs assigned to the TaskGroup and set the BATCH_HOSTS_FILE environment variable to the path of that file. Defaults to false. The host file supports up to 1000 VMs.
  *   `runAsNonRoot` (*type:* `boolean()`, *default:* `nil`) - Optional. If not set or set to false, Batch uses the root user to execute runnables. If set to true, Batch runs the runnables using a non-root user. Currently, the non-root user Batch used is generated by OS Login. For more information, see [About OS Login](https://cloud.google.com/compute/docs/oslogin).
  *   `schedulingPolicy` (*type:* `String.t`, *default:* `nil`) - Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
  *   `taskCount` (*type:* `String.t`, *default:* `nil`) - Number of Tasks in the TaskGroup. Default is 1.
  *   `taskCountPerNode` (*type:* `String.t`, *default:* `nil`) - Max number of tasks that can be run on a VM at the same time. If not specified, the system will decide a value based on available compute resources on a VM and task requirements.
  *   `taskEnvironments` (*type:* `list(GoogleApi.Batch.V1.Model.Environment.t)`, *default:* `nil`) - An array of environment variable mappings, which are passed to Tasks with matching indices. If task_environments is used then task_count should not be specified in the request (and will be ignored). Task count will be the length of task_environments. Tasks get a BATCH_TASK_INDEX and BATCH_TASK_COUNT environment variable, in addition to any environment variables set in task_environments, specifying the number of Tasks in the Task's parent TaskGroup, and the specific Task's index in the TaskGroup (0 through BATCH_TASK_COUNT - 1).
  *   `taskSpec` (*type:* `GoogleApi.Batch.V1.Model.TaskSpec.t`, *default:* `nil`) - Required. Tasks in the group share the same task spec.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :parallelism => String.t() | nil,
          :permissiveSsh => boolean() | nil,
          :requireHostsFile => boolean() | nil,
          :runAsNonRoot => boolean() | nil,
          :schedulingPolicy => String.t() | nil,
          :taskCount => String.t() | nil,
          :taskCountPerNode => String.t() | nil,
          :taskEnvironments => list(GoogleApi.Batch.V1.Model.Environment.t()) | nil,
          :taskSpec => GoogleApi.Batch.V1.Model.TaskSpec.t() | nil
        }

  field(:name)
  field(:parallelism)
  field(:permissiveSsh)
  field(:requireHostsFile)
  field(:runAsNonRoot)
  field(:schedulingPolicy)
  field(:taskCount)
  field(:taskCountPerNode)
  field(:taskEnvironments, as: GoogleApi.Batch.V1.Model.Environment, type: :list)
  field(:taskSpec, as: GoogleApi.Batch.V1.Model.TaskSpec)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.TaskGroup do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.TaskGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.TaskGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
