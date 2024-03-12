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

defmodule GoogleApi.WorkflowExecutions.V1.Model.TriggerPubsubExecutionRequest do
  @moduledoc """
  Request for the TriggerPubsubExecution method.

  ## Attributes

  *   `GCPCloudEventsMode` (*type:* `String.t`, *default:* `nil`) - Required. LINT: LEGACY_NAMES The query parameter value for __GCP_CloudEventsMode, set by the Eventarc service when configuring triggers.
  *   `deliveryAttempt` (*type:* `integer()`, *default:* `nil`) - The number of attempts that have been made to deliver this message. This is set by Pub/Sub for subscriptions that have the "dead letter" feature enabled, and hence provided here for compatibility, but is ignored by Workflows.
  *   `message` (*type:* `GoogleApi.WorkflowExecutions.V1.Model.PubsubMessage.t`, *default:* `nil`) - Required. The message of the Pub/Sub push notification.
  *   `subscription` (*type:* `String.t`, *default:* `nil`) - Required. The subscription of the Pub/Sub push notification. Format: projects/{project}/subscriptions/{sub}
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :GCPCloudEventsMode => String.t() | nil,
          :deliveryAttempt => integer() | nil,
          :message => GoogleApi.WorkflowExecutions.V1.Model.PubsubMessage.t() | nil,
          :subscription => String.t() | nil
        }

  field(:GCPCloudEventsMode)
  field(:deliveryAttempt)
  field(:message, as: GoogleApi.WorkflowExecutions.V1.Model.PubsubMessage)
  field(:subscription)
end

defimpl Poison.Decoder, for: GoogleApi.WorkflowExecutions.V1.Model.TriggerPubsubExecutionRequest do
  def decode(value, options) do
    GoogleApi.WorkflowExecutions.V1.Model.TriggerPubsubExecutionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkflowExecutions.V1.Model.TriggerPubsubExecutionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
