# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :alchemist_chat,
  ecto_repos: [AlchemistChat.Repo]

# Configures the endpoint
config :alchemist_chat, AlchemistChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RtONBtnO2nsKz+ohIs+3G3fpPtFSgcOfx4TY796QlBJ/3ClY+k3z0YoQUDIQX/PI",
  render_errors: [view: AlchemistChatWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AlchemistChat.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "4MbX09Kf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
