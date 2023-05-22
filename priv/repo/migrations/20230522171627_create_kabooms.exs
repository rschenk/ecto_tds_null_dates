defmodule EctoTdsNullDates.Repo.Migrations.CreateKabooms do
  use Ecto.Migration

  def change do
    create table(:kabooms) do
      add :name, :string
      add :kaboomed_on, :date
    end
  end
end
