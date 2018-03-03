Rails.application.routes.draw do
  get '/sign_up' => 'pages#sign_up'
  post '/sign_up' => 'pages#send_sign_up'

  get '/recipients' => 'pages#recipients'

  root 'pages#sign_up'
end
