defmodule Chatroll.ChatMessage do
  use Ecto.Model

  schema "chat_messages" do
    field :text, :string
    belongs_to :user, Chatroll.User

    timestamps
  end
end
