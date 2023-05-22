import Config

config :ecto_tds_null_dates,
  ecto_repos: [EctoTdsNullDates.Repo]

config :ecto_tds_null_dates, EctoTdsNullDates.Repo,
  database: "ecto_tds_null_dates",
  username: "sa",
  password: "some!Password",
  hostname: "localhost"

if config_env() == :test do
  config :ecto_tds_null_dates, EctoTdsNullDates.Repo, pool: Ecto.Adapters.SQL.Sandbox
end
