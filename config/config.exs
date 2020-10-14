# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :diff_problems, DiffProblemsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bAzpkq1Ym5Sl1osIFwC8yqpBnv4HRWdZmjWPXua0gNPN0s+Mzu5fG/nbAonRZYTx",
  render_errors: [view: DiffProblemsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DiffProblems.PubSub,
  live_view: [signing_salt: "3M98eswM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
