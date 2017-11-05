defmodule Secretcrew.Schema.Types.Viewer do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: Secretcrew.Repo
  import_types Secretcrew.Schema.Types.User
  import_types Secretcrew.Schema.Types.Post

  object :viewer do
    field :users, list_of(:user), resolve: &Secretcrew.Accounts.UserResolver.all/2
    field :posts, list_of(:post), resolve: &Secretcrew.Feed.PostResolver.all/2
  end
end
