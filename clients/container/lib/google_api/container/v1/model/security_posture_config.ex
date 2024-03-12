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

defmodule GoogleApi.Container.V1.Model.SecurityPostureConfig do
  @moduledoc """
  SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.

  ## Attributes

  *   `mode` (*type:* `String.t`, *default:* `nil`) - Sets which mode to use for Security Posture features.
  *   `vulnerabilityMode` (*type:* `String.t`, *default:* `nil`) - Sets which mode to use for vulnerability scanning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mode => String.t() | nil,
          :vulnerabilityMode => String.t() | nil
        }

  field(:mode)
  field(:vulnerabilityMode)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.SecurityPostureConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.SecurityPostureConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.SecurityPostureConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
