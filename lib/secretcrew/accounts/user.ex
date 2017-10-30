defmodule Secretcrew.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Secretcrew.Accounts.User


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :active, :boolean, default: false
    field :avatar, :string
    field :email, :string
    field :facebookId, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email, :active, :facebookId, :avatar])
    |> validate_required([:name, :email, :active, :facebookId, :avatar])
  end
end
