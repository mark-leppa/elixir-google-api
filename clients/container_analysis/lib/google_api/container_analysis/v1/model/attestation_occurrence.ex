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

defmodule GoogleApi.ContainerAnalysis.V1.Model.AttestationOccurrence do
  @moduledoc """
  Occurrence that represents a single "attestation". The authenticity of an attestation can be verified using the attached signature. If the verifier trusts the public key of the signer, then verifying the signature is sufficient to establish trust. In this circumstance, the authority to which this attestation is attached is primarily useful for lookup (how to find this attestation if you already know the authority and artifact to be verified) and intent (for which authority this attestation was intended to sign.

  ## Attributes

  *   `jwts` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Jwt.t)`, *default:* `nil`) - One or more JWTs encoding a self-contained attestation. Each JWT encodes the payload that it verifies within the JWT itself. Verifier implementation SHOULD ignore the `serialized_payload` field when verifying these JWTs. If only JWTs are present on this AttestationOccurrence, then the `serialized_payload` SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `resource_uri` of this Occurrence, but this is not validated by Grafeas metadata API implementations. The JWT itself is opaque to Grafeas.
  *   `serializedPayload` (*type:* `String.t`, *default:* `nil`) - Required. The serialized payload that is verified by one or more `signatures`.
  *   `signatures` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.Signature.t)`, *default:* `nil`) - One or more signatures over `serialized_payload`. Verifier implementations should consider this attestation message verified if at least one `signature` verifies `serialized_payload`. See `Signature` in common.proto for more details on signature structure and verification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jwts => list(GoogleApi.ContainerAnalysis.V1.Model.Jwt.t()) | nil,
          :serializedPayload => String.t() | nil,
          :signatures => list(GoogleApi.ContainerAnalysis.V1.Model.Signature.t()) | nil
        }

  field(:jwts, as: GoogleApi.ContainerAnalysis.V1.Model.Jwt, type: :list)
  field(:serializedPayload)
  field(:signatures, as: GoogleApi.ContainerAnalysis.V1.Model.Signature, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.AttestationOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.AttestationOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.AttestationOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
