# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sentry_not_sent_error,
  ecto_repos: [SentryNotSentError.Repo]

# Configures the endpoint
config :sentry_not_sent_error, SentryNotSentErrorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MlvW1dKtVKhXaW2I+ippS7YFQl28aWEQ7UkBP1Hip75HoCuIY4RXVbFZ14yNAfke",
  render_errors: [view: SentryNotSentErrorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SentryNotSentError.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :sentry,
  dsn: nil,
  enable_source_code_context: true,
  root_source_code_path:      File.cwd!,
  environment_name:           Mix.env(),
  included_environments:      [:dev]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
