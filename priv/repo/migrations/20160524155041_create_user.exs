defmodule Authex.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :surname, :string

      timestamps
    end

  end
end
