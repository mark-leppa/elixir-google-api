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

defmodule GoogleApi.Compute.V1.Model.PublicAdvertisedPrefix do
  @moduledoc """
  A public advertised prefix represents an aggregated IP prefix or netblock which customers bring to cloud. The IP prefix is a single unit of route advertisement and is announced globally to the internet.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `dnsVerificationIp` (*type:* `String.t`, *default:* `nil`) - The IPv4 address to be used for reverse DNS verification.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicAdvertisedPrefix. An up-to-date fingerprint must be provided in order to update the PublicAdvertisedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicAdvertisedPrefix.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource type. The server generates this identifier.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The IPv4 address range, in CIDR format, represented by this public advertised prefix.
  *   `kind` (*type:* `String.t`, *default:* `compute#publicAdvertisedPrefix`) - [Output Only] Type of the resource. Always compute#publicAdvertisedPrefix for public advertised prefixes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `publicDelegatedPrefixs` (*type:* `list(GoogleApi.Compute.V1.Model.PublicAdvertisedPrefixPublicDelegatedPrefix.t)`, *default:* `nil`) - [Output Only] The list of public delegated prefixes that exist for this public advertised prefix.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `sharedSecret` (*type:* `String.t`, *default:* `nil`) - [Output Only] The shared secret to be used for reverse DNS verification.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the public advertised prefix.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :dnsVerificationIp => String.t() | nil,
          :fingerprint => String.t() | nil,
          :id => String.t() | nil,
          :ipCidrRange => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :publicDelegatedPrefixs =>
            list(GoogleApi.Compute.V1.Model.PublicAdvertisedPrefixPublicDelegatedPrefix.t()) | nil,
          :selfLink => String.t() | nil,
          :sharedSecret => String.t() | nil,
          :status => String.t() | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:dnsVerificationIp)
  field(:fingerprint)
  field(:id)
  field(:ipCidrRange)
  field(:kind)
  field(:name)

  field(:publicDelegatedPrefixs,
    as: GoogleApi.Compute.V1.Model.PublicAdvertisedPrefixPublicDelegatedPrefix,
    type: :list
  )

  field(:selfLink)
  field(:sharedSecret)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PublicAdvertisedPrefix do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PublicAdvertisedPrefix.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PublicAdvertisedPrefix do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
