defmodule Friends.Repo.Migrations.CreatePeople do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :first_name, :string
      add :last_name, :string
      add :age, :integer
      add :email, :string
      add :phone, :string
      add :address, :string
      add :city, :string
      add :state, :string
      add :zip, :string
      add :country, :string
      add :notes, :string

      timestamps()
    end
  end
end
