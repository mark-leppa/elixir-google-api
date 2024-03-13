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

defmodule GoogleApi.Metastore.V1.Model.KerberosConfig do
  @moduledoc """
  Configuration information for a Kerberos principal.

  ## Attributes

  *   `keytab` (*type:* `GoogleApi.Metastore.V1.Model.Secret.t`, *default:* `nil`) - A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  *   `krb5ConfigGcsUri` (*type:* `String.t`, *default:* `nil`) - A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  *   `principal` (*type:* `String.t`, *default:* `nil`) - A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keytab => GoogleApi.Metastore.V1.Model.Secret.t() | nil,
          :krb5ConfigGcsUri => String.t() | nil,
          :principal => String.t() | nil
        }

  field(:keytab, as: GoogleApi.Metastore.V1.Model.Secret)
  field(:krb5ConfigGcsUri)
  field(:principal)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.KerberosConfig do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.KerberosConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.KerberosConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
