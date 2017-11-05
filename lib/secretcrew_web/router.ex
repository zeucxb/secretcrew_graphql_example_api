defmodule SecretcrewWeb.Router do
  use SecretcrewWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SecretcrewWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
    resources "/posts", PostController, except: [:new, :edit]
  end

  forward "/graph", Absinthe.Plug,
    schema: Secretcrew.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Secretcrew.Schema
end
