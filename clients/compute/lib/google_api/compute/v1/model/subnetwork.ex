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

defmodule GoogleApi.Compute.V1.Model.Subnetwork do
  @moduledoc """
  Represents a Subnetwork resource. A subnetwork (also known as a subnet) is a logical partition of a Virtual Private Cloud network with one primary IP range and zero or more secondary IP ranges. For more information, read Virtual Private Cloud (VPC) Network.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource. This field can be set only at resource creation time.
  *   `enableFlowLogs` (*type:* `boolean()`, *default:* `nil`) - Whether to enable flow logging for this subnetwork. If this field is not explicitly set, it will not appear in get listings. If not set the default behavior is to disable flow logging. This field isn't supported with the purpose field set to INTERNAL_HTTPS_LOAD_BALANCER.
  *   `externalIpv6Prefix` (*type:* `String.t`, *default:* `nil`) - [Output Only] The range of external IPv6 addresses that are owned by this subnetwork.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a Subnetwork. An up-to-date fingerprint must be provided in order to update the Subnetwork, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a Subnetwork.
  *   `gatewayAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] The gateway address for default routes to reach destination addresses outside this subnetwork.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 100.64.0.0/10. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. This field is set at resource creation time. The range can be any range listed in the Valid ranges list. The range can be expanded after creation using expandIpCidrRange.
  *   `ipv6AccessType` (*type:* `String.t`, *default:* `nil`) - The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack. If the ipv6_type is EXTERNAL then this subnet cannot enable direct path.
  *   `ipv6CidrRange` (*type:* `String.t`, *default:* `nil`) - [Output Only] The range of internal IPv6 addresses that are owned by this subnetwork.
  *   `kind` (*type:* `String.t`, *default:* `compute#subnetwork`) - [Output Only] Type of the resource. Always compute#subnetwork for Subnetwork resources.
  *   `logConfig` (*type:* `GoogleApi.Compute.V1.Model.SubnetworkLogConfig.t`, *default:* `nil`) - This field denotes the VPC flow logging options for this subnetwork. If logging is enabled, logs are exported to Cloud Logging.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The URL of the network to which this subnetwork belongs, provided by the client when initially creating the subnetwork. Only networks that are in the distributed mode can have subnetworks. This field can be set only at resource creation time.
  *   `privateIpGoogleAccess` (*type:* `boolean()`, *default:* `nil`) - Whether the VMs in this subnet can access Google services without assigned external IP addresses. This field can be both set at resource creation time and updated using setPrivateIpGoogleAccess.
  *   `privateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - The private IPv6 google access type for the VMs in this subnet. This is an expanded field of enablePrivateV6Access. If both fields are set, privateIpv6GoogleAccess will take priority. This field can be both set at resource creation time and updated using patch.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - The purpose of the resource. This field can be either PRIVATE_RFC_1918 or INTERNAL_HTTPS_LOAD_BALANCER. A subnetwork with purpose set to INTERNAL_HTTPS_LOAD_BALANCER is a user-created subnetwork that is reserved for Internal HTTP(S) Load Balancing. If unspecified, the purpose defaults to PRIVATE_RFC_1918. The enableFlowLogs field isn't supported with the purpose field set to INTERNAL_HTTPS_LOAD_BALANCER.
  *   `region` (*type:* `String.t`, *default:* `nil`) - URL of the region where the Subnetwork resides. This field can be set only at resource creation time.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role of subnetwork. Currently, this field is only used when purpose = INTERNAL_HTTPS_LOAD_BALANCER. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Internal HTTP(S) Load Balancing. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  *   `secondaryIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange.t)`, *default:* `nil`) - An array of configurations for secondary IP ranges for VM instances contained in this subnetwork. The primary IP of such VM must belong to the primary ipCidrRange of the subnetwork. The alias IPs may belong to either primary or secondary ranges. This field can be updated with a patch request.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `stackType` (*type:* `String.t`, *default:* `nil`) - The stack type for this subnet to identify whether the IPv6 feature is enabled or not. If not specified IPV4_ONLY will be used. This field can be both set at resource creation time and updated using patch.
  *   `state` (*type:* `String.t`, *default:* `nil`) - [Output Only] The state of the subnetwork, which can be one of the following values: READY: Subnetwork is created and ready to use DRAINING: only applicable to subnetworks that have the purpose set to INTERNAL_HTTPS_LOAD_BALANCER and indicates that connections to the load balancer are being drained. A subnetwork that is draining cannot be used or modified until it reaches a status of READY
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :enableFlowLogs => boolean() | nil,
          :externalIpv6Prefix => String.t() | nil,
          :fingerprint => String.t() | nil,
          :gatewayAddress => String.t() | nil,
          :id => String.t() | nil,
          :ipCidrRange => String.t() | nil,
          :ipv6AccessType => String.t() | nil,
          :ipv6CidrRange => String.t() | nil,
          :kind => String.t() | nil,
          :logConfig => GoogleApi.Compute.V1.Model.SubnetworkLogConfig.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :privateIpGoogleAccess => boolean() | nil,
          :privateIpv6GoogleAccess => String.t() | nil,
          :purpose => String.t() | nil,
          :region => String.t() | nil,
          :role => String.t() | nil,
          :secondaryIpRanges =>
            list(GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange.t()) | nil,
          :selfLink => String.t() | nil,
          :stackType => String.t() | nil,
          :state => String.t() | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:enableFlowLogs)
  field(:externalIpv6Prefix)
  field(:fingerprint)
  field(:gatewayAddress)
  field(:id)
  field(:ipCidrRange)
  field(:ipv6AccessType)
  field(:ipv6CidrRange)
  field(:kind)
  field(:logConfig, as: GoogleApi.Compute.V1.Model.SubnetworkLogConfig)
  field(:name)
  field(:network)
  field(:privateIpGoogleAccess)
  field(:privateIpv6GoogleAccess)
  field(:purpose)
  field(:region)
  field(:role)
  field(:secondaryIpRanges, as: GoogleApi.Compute.V1.Model.SubnetworkSecondaryRange, type: :list)
  field(:selfLink)
  field(:stackType)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Subnetwork do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Subnetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Subnetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
