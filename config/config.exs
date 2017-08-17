# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :roster,
  ecto_repos: [Roster.Repo]

# Configures the endpoint
config :roster, RosterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "89zv5B0uUE8ZnnEJrT9azfZ1JPznQuu09bOWxlc5JjljQSwpL2dRH+4Y4/Bd3RNF",
  render_errors: [view: RosterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Roster.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
