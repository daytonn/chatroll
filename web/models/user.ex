defmodule Chatroll.User do
  use Ecto.Model

  schema "users" do
    field :email, :string
    field :password, :string

    timestamps
  end
end
