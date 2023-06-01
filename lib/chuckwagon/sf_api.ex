defmodule Chuckwagon.SFApi do
  @moduledoc """
  Entry point to perform a lookup using the SF-API
  """

  alias Chuckwagon.External.HttpClient

  require Logger

  @pattern "__LOOKUP__"
  @url "https://data.sfgov.org/api/id/rqzj-sfat.json?$query=select *, :id search '__LOOKUP__' limit 10&$$query_timeout_seconds=30"

  def call(lookup) do
    lookup
    |> replace()
    |> URI.encode()
    |> HttpClient.get()
    |> case do
      {:ok, response} ->
        process_response(response)

      {:error, reason} ->
        Logger.error("Error calling the SF-API. Error: #{inspect(reason)}")
        []
    end
  end

  defp process_response(%{status_code: status} = response) when status == 200 do
    case Jason.decode(response.body) do
      {:ok, wagons} ->
        Enum.map(wagons, fn wagon ->
          %{
            Wagon.new()
            | name: wagon["applicant"],
              address: wagon["address"],
              food_items: wagon["fooditems"]
          }
        end)

      {:error, reason} ->
        Logger.error("Error parsing the SF-API response. Error: #{inspect(reason)}")
        []
    end
  end

  defp process_response(_some_bad_result) do
    []
  end

  def replace(lookup) do
    String.replace(@url, @pattern, lookup)
  end
end
