defmodule Authex.User do
  use Authex.Web, :model

  schema "users" do
    field :name, :string
    field :surname, :string

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :surname])
    |> validate_required([:name, :surname])
  end
end
