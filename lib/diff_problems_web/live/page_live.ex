defmodule DiffProblemsWeb.PageLive do
  use DiffProblemsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, status: nil)}
  end

  def handle_event("event_1", _params, socket) do
    send(self(), :event_2)
    {:noreply, assign(socket, status: :status_1)}
  end

  def handle_info(:event_2, socket) do
    {:noreply, assign(socket, status: :status_2)}
  end
end
