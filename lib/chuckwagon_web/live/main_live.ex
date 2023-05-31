defmodule ChuckwagonWeb.MainLive do
  use ChuckwagonWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>I am a simple div</div>
    """
  end
end
