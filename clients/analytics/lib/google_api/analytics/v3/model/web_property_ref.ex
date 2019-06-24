# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Analytics.V3.Model.WebPropertyRef do
  @moduledoc """
  JSON template for a web property reference.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID to which this web property belongs.
  *   `href` (*type:* `String.t`, *default:* `nil`) - Link for this web property.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Web property ID of the form UA-XXXXX-YY.
  *   `internalWebPropertyId` (*type:* `String.t`, *default:* `nil`) - Internal ID for this web property.
  *   `kind` (*type:* `String.t`, *default:* `analytics#webPropertyRef`) - Analytics web property reference.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this web property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :href => String.t(),
          :id => String.t(),
          :internalWebPropertyId => String.t(),
          :kind => String.t(),
          :name => String.t()
        }

  field(:accountId)
  field(:href)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.WebPropertyRef do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.WebPropertyRef.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.WebPropertyRef do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
