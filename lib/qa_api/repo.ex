defmodule QaApi.Repo do
  use Ecto.Repo,
    otp_app: :qa_api,
    adapter: Ecto.Adapters.Postgres
end
