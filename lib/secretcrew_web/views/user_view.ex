defmodule SecretcrewWeb.UserView do
  use SecretcrewWeb, :view
  alias SecretcrewWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      email: user.email,
      active: user.active,
      facebookId: user.facebookId,
      avatar: user.avatar}
  end
end
