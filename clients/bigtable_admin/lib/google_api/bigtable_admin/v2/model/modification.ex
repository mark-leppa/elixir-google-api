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

defmodule GoogleApi.BigtableAdmin.V2.Model.Modification do
  @moduledoc """
  A create, update, or delete of a particular column family.

  ## Attributes

  *   `create` (*type:* `GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.t`, *default:* `nil`) - Create a new column family with the specified schema, or fail if one already exists with the given ID.
  *   `drop` (*type:* `boolean()`, *default:* `nil`) - Drop (delete) the column family with the given ID, or fail if no such family exists.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the column family to be modified.
  *   `update` (*type:* `GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.t`, *default:* `nil`) - Update an existing column family to the specified schema, or fail if no column family exists with the given ID.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Optional. A mask specifying which fields (e.g. `gc_rule`) in the `update` mod should be updated, ignored for other modification types. If unset or empty, we treat it as updating `gc_rule` to be backward compatible.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :create => GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.t() | nil,
          :drop => boolean() | nil,
          :id => String.t() | nil,
          :update => GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:create, as: GoogleApi.BigtableAdmin.V2.Model.ColumnFamily)
  field(:drop)
  field(:id)
  field(:update, as: GoogleApi.BigtableAdmin.V2.Model.ColumnFamily)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.Modification do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.Modification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.Modification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
