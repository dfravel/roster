defmodule Roster.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Roster.Accounts.User


  schema "users" do
    field :display_name, :string
    field :email, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :display_name, :password])
    |> validate_required([:email, :display_name, :password])
    |> unique_constraint(:email)
  end
end
