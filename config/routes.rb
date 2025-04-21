Rails.application.routes.draw do
  root "moves#home"

  get "/rock", to: "moves#rock"
  get "/paper", to: "moves#paper"
  get "/scissors", to: "moves#scissors"
end
