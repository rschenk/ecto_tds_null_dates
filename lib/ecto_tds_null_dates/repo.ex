defmodule EctoTdsNullDates.Repo do
  use Ecto.Repo,
    otp_app: :ecto_tds_null_dates,
    adapter: Ecto.Adapters.Tds
end
