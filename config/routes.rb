Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope '/api' do
    resources: :user, param: :_username
    get '/predictions', to: 'predictions#index'
    post '/predictions', to: 'predictions#create'
    get '/predictions/:id', to: 'predictions#show'
    put '/predictions/:id', to: 'predictions#update'
    delete '/predictions/:id', to: 'predictions#destroy'
  end
  scope '/auth' do
    post '/login', to: 'authentication#login'
  end
end
