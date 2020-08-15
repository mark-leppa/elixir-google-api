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

defmodule GoogleApi.Dataflow.V1b3.Model.DerivedSource do
  @moduledoc """
  Specification of one of the bundles produced as a result of splitting a Source (e.g. when executing a SourceSplitRequest, or when splitting an active task using WorkItemStatus.dynamic_source_split), relative to the source being split.

  ## Attributes

  *   `derivationMode` (*type:* `String.t`, *default:* `nil`) - What source to base the produced source on (if any).
  *   `source` (*type:* `GoogleApi.Dataflow.V1b3.Model.Source.t`, *default:* `nil`) - Specification of the source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :derivationMode => String.t(),
          :source => GoogleApi.Dataflow.V1b3.Model.Source.t()
        }

  field(:derivationMode)
  field(:source, as: GoogleApi.Dataflow.V1b3.Model.Source)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.DerivedSource do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.DerivedSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.DerivedSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
