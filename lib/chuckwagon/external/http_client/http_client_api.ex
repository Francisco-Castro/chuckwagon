defmodule Chuckwagon.External.HttpClientApi do
  @moduledoc """
  Behaviour to support calling the HTTPoison library.

  Using this behaviour allows the use of Mox to inject return
  types when testing.
  """

  @callback get(String.t()) :: {:ok, %HTTPoison.Response{}} | {:error, %HTTPoison.Error{}}
end
