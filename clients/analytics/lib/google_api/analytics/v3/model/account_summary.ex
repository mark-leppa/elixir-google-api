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

defmodule GoogleApi.Analytics.V3.Model.AccountSummary do
  @moduledoc """
  JSON template for an Analytics AccountSummary. An AccountSummary is a lightweight tree comprised of properties/profiles.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Account ID.
  *   `kind` (*type:* `String.t`, *default:* `analytics#accountSummary`) - Resource type for Analytics AccountSummary.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Account name.
  *   `starred` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this account is starred or not.
  *   `webProperties` (*type:* `list(GoogleApi.Analytics.V3.Model.WebPropertySummary.t)`, *default:* `nil`) - List of web properties under this account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :starred => boolean(),
          :webProperties => list(GoogleApi.Analytics.V3.Model.WebPropertySummary.t())
        }

  field(:id)
  field(:kind)
  field(:name)
  field(:starred)
  field(:webProperties, as: GoogleApi.Analytics.V3.Model.WebPropertySummary, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.AccountSummary do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.AccountSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.AccountSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
