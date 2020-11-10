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

defmodule GoogleApi.PrivateCA.V1beta1.Model.SubjectDescription do
  @moduledoc """
  These values describe fields in an issued X.509 certificate such as the distinguished name, subject alternative names, serial number, and lifetime.

  ## Attributes

  *   `commonName` (*type:* `String.t`, *default:* `nil`) - The "common name" of the distinguished name.
  *   `hexSerialNumber` (*type:* `String.t`, *default:* `nil`) - The serial number encoded in lowercase hexadecimal.
  *   `lifetime` (*type:* `String.t`, *default:* `nil`) - For convenience, the actual lifetime of an issued certificate. Corresponds to 'not_after_time' - 'not_before_time'.
  *   `notAfterTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the certificate expires.
  *   `notBeforeTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the certificate becomes valid.
  *   `subject` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.Subject.t`, *default:* `nil`) - Contains distinguished name fields such as the location and organization.
  *   `subjectAltName` (*type:* `GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames.t`, *default:* `nil`) - The subject alternative name fields.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonName => String.t(),
          :hexSerialNumber => String.t(),
          :lifetime => String.t(),
          :notAfterTime => DateTime.t(),
          :notBeforeTime => DateTime.t(),
          :subject => GoogleApi.PrivateCA.V1beta1.Model.Subject.t(),
          :subjectAltName => GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames.t()
        }

  field(:commonName)
  field(:hexSerialNumber)
  field(:lifetime)
  field(:notAfterTime, as: DateTime)
  field(:notBeforeTime, as: DateTime)
  field(:subject, as: GoogleApi.PrivateCA.V1beta1.Model.Subject)
  field(:subjectAltName, as: GoogleApi.PrivateCA.V1beta1.Model.SubjectAltNames)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubjectDescription do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.SubjectDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.SubjectDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
