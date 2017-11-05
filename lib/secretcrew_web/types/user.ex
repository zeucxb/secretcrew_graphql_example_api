defmodule Secretcrew.Schema.Types.User do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Secretcrew.Repo

  object :user do
    field :id, :id
    field :name, :string
    field :email, :string
    field :posts, list_of(:post), resolve: assoc(:posts)
  end
end