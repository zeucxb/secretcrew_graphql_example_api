defmodule Secretcrew.Feed.PostResolver do
  alias Secretcrew.{Feed.Post, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(Post)}
  end
end