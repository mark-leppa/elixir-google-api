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

defmodule GoogleApi.Content.V2.Api.Accounts do
  @moduledoc """
  API calls for all endpoints tagged `Accounts`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns information about the authenticated user.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountsAuthInfoResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_authinfo(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountsAuthInfoResponse.t()} | {:error, Tesla.Env.t()}
  def content_accounts_authinfo(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/accounts/authinfo")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.AccountsAuthInfoResponse{})
  end

  @doc """
  Claims the website of a Merchant Center sub-account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account whose website is claimed.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :overwrite (boolean()): Only available to selected merchants. When set to True, this flag removes any existing claim on the requested website by another account and replaces it with a claim from this account.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountsClaimWebsiteResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_claimwebsite(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountsClaimWebsiteResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_accounts_claimwebsite(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :overwrite => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/accounts/{accountId}/claimwebsite", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.AccountsClaimWebsiteResponse{})
  end

  @doc """
  Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single request.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :body (AccountsCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountsCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_custombatch(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountsCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_accounts_custombatch(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/accounts/batch")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.AccountsCustomBatchResponse{})
  end

  @doc """
  Deletes a Merchant Center sub-account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. This must be a multi-client account, and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :force (boolean()): Flag to delete sub-accounts with products. The default value is false.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def content_accounts_delete(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :force => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/{merchantId}/accounts/{accountId}", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Retrieves a Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Account.t()} | {:error, Tesla.Env.t()}
  def content_accounts_get(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/accounts/{accountId}", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.Account{})
  end

  @doc """
  Creates a Merchant Center sub-account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. This must be a multi-client account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :body (Account): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Account.t()} | {:error, Tesla.Env.t()}
  def content_accounts_insert(connection, merchant_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/accounts", %{
        "merchantId" => URI.encode_www_form(merchant_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.Account{})
  end

  @doc """
  Performs an action on a link between a Merchant Center account and another account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account that should be linked.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AccountsLinkRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountsLinkResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_link(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountsLinkResponse.t()} | {:error, Tesla.Env.t()}
  def content_accounts_link(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/accounts/{accountId}/link", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.AccountsLinkResponse{})
  end

  @doc """
  Lists the sub-accounts in your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. This must be a multi-client account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of accounts to return in the response, used for paging.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.AccountsListResponse{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.AccountsListResponse.t()} | {:error, Tesla.Env.t()}
  def content_accounts_list(connection, merchant_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/accounts", %{
        "merchantId" => URI.encode_www_form(merchant_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.AccountsListResponse{})
  end

  @doc """
  Updates a Merchant Center account. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :body (Account): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Account.t()} | {:error, Tesla.Env.t()}
  def content_accounts_patch(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/{merchantId}/accounts/{accountId}", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.Account{})
  end

  @doc """
  Updates a Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  - account_id (String.t): The ID of the account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :body (Account): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.Account{}} on success
  {:error, info} on failure
  """
  @spec content_accounts_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.Account.t()} | {:error, Tesla.Env.t()}
  def content_accounts_update(connection, merchant_id, account_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/{merchantId}/accounts/{accountId}", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "accountId" => URI.encode_www_form(account_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.Account{})
  end
end
