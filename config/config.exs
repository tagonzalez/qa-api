# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :qa_api,
  ecto_repos: [QaApi.Repo]

# Configures the endpoint
config :qa_api, QaApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7AdqVP0+MKnm2r7sR4m/wdXjjfxHA18oF8Dmc5MEZ7uEkmDTdVPvL5Av2gBvQa/R",
  render_errors: [view: QaApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: QaApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "9lRaKK9s"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
