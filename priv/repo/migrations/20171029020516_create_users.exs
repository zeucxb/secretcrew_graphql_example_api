defmodule Secretcrew.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :email, :string
      add :active, :boolean, default: false, null: false
      add :facebookId, :string
      add :avatar, :string

      timestamps()
    end

  end
end
