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

defmodule GoogleApi.Analytics.V3.Model.CustomDataSourceChildLink do
  @moduledoc """


  ## Attributes

  *   `href` (*type:* `String.t`, *default:* `nil`) - Link to the list of daily uploads for this custom data source. Link to the list of uploads for this custom data source.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Value is "analytics#dailyUploads". Value is "analytics#uploads".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :href => String.t(),
          :type => String.t()
        }

  field(:href)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.CustomDataSourceChildLink do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.CustomDataSourceChildLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.CustomDataSourceChildLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
