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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus do
  @moduledoc """
  The status of a each individual document in the batch process.

  ## Attributes

  *   `humanReviewStatus` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewStatus.t`, *default:* `nil`) - The status of human review on the processed document.
  *   `inputGcsSource` (*type:* `String.t`, *default:* `nil`) - The source of the document, same as the input_gcs_source field in the request when the batch process started.
  *   `outputGcsDestination` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage output destination (in the request as DocumentOutputConfig.GcsOutputConfig.gcs_uri) of the processed document if it was successful, otherwise empty.
  *   `status` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleRpcStatus.t`, *default:* `nil`) - The status processing the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :humanReviewStatus =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewStatus.t() | nil,
          :inputGcsSource => String.t() | nil,
          :outputGcsDestination => String.t() | nil,
          :status => GoogleApi.DocumentAI.V1.Model.GoogleRpcStatus.t() | nil
        }

  field(:humanReviewStatus,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1HumanReviewStatus
  )

  field(:inputGcsSource)
  field(:outputGcsDestination)
  field(:status, as: GoogleApi.DocumentAI.V1.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
