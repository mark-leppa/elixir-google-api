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

defmodule GoogleApi.VMwareEngine.V1.Model.LoggingServer do
  @moduledoc """
  Logging server to receive vCenter or ESXi logs.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this resource.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - Required. Fully-qualified domain name (FQDN) or IP Address of the logging server.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of this logging server. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  *   `port` (*type:* `integer()`, *default:* `nil`) - Required. Port number at which the logging server receives logs.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - Required. Protocol used by vCenter to send logs to a logging server.
  *   `sourceType` (*type:* `String.t`, *default:* `nil`) - Required. The type of component that produces logs that will be forwarded to this logging server.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System-generated unique identifier for the resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of this resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :hostname => String.t() | nil,
          :name => String.t() | nil,
          :port => integer() | nil,
          :protocol => String.t() | nil,
          :sourceType => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:hostname)
  field(:name)
  field(:port)
  field(:protocol)
  field(:sourceType)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.LoggingServer do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.LoggingServer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.LoggingServer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
