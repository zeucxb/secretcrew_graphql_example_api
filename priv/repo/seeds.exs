# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Secretcrew.Repo.insert!(%Secretcrew.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Secretcrew.Repo
alias Secretcrew.Accounts.User
alias Secretcrew.Feed.Post

# Create 10 seed users

for _ <- 1..10 do
  user = Repo.insert!(%User{
    name: Faker.Name.name,
    email: Faker.Internet.safe_email
  })

  Repo.insert!(%Post{
    body: Faker.Lorem.sentences(%Range{first: 1, last: 3}) |> Enum.join("\n\n"),
    users_id: user.id # Pick random user for post to belong to
  })
end