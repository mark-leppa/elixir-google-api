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

defmodule GoogleApi.Batch.V1.Model.ServiceAccount do
  @moduledoc """
  Carries information about a Google Cloud service account.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :scopes => list(String.t()) | nil
        }

  field(:email)
  field(:scopes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.ServiceAccount do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.ServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.ServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
