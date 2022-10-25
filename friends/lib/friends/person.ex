defmodule Friends.Person do
  use Ecto.Schema

  schema "people" do
    field :first_name, :string
    field :last_name, :string
    field :age, :integer
    field :email, :string
    field :phone, :string
    field :address, :string
    field :city, :string
    field :state, :string
    field :zip, :string
    field :country, :string
    field :notes, :string

    timestamps()
  end

  def changeset(person, params \\ %{}) do
    person
    |> cast(params, [:first_name, :last_name])
    |> validate_required([:first_name, :last_name])
  end

end
