use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chatroll, Chatroll.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :chatroll, Chatroll.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "root",
  password: "",
  database: "chatroll_test",
  size: 1 # Use a single connection for transactional tests
