Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/posts', to: 'posts#index'
  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'
end
