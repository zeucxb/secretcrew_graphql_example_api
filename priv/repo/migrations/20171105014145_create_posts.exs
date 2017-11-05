defmodule Secretcrew.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :image, :string
      add :body, :text
      add :users_id, references(:users, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:posts, [:users_id])
  end
end
