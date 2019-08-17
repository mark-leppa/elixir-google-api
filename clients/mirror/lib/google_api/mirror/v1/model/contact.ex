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

defmodule GoogleApi.Mirror.V1.Model.Contact do
  @moduledoc """
  A person or group that can be used as a creator or a contact.

  ## Attributes

  *   `acceptCommands` (*type:* `list(GoogleApi.Mirror.V1.Model.Command.t)`, *default:* `nil`) - A list of voice menu commands that a contact can handle. Glass shows up to three contacts for each voice menu command. If there are more than that, the three contacts with the highest priority are shown for that particular command.
  *   `acceptTypes` (*type:* `list(String.t)`, *default:* `nil`) - A list of MIME types that a contact supports. The contact will be shown to the user if any of its acceptTypes matches any of the types of the attachments on the item. If no acceptTypes are given, the contact will be shown for all items.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name to display for this contact.
  *   `id` (*type:* `String.t`, *default:* `nil`) - An ID for this contact. This is generated by the application and is treated as an opaque token.
  *   `imageUrls` (*type:* `list(String.t)`, *default:* `nil`) - Set of image URLs to display for a contact. Most contacts will have a single image, but a "group" contact may include up to 8 image URLs and they will be resized and cropped into a mosaic on the client.
  *   `kind` (*type:* `String.t`, *default:* `mirror#contact`) - The type of resource. This is always mirror#contact.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - Primary phone number for the contact. This can be a fully-qualified number, with country calling code and area code, or a local number.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority for the contact to determine ordering in a list of contacts. Contacts with higher priorities will be shown before ones with lower priorities.
  *   `sharingFeatures` (*type:* `list(String.t)`, *default:* `nil`) - A list of sharing features that a contact can handle. Allowed values are:  
      - ADD_CAPTION
  *   `source` (*type:* `String.t`, *default:* `nil`) - The ID of the application that created this contact. This is populated by the API
  *   `speakableName` (*type:* `String.t`, *default:* `nil`) - Name of this contact as it should be pronounced. If this contact's name must be spoken as part of a voice disambiguation menu, this name is used as the expected pronunciation. This is useful for contact names with unpronounceable characters or whose display spelling is otherwise not phonetic.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type for this contact. This is used for sorting in UIs. Allowed values are:  
      - INDIVIDUAL - Represents a single person. This is the default. 
      - GROUP - Represents more than a single person.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceptCommands => list(GoogleApi.Mirror.V1.Model.Command.t()),
          :acceptTypes => list(String.t()),
          :displayName => String.t(),
          :id => String.t(),
          :imageUrls => list(String.t()),
          :kind => String.t(),
          :phoneNumber => String.t(),
          :priority => integer(),
          :sharingFeatures => list(String.t()),
          :source => String.t(),
          :speakableName => String.t(),
          :type => String.t()
        }

  field(:acceptCommands, as: GoogleApi.Mirror.V1.Model.Command, type: :list)
  field(:acceptTypes, type: :list)
  field(:displayName)
  field(:id)
  field(:imageUrls, type: :list)
  field(:kind)
  field(:phoneNumber)
  field(:priority)
  field(:sharingFeatures, type: :list)
  field(:source)
  field(:speakableName)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Contact do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Contact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Contact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
