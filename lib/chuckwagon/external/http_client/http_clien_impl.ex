defmodule Chuckwagon.External.HttpClientImpl do
  @moduledoc """
  Perform a GET request to an external URL.
  """

  @doc """
  Perform a GET request to an external URL.

  Returns the response from the external URL
  """
  @spec get(binary) ::
          {:error, HTTPoison.Error.t()} | {:ok, HTTPoison.Response.t()}

  def get(url) do
    HTTPoison.get(url)
  end
end
