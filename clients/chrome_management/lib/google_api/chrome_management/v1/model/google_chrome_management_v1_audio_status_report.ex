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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport do
  @moduledoc """
  Audio report.

  ## Attributes

  *   `inputDevice` (*type:* `String.t`, *default:* `nil`) - Output only. Active input device's name.
  *   `inputGain` (*type:* `integer()`, *default:* `nil`) - Output only. Active input device's gain in [0, 100].
  *   `inputMute` (*type:* `boolean()`, *default:* `nil`) - Output only. Is active input device mute or not.
  *   `outputDevice` (*type:* `String.t`, *default:* `nil`) - Output only. Active output device's name.
  *   `outputMute` (*type:* `boolean()`, *default:* `nil`) - Output only. Is active output device mute or not.
  *   `outputVolume` (*type:* `integer()`, *default:* `nil`) - Output only. Active output device's volume in [0, 100].
  *   `reportTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp of when the sample was collected on device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputDevice => String.t() | nil,
          :inputGain => integer() | nil,
          :inputMute => boolean() | nil,
          :outputDevice => String.t() | nil,
          :outputMute => boolean() | nil,
          :outputVolume => integer() | nil,
          :reportTime => DateTime.t() | nil
        }

  field(:inputDevice)
  field(:inputGain)
  field(:inputMute)
  field(:outputDevice)
  field(:outputMute)
  field(:outputVolume)
  field(:reportTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1AudioStatusReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end