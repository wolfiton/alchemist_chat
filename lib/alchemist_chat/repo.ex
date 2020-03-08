defmodule AlchemistChat.Repo do
  use Ecto.Repo,
    otp_app: :alchemist_chat,
    adapter: Ecto.Adapters.Postgres
end
