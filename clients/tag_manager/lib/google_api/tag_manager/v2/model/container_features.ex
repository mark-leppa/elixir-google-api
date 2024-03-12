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

defmodule GoogleApi.TagManager.V2.Model.ContainerFeatures do
  @moduledoc """


  ## Attributes

  *   `supportBuiltInVariables` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports built-in variables
  *   `supportClients` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports clients.
  *   `supportEnvironments` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports environments.
  *   `supportFolders` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports folders.
  *   `supportGtagConfigs` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports Google tag config.
  *   `supportTags` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports tags.
  *   `supportTemplates` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports templates.
  *   `supportTransformations` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports transformations.
  *   `supportTriggers` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports triggers.
  *   `supportUserPermissions` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports user permissions managed by GTM.
  *   `supportVariables` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports variables.
  *   `supportVersions` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports Container versions.
  *   `supportWorkspaces` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports workspaces.
  *   `supportZones` (*type:* `boolean()`, *default:* `nil`) - Whether this Container supports zones.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :supportBuiltInVariables => boolean() | nil,
          :supportClients => boolean() | nil,
          :supportEnvironments => boolean() | nil,
          :supportFolders => boolean() | nil,
          :supportGtagConfigs => boolean() | nil,
          :supportTags => boolean() | nil,
          :supportTemplates => boolean() | nil,
          :supportTransformations => boolean() | nil,
          :supportTriggers => boolean() | nil,
          :supportUserPermissions => boolean() | nil,
          :supportVariables => boolean() | nil,
          :supportVersions => boolean() | nil,
          :supportWorkspaces => boolean() | nil,
          :supportZones => boolean() | nil
        }

  field(:supportBuiltInVariables)
  field(:supportClients)
  field(:supportEnvironments)
  field(:supportFolders)
  field(:supportGtagConfigs)
  field(:supportTags)
  field(:supportTemplates)
  field(:supportTransformations)
  field(:supportTriggers)
  field(:supportUserPermissions)
  field(:supportVariables)
  field(:supportVersions)
  field(:supportWorkspaces)
  field(:supportZones)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.ContainerFeatures do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.ContainerFeatures.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.ContainerFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
