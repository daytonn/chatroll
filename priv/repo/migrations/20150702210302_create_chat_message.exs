defmodule Chatroll.Repo.Migrations.CreateChatMessage do
  use Ecto.Migration

  def change do
    create table(:chat_messages) do
      add :text, :text
      add :user_id, references(:users)

      timestamps
    end
  end
end
