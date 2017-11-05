defmodule Secretcrew.Accounts.UserResolver do
  alias Secretcrew.{Accounts.User, Repo}

  def all(_args, _info) do
    {:ok, Repo.all(User)}
  end
end