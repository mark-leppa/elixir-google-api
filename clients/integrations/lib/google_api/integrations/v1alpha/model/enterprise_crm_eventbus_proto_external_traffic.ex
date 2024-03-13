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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic do
  @moduledoc """
  Represents external traffic type and id.

  ## Attributes

  *   `gcpProjectId` (*type:* `String.t`, *default:* `nil`) - User’s GCP project id the traffic is referring to.
  *   `gcpProjectNumber` (*type:* `String.t`, *default:* `nil`) - User’s GCP project number the traffic is referring to.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Location for the user's request.
  *   `source` (*type:* `String.t`, *default:* `nil`) - LINT.ThenChange(//depot/google3/enterprise/crm/eventbus/proto/product.proto:product, //depot/google3/java/com/google/enterprise/crm/integrationplatform/api/utils/ConverterUtils.java:source_to_product)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcpProjectId => String.t() | nil,
          :gcpProjectNumber => String.t() | nil,
          :location => String.t() | nil,
          :source => String.t() | nil
        }

  field(:gcpProjectId)
  field(:gcpProjectNumber)
  field(:location)
  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoExternalTraffic do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
