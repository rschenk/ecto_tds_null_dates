# EctoTdsNullDates

Basic repo to illustrate https://github.com/elixir-ecto/tds/issues/124

## Setup

Mssql is run in a docker container via `./start_docker.sh`, just like `elixir-ecto/tds`.

```sh
./start_docker.sh
mix deps.get
mix ecto.create
mix ecto.migrate
mix test
```

The interesting files are:

```
priv/repo/migrations/20230522171627_create_kabooms.exs
lib/ecto_tds_null_dates/kaboom.ex
test/ecto_tds_null_dates/kaboom_test.exs
```
