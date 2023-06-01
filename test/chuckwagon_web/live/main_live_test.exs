defmodule ChuckwagonWeb.MainLiveTest do
  use ChuckwagonWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Main render" do
    test "renders welcome message", %{conn: conn} do
      {:ok, _lv, html} = live(conn, ~p"/")
      assert html =~ "The Chuckwagon"
    end
  end
end
