defmodule Chuckwagon.External.HttpClient do
  @moduledoc """
  Perform a GET request to an external URL.

  During tests this will call a mock via the MOX library.

  The def_get_impl macro will in development and test mode perform
  an Application.get_env to obtain the module to call.

  In production this is replaced with a function call return the module.
  """

  @behaviour Chuckwagon.External.HttpClientApi

  import Chuckwagon.Helpers.DefGetImpl

  def_get_impl(:http_impl, impl: Chuckwagon.External.HttpClientImpl)

  @doc """
  Perform a GET request to an external URL.

  Returns the response from the external URL
  """
  def get(url) do
    http_impl().get(url)
  end
end
