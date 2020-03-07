defmodule QaApiWeb.Router do
  use QaApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", QaApiWeb do
    pipe_through :api
  end
end
