# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chatroll, Chatroll.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "t4wMm/dRlUGdHJ7Ypvmpa9hjSVuUn3dqg6+JueWhKtO75KQCmv47bUwCbdUjQ7vM",
  debug_errors: false,
  pubsub: [name: Chatroll.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :joken, config_module: Guardian.JWT
config :guardian, Guardian,
      issuer: "Chatroll",
      ttl: { 10, :days },
      verify_issuer: true,
      secret_key: "3Dc2D3Q9juvCVy2gpB464Yb33ZfxPjfz",
      serializer: Chatroll.GuardianSerializer
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
