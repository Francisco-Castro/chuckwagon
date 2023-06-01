Mox.defmock(MockHttp, for: Chuckwagon.External.HttpClientApi)
Application.put_env(:chuckwagon, :http_impl, MockHttp)
ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Chuckwagon.Repo, :manual)
