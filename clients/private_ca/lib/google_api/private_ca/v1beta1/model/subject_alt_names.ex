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

defmodule GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames do
  @moduledoc """
  SubjectAltNames corresponds to a more modern way of listing what the asserted identity is in a certificate (i.e., compared to the "common name" in the distinguished name).

  ## Attributes

  *   `customSans` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.X509Extension.t)`, *default:* `nil`) - Contains additional subject alternative name values.
  *   `dnsNames` (*type:* `list(String.t)`, *default:* `nil`) - Contains only valid, fully-qualified host names.
  *   `emailAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Contains only valid RFC 2822 E-mail addresses.
  *   `ipAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.
  *   `uris` (*type:* `list(String.t)`, *default:* `nil`) - Contains only valid RFC 3986 URIs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customSans => list(GoogleApi.PrivateCA.V1beta1.Model.X509Extension.t()),
          :dnsNames => list(String.t()),
          :emailAddresses => list(String.t()),
          :ipAddresses => list(String.t()),
          :uris => list(String.t())
        }

  field(:customSans, as: GoogleApi.PrivateCA.V1beta1.Model.X509Extension, type: :list)
  field(:dnsNames, type: :list)
  field(:emailAddresses, type: :list)
  field(:ipAddresses, type: :list)
  field(:uris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
