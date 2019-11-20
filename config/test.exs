use Mix.Config

# Configure your database
config :sentry_not_sent_error, SentryNotSentError.Repo,
  username: "postgres",
  password: "postgres",
  database: "sentry_not_sent_error_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sentry_not_sent_error, SentryNotSentErrorWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
