# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :medium_graphql_api,
  ecto_repos: [MediumGraphqlApi.Repo]

# Configures the endpoint
config :medium_graphql_api, MediumGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H1iQutjCrjJZ4fGZz3s8G7pFX03tbNyZigqwgX9eOYl4a2+beoJn36JMt8AOLoym",
  render_errors: [view: MediumGraphqlApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MediumGraphqlApi.PubSub,
  live_view: [signing_salt: "uRcz2VVn"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
