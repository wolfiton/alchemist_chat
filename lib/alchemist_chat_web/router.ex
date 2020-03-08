defmodule AlchemistChatWeb.Router do
  use AlchemistChatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AlchemistChatWeb do
    pipe_through :api
  end
end
