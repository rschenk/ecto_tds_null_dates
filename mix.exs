defmodule EctoTdsNullDates.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_tds_null_dates,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EctoTdsNullDates.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.6"},
      {:tds, "~> 2.3"}
    ]
  end
end
