Rails.application.routes.draw do
  resources :notifications, only: %i[create index]
end
