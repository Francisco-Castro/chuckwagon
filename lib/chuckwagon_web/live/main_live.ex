defmodule ChuckwagonWeb.MainLive do
  use ChuckwagonWeb, :live_view
  alias ChuckwagonWeb.Utils.EmojiesDict

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
              <%= EmojiesDict.call(wagon.food_items) %>
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
    wagons = Chuckwagon.SFApi.call(lookup)

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
