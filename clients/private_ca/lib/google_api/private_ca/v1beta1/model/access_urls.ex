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

defmodule GoogleApi.PrivateCA.V1beta1.Model.AccessUrls do
  @moduledoc """
  URLs where a CertificateAuthority will publish content.

  ## Attributes

  *   `caCertificateAccessUrl` (*type:* `String.t`, *default:* `nil`) - The URL where this CertificateAuthority's CA certificate is published. This will only be set for CAs that have been activated.
  *   `crlAccessUrl` (*type:* `String.t`, *default:* `nil`) - The URL where this CertificateAuthority's CRLs are published. This will only be set for CAs that have been activated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caCertificateAccessUrl => String.t(),
          :crlAccessUrl => String.t()
        }

  field(:caCertificateAccessUrl)
  field(:crlAccessUrl)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.AccessUrls do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.AccessUrls.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.AccessUrls do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
