defmodule SecretcrewWeb.Router do
  use SecretcrewWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SecretcrewWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end
end
