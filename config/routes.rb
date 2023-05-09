Rails.application.routes.draw do
  root 'articles#index'
  get '/greeting', to: 'custom_pages#hello'

  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: "articles#show"

  resources :articles do
    resources :comments
  end

  # get '/comments', to: 'comments#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
