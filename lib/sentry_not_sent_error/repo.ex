defmodule SentryNotSentError.Repo do
  use Ecto.Repo,
    otp_app: :sentry_not_sent_error,
    adapter: Ecto.Adapters.Postgres
end
