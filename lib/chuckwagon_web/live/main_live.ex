defmodule ChuckwagonWeb.MainLive do
  use ChuckwagonWeb, :live_view

  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        lookup: "",
        wagons: [],
        loading: false
      )

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>The Chuckwagon</h1>
    <h2>Find some Food</h2>
    <div id="search">
      <form phx-submit="search">
        <input
          type="text"
          name="lookup"
          value={@lookup}
          placeholder="Type food, location, etc"
          autofocus
          autocomplete="off"
          readonly={@loading}
        />

        <button>
          <img src="/images/search.svg" />
        </button>
      </form>
      <div :if={@loading} class="loader">Loading...</div>

      <div class="results">
        <ul>
          <li :for={wagon <- @wagons}>
            <div class="first-line">
            <div class="name">
              <%= wagon.name %>
            </div>
            <div class="address">
            <%= wagon.address %>
            </div>
            <%= wagon.food_items %>
            </div>
          </li>
        </ul>
      </div>
    </div>
    """
  end

  def handle_event("search", %{"lookup" => lookup}, socket) do
    send(self(), {:run_search, lookup})

    socket =
      assign(socket,
        lookup: lookup,
        wagons: [],
        loading: true
      )

    {:noreply, socket}
  end

  def handle_info({:run_search, lookup}, socket) do
    wagons =
      "https://data.sfgov.org/api/id/rqzj-sfat.json?$query=select *, :id search '#{lookup}' limit 100&$$query_timeout_seconds=30"
      |> URI.encode()
      |> HTTPoison.get()
      |> case do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} -> body |> Jason.decode!()
        _ -> []
      end
      |> Enum.map(fn wagon ->
        %{
          Wagon.new()
          | name: wagon["applicant"],
            address: wagon["address"],
            food_items: wagon["fooditems"]
        }
      end)


    socket =
      assign(socket,
        lookup: lookup,
        wagons: wagons,
        loading: false
      )

    {:noreply, socket}
  end
end

defmodule Wagon do
  defstruct name: "", address: "", food_items: ""

  def new() do
    %Wagon{}
  end
end
