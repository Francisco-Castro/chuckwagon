defmodule Chuckwagon.Repo do
  use Ecto.Repo,
    otp_app: :chuckwagon,
    adapter: Ecto.Adapters.Postgres
end
