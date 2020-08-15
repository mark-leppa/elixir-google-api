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

defmodule GoogleApi.Dataflow.V1b3.Model.TaskRunnerSettings do
  @moduledoc """
  Taskrunner configuration settings.

  ## Attributes

  *   `alsologtostderr` (*type:* `boolean()`, *default:* `nil`) - Whether to also send taskrunner log info to stderr.
  *   `baseTaskDir` (*type:* `String.t`, *default:* `nil`) - The location on the worker for task-specific subdirectories.
  *   `baseUrl` (*type:* `String.t`, *default:* `nil`) - The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, "Relative Uniform Resource Locators". If not specified, the default value is "http://www.googleapis.com/"
  *   `commandlinesFileName` (*type:* `String.t`, *default:* `nil`) - The file to store preprocessing commands in.
  *   `continueOnException` (*type:* `boolean()`, *default:* `nil`) - Whether to continue taskrunner if an exception is hit.
  *   `dataflowApiVersion` (*type:* `String.t`, *default:* `nil`) - The API version of endpoint, e.g. "v1b3"
  *   `harnessCommand` (*type:* `String.t`, *default:* `nil`) - The command to launch the worker harness.
  *   `languageHint` (*type:* `String.t`, *default:* `nil`) - The suggested backend language.
  *   `logDir` (*type:* `String.t`, *default:* `nil`) - The directory on the VM to store logs.
  *   `logToSerialconsole` (*type:* `boolean()`, *default:* `nil`) - Whether to send taskrunner log info to Google Compute Engine VM serial console.
  *   `logUploadLocation` (*type:* `String.t`, *default:* `nil`) - Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  *   `oauthScopes` (*type:* `list(String.t)`, *default:* `nil`) - The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.
  *   `parallelWorkerSettings` (*type:* `GoogleApi.Dataflow.V1b3.Model.WorkerSettings.t`, *default:* `nil`) - The settings to pass to the parallel worker harness.
  *   `streamingWorkerMainClass` (*type:* `String.t`, *default:* `nil`) - The streaming worker main class name.
  *   `taskGroup` (*type:* `String.t`, *default:* `nil`) - The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel".
  *   `taskUser` (*type:* `String.t`, *default:* `nil`) - The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root".
  *   `tempStoragePrefix` (*type:* `String.t`, *default:* `nil`) - The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  *   `vmId` (*type:* `String.t`, *default:* `nil`) - The ID string of the VM.
  *   `workflowFileName` (*type:* `String.t`, *default:* `nil`) - The file to store the workflow in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alsologtostderr => boolean(),
          :baseTaskDir => String.t(),
          :baseUrl => String.t(),
          :commandlinesFileName => String.t(),
          :continueOnException => boolean(),
          :dataflowApiVersion => String.t(),
          :harnessCommand => String.t(),
          :languageHint => String.t(),
          :logDir => String.t(),
          :logToSerialconsole => boolean(),
          :logUploadLocation => String.t(),
          :oauthScopes => list(String.t()),
          :parallelWorkerSettings => GoogleApi.Dataflow.V1b3.Model.WorkerSettings.t(),
          :streamingWorkerMainClass => String.t(),
          :taskGroup => String.t(),
          :taskUser => String.t(),
          :tempStoragePrefix => String.t(),
          :vmId => String.t(),
          :workflowFileName => String.t()
        }

  field(:alsologtostderr)
  field(:baseTaskDir)
  field(:baseUrl)
  field(:commandlinesFileName)
  field(:continueOnException)
  field(:dataflowApiVersion)
  field(:harnessCommand)
  field(:languageHint)
  field(:logDir)
  field(:logToSerialconsole)
  field(:logUploadLocation)
  field(:oauthScopes, type: :list)
  field(:parallelWorkerSettings, as: GoogleApi.Dataflow.V1b3.Model.WorkerSettings)
  field(:streamingWorkerMainClass)
  field(:taskGroup)
  field(:taskUser)
  field(:tempStoragePrefix)
  field(:vmId)
  field(:workflowFileName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.TaskRunnerSettings do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.TaskRunnerSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.TaskRunnerSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
