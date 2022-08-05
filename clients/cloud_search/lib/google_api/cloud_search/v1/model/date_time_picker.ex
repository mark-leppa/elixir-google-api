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

defmodule GoogleApi.CloudSearch.V1.Model.DateTimePicker do
  @moduledoc """


  ## Attributes

  *   `label` (*type:* `String.t`, *default:* `nil`) - The label for the field, which is displayed to the user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the text field which is used in FormInput, and uniquely identifies this input.
  *   `onChange` (*type:* `GoogleApi.CloudSearch.V1.Model.FormAction.t`, *default:* `nil`) - Triggered when the user clicks on the Save, or Clear button from the date / time picker dialog. Will only be triggered if the value changed as a result of the Save / Clear operation.
  *   `timezoneOffsetDate` (*type:* `integer()`, *default:* `nil`) - The number representing the time-zone offset from UTC, in minutes. If set, the value_ms_epoch will be displayed in the specified time zone. If not set, it will use the user's timezone setting in client side.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the DateTimePicker.
  *   `valueMsEpoch` (*type:* `String.t`, *default:* `nil`) - The value to display which can be the default value before user input or previous user input. It is represented in milliseconds (Epoch time). - For DATE_AND_TIME type, the full epoch value is used. - For DATE_ONLY type, only date of the epoch time is used. - For TIME_ONLY type, only time of the epoch time is used. For example, you can set epoch time to 3 * 60 * 60 * 1000 to represent 3am.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :label => String.t() | nil,
          :name => String.t() | nil,
          :onChange => GoogleApi.CloudSearch.V1.Model.FormAction.t() | nil,
          :timezoneOffsetDate => integer() | nil,
          :type => String.t() | nil,
          :valueMsEpoch => String.t() | nil
        }

  field(:label)
  field(:name)
  field(:onChange, as: GoogleApi.CloudSearch.V1.Model.FormAction)
  field(:timezoneOffsetDate)
  field(:type)
  field(:valueMsEpoch)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.DateTimePicker do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.DateTimePicker.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.DateTimePicker do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
