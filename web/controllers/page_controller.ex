defmodule Chatroll.PageController do
  use Chatroll.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
