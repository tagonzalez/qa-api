use Mix.Config

# Configure your database
config :qa_api, QaApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "qa_api_test",
  hostname: "db",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :qa_api, QaApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
