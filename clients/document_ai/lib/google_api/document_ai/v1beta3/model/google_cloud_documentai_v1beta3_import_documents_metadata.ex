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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata do
  @moduledoc """
  Metadata of the import document operation.

  ## Attributes

  *   `commonMetadata` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3CommonOperationMetadata.t`, *default:* `nil`) - The basic metadata of the long-running operation.
  *   `importConfigValidationResults` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult.t)`, *default:* `nil`) - Validation statuses of the batch documents import config.
  *   `individualImportStatuses` (*type:* `list(GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus.t)`, *default:* `nil`) - The list of response details of each document.
  *   `totalDocumentCount` (*type:* `integer()`, *default:* `nil`) - Total number of the documents that are qualified for importing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonMetadata =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3CommonOperationMetadata.t()
            | nil,
          :importConfigValidationResults =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult.t()
            )
            | nil,
          :individualImportStatuses =>
            list(
              GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus.t()
            )
            | nil,
          :totalDocumentCount => integer() | nil
        }

  field(:commonMetadata,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3CommonOperationMetadata
  )

  field(:importConfigValidationResults,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult,
    type: :list
  )

  field(:individualImportStatuses,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus,
    type: :list
  )

  field(:totalDocumentCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
