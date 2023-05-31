defmodule Chuckwagon.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ChuckwagonWeb.Telemetry,
      # Start the Ecto repository
      Chuckwagon.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Chuckwagon.PubSub},
      # Start Finch
      {Finch, name: Chuckwagon.Finch},
      # Start the Endpoint (http/https)
      ChuckwagonWeb.Endpoint
      # Start a worker by calling: Chuckwagon.Worker.start_link(arg)
      # {Chuckwagon.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Chuckwagon.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ChuckwagonWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
