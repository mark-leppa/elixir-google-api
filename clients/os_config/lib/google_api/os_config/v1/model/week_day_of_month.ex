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

defmodule GoogleApi.OSConfig.V1.Model.WeekDayOfMonth do
  @moduledoc """
  Represents one week day in a month. An example is "the 4th Sunday".

  ## Attributes

  *   `dayOfWeek` (*type:* `String.t`, *default:* `nil`) - Required. A day of the week.
  *   `dayOffset` (*type:* `integer()`, *default:* `nil`) - Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second Tuesday of the month and the `day_offset` value is set to `3`, patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, patches are deployed five days before the second Tuesday of the month. Allowed values are in range [-30, 30].
  *   `weekOrdinal` (*type:* `integer()`, *default:* `nil`) - Required. Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dayOfWeek => String.t() | nil,
          :dayOffset => integer() | nil,
          :weekOrdinal => integer() | nil
        }

  field(:dayOfWeek)
  field(:dayOffset)
  field(:weekOrdinal)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.WeekDayOfMonth do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.WeekDayOfMonth.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.WeekDayOfMonth do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
