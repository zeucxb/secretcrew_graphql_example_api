defmodule Secretcrew.Schema do
  use Absinthe.Schema
  import_types Secretcrew.Schema.Types.Viewer

  query do
    field :viewer, :viewer do
      resolve fn _, _ ->
        {:ok, %{}}
      end
    end
  end
end