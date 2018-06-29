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

defmodule GoogleApi.ToolResults.V1beta3.Model.TestCaseReference do
  @moduledoc """
  A reference to a test case.  Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.

  ## Attributes

  - className (String.t): The name of the class. Defaults to: `null`.
  - name (String.t): The name of the test case.  Required. Defaults to: `null`.
  - testSuiteName (String.t): The name of the test suite to which this test case belongs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :className => any(),
          :name => any(),
          :testSuiteName => any()
        }

  field(:className)
  field(:name)
  field(:testSuiteName)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.TestCaseReference do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.TestCaseReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.TestCaseReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
