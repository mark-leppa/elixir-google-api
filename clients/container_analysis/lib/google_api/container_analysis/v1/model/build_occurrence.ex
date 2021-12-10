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

defmodule GoogleApi.ContainerAnalysis.V1.Model.BuildOccurrence do
  @moduledoc """
  Details of a build occurrence.

  ## Attributes

  *   `intotoProvenance` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.InTotoProvenance.t`, *default:* `nil`) - Deprecated. See InTotoStatement for the replacement. In-toto Provenance representation as defined in spec.
  *   `intotoStatement` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.InTotoStatement.t`, *default:* `nil`) - In-toto Statement representation as defined in spec. The intoto_statement can contain any type of provenance. The serialized payload of the statement can be stored and signed in the Occurrence's envelope.
  *   `provenance` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.BuildProvenance.t`, *default:* `nil`) - The actual provenance for the build.
  *   `provenanceBytes` (*type:* `String.t`, *default:* `nil`) - Serialized JSON representation of the provenance, used in generating the build signature in the corresponding build note. After verifying the signature, `provenance_bytes` can be unmarshalled and compared to the provenance to confirm that it is unchanged. A base64-encoded string representation of the provenance bytes is used for the signature in order to interoperate with openssl which expects this format for signature verification. The serialized form is captured both to avoid ambiguity in how the provenance is marshalled to json as well to prevent incompatibilities with future changes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intotoProvenance => GoogleApi.ContainerAnalysis.V1.Model.InTotoProvenance.t() | nil,
          :intotoStatement => GoogleApi.ContainerAnalysis.V1.Model.InTotoStatement.t() | nil,
          :provenance => GoogleApi.ContainerAnalysis.V1.Model.BuildProvenance.t() | nil,
          :provenanceBytes => String.t() | nil
        }

  field(:intotoProvenance, as: GoogleApi.ContainerAnalysis.V1.Model.InTotoProvenance)
  field(:intotoStatement, as: GoogleApi.ContainerAnalysis.V1.Model.InTotoStatement)
  field(:provenance, as: GoogleApi.ContainerAnalysis.V1.Model.BuildProvenance)
  field(:provenanceBytes)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.BuildOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.BuildOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.BuildOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
