Rails.application.routes.draw do
  root to: 'application#index', via: [:post, :get]
end