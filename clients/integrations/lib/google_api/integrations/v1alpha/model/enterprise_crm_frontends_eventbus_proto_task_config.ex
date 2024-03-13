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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskConfig do
  @moduledoc """
  The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.

  ## Attributes

  *   `alertConfigs` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskAlertConfig.t)`, *default:* `nil`) - Alert configurations on error rate, warning rate, number of runs, durations, etc.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Auto-generated.
  *   `creatorEmail` (*type:* `String.t`, *default:* `nil`) - The creator's email address. Auto-generated from the user's email.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description intended to give more business context about the task.
  *   `disableStrictTypeValidation` (*type:* `boolean()`, *default:* `nil`) - If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  *   `errorCatcherId` (*type:* `String.t`, *default:* `nil`) - Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  *   `externalTaskType` (*type:* `String.t`, *default:* `nil`) - 
  *   `failurePolicy` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoFailurePolicy.t`, *default:* `nil`) - Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  *   `incomingEdgeCount` (*type:* `integer()`, *default:* `nil`) - The number of edges leading into this TaskConfig.
  *   `jsonValidationOption` (*type:* `String.t`, *default:* `nil`) - If set, overrides the option configured in the Task implementation class.
  *   `label` (*type:* `String.t`, *default:* `nil`) - User-provided label that is attached to this TaskConfig in the UI.
  *   `lastModifiedTime` (*type:* `DateTime.t`, *default:* `nil`) - Auto-generated.
  *   `nextTasks` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoNextTask.t)`, *default:* `nil`) - The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  *   `nextTasksExecutionPolicy` (*type:* `String.t`, *default:* `nil`) - The policy dictating the execution of the next set of tasks for the current task.
  *   `parameters` (*type:* `%{optional(String.t) => GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoParameterEntry.t}`, *default:* `nil`) - The customized parameters the user can pass to this task.
  *   `position` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoCoordinate.t`, *default:* `nil`) - Optional. Informs the front-end application where to draw this task config on the UI.
  *   `precondition` (*type:* `String.t`, *default:* `nil`) - Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  *   `preconditionLabel` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided label that is attached to precondition in the UI.
  *   `rollbackStrategy` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.t`, *default:* `nil`) - Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).
  *   `successPolicy` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuccessPolicy.t`, *default:* `nil`) - Determines what action to take upon successful task completion.
  *   `synchronousCallFailurePolicy` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoFailurePolicy.t`, *default:* `nil`) - Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  *   `taskEntity` (*type:* `GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskEntity.t`, *default:* `nil`) - Copy of the task entity that this task config is an instance of.
  *   `taskExecutionStrategy` (*type:* `String.t`, *default:* `nil`) - The policy dictating the execution strategy of this task.
  *   `taskName` (*type:* `String.t`, *default:* `nil`) - The name for the task.
  *   `taskNumber` (*type:* `String.t`, *default:* `nil`) - REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).
  *   `taskSpec` (*type:* `String.t`, *default:* `nil`) - A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old "parameters" field.
  *   `taskTemplateName` (*type:* `String.t`, *default:* `nil`) - Used to define task-template name if task is of type task-template
  *   `taskType` (*type:* `String.t`, *default:* `nil`) - Defines the type of the task
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alertConfigs =>
            list(
              GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskAlertConfig.t()
            )
            | nil,
          :createTime => DateTime.t() | nil,
          :creatorEmail => String.t() | nil,
          :description => String.t() | nil,
          :disableStrictTypeValidation => boolean() | nil,
          :errorCatcherId => String.t() | nil,
          :externalTaskType => String.t() | nil,
          :failurePolicy =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoFailurePolicy.t() | nil,
          :incomingEdgeCount => integer() | nil,
          :jsonValidationOption => String.t() | nil,
          :label => String.t() | nil,
          :lastModifiedTime => DateTime.t() | nil,
          :nextTasks =>
            list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoNextTask.t())
            | nil,
          :nextTasksExecutionPolicy => String.t() | nil,
          :parameters =>
            %{
              optional(String.t()) =>
                GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoParameterEntry.t()
            }
            | nil,
          :position =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoCoordinate.t() | nil,
          :precondition => String.t() | nil,
          :preconditionLabel => String.t() | nil,
          :rollbackStrategy =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.t()
            | nil,
          :successPolicy =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuccessPolicy.t() | nil,
          :synchronousCallFailurePolicy =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoFailurePolicy.t() | nil,
          :taskEntity =>
            GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskEntity.t()
            | nil,
          :taskExecutionStrategy => String.t() | nil,
          :taskName => String.t() | nil,
          :taskNumber => String.t() | nil,
          :taskSpec => String.t() | nil,
          :taskTemplateName => String.t() | nil,
          :taskType => String.t() | nil
        }

  field(:alertConfigs,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskAlertConfig,
    type: :list
  )

  field(:createTime, as: DateTime)
  field(:creatorEmail)
  field(:description)
  field(:disableStrictTypeValidation)
  field(:errorCatcherId)
  field(:externalTaskType)

  field(:failurePolicy,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoFailurePolicy
  )

  field(:incomingEdgeCount)
  field(:jsonValidationOption)
  field(:label)
  field(:lastModifiedTime, as: DateTime)

  field(:nextTasks,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoNextTask,
    type: :list
  )

  field(:nextTasksExecutionPolicy)

  field(:parameters,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoParameterEntry,
    type: :map
  )

  field(:position, as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoCoordinate)
  field(:precondition)
  field(:preconditionLabel)

  field(:rollbackStrategy,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy
  )

  field(:successPolicy,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoSuccessPolicy
  )

  field(:synchronousCallFailurePolicy,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoFailurePolicy
  )

  field(:taskEntity,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskEntity
  )

  field(:taskExecutionStrategy)
  field(:taskName)
  field(:taskNumber)
  field(:taskSpec)
  field(:taskTemplateName)
  field(:taskType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmFrontendsEventbusProtoTaskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
