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

defmodule GoogleApi.ContainerAnalysis.V1.Model.Distribution do
  @moduledoc """
  This represents a particular channel of distribution for a given package. E.g., Debian's jessie-backports dpkg mirror.

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - The CPU architecture for which packages in this distribution channel were built.
  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - Required. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The distribution channel-specific description of this package.
  *   `latestVersion` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.Version.t`, *default:* `nil`) - The latest available version of this package in this distribution channel.
  *   `maintainer` (*type:* `String.t`, *default:* `nil`) - A freeform string denoting the maintainer of this package.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The distribution channel-specific homepage for this package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t() | nil,
          :cpeUri => String.t() | nil,
          :description => String.t() | nil,
          :latestVersion => GoogleApi.ContainerAnalysis.V1.Model.Version.t() | nil,
          :maintainer => String.t() | nil,
          :url => String.t() | nil
        }

  field(:architecture)
  field(:cpeUri)
  field(:description)
  field(:latestVersion, as: GoogleApi.ContainerAnalysis.V1.Model.Version)
  field(:maintainer)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.Distribution do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.Distribution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.Distribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
