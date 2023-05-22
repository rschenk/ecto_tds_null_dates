defmodule EctoTdsNullDates.KaboomTest do
  use ExUnit.Case

  alias EctoTdsNullDates.{Kaboom, Repo}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "setting various columns to null" do
    {:ok, kaboom} =
      %Kaboom{}
      |> Kaboom.changeset(%{
        "name" => "name",
        "kaboomed_on" => ~D[2023-05-22]
      })
      |> Repo.insert()

    assert {:ok, kaboom} =
      kaboom
      |> Kaboom.changeset(%{"name" => nil})
      |> Repo.update()

    assert {:ok, kaboom} =
      kaboom
      |> Kaboom.changeset(%{"kaboomed_on" => nil})
      |> Repo.update()
  end
end
