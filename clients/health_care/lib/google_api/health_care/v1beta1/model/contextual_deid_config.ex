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

defmodule GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig do
  @moduledoc """
  The fields that aren't marked `Keep` or `CleanText` in the `BASIC` profile are collected into a contextual phrase list. For fields marked `CleanText`, the process attempts to transform phrases matching these contextual entries. These contextual phrases are replaced with the token "[CTX]". This feature uses an additional InfoType during inspection.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ContextualDeidConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
