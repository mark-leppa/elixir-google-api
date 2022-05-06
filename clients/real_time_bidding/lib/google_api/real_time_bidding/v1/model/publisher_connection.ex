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

defmodule GoogleApi.RealTimeBidding.V1.Model.PublisherConnection do
  @moduledoc """
  An Open Bidding exchange's connection to a publisher. This is initiated by the publisher for the bidder to review. If approved by the bidder, this means that the bidder agrees to receive bid requests from the publisher.

  ## Attributes

  *   `biddingState` (*type:* `String.t`, *default:* `nil`) - Whether the publisher has been approved by the bidder.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which the publisher initiated a connection with the bidder (irrespective of if or when the bidder approves it). This is subsequently updated if the publisher revokes and re-initiates the connection.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. Publisher display name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the publisher connection. This follows the pattern `bidders/{bidder}/publisherConnections/{publisher}`, where `{bidder}` represents the account ID of the bidder, and `{publisher}` is the ads.txt/app-ads.txt publisher ID.
  *   `publisherPlatform` (*type:* `String.t`, *default:* `nil`) - Output only. Whether the publisher is an Ad Manager or AdMob publisher.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :biddingState => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :publisherPlatform => String.t() | nil
        }

  field(:biddingState)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:name)
  field(:publisherPlatform)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.PublisherConnection do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.PublisherConnection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.PublisherConnection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
