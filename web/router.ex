defmodule Chatroll.Router do
  use Chatroll.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  socket "/ws", Chatroll do
    channel "chats:*", ChatChannel
  end

  scope "/", Chatroll do
    pipe_through :browser # Use the default browser stack
    get "/chats", ChatController, :index
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Chatroll do
  #   pipe_through :api
  # end
end
