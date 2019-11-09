Rails.application.routes.draw do
  root 'home#show'

  get 'home/show'
  get 'myaccount' => 'myaccount#show'

  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'
  post 'logout' => 'logout#logout'
end
