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

defmodule GoogleApi.ServiceControl.V1.Model.CheckError do
  @moduledoc """
  Defines the errors to be returned in google.api.servicecontrol.v1.CheckResponse.check_errors.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - The error code.
  *   `detail` (*type:* `String.t`, *default:* `nil`) - Free-form text providing details on the error cause of the error.
  *   `status` (*type:* `GoogleApi.ServiceControl.V1.Model.Status.t`, *default:* `nil`) - Contains public information about the check error. If available, `status.code` will be non zero and client can propagate it out as public error.
  *   `subject` (*type:* `String.t`, *default:* `nil`) - Subject to whom this error applies. See the specific code enum for more details on this field. For example: - "project:" - "folder:" - "organization:"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t() | nil,
          :detail => String.t() | nil,
          :status => GoogleApi.ServiceControl.V1.Model.Status.t() | nil,
          :subject => String.t() | nil
        }

  field(:code)
  field(:detail)
  field(:status, as: GoogleApi.ServiceControl.V1.Model.Status)
  field(:subject)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.CheckError do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.CheckError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.CheckError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
