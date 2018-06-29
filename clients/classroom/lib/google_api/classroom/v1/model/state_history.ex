# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Classroom.V1.Model.StateHistory do
  @moduledoc """
  The history of each state this submission has been in.

  ## Attributes

  - actorUserId (String.t): The teacher or student who made the change Defaults to: `null`.
  - state (String.t): The workflow pipeline stage. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, CREATED, TURNED_IN, RETURNED, RECLAIMED_BY_STUDENT, STUDENT_EDITED_AFTER_TURN_IN]
  - stateTimestamp (DateTime.t): When the submission entered this state. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actorUserId => any(),
          :state => any(),
          :stateTimestamp => DateTime.t()
        }

  field(:actorUserId)
  field(:state)
  field(:stateTimestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.StateHistory do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.StateHistory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.StateHistory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
