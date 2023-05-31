defmodule ChuckwagonWeb.MainLiveTest do
  use ChuckwagonWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Main render" do
    test "renders div", %{conn: conn} do
      {:ok, _lv, html} = live(conn, ~p"/")
      assert html =~ "I am a simple div"
    end
  end
end
