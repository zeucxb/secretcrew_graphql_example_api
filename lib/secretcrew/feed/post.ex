defmodule Secretcrew.Feed.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Secretcrew.Feed.Post


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "posts" do
    field :body, :string
    field :image, :string
    belongs_to :users, Secretcrew.Accounts.User, foreign_key: :users_id

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:image, :body])
    |> validate_required([:image, :body])
  end
end
