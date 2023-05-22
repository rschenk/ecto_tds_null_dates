defmodule EctoTdsNullDates.Kaboom do
  use Ecto.Schema
  import Ecto.Changeset

  schema("kabooms") do
    field(:name, :string)
    field(:kaboomed_on, :date)
  end

  def changeset(kaboom, attrs) do
    kaboom
    |> cast(attrs, [:name, :kaboomed_on])
  end
end
