# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#   root to: "home#index"
# end





require 'sidekiq'
require 'sidekiq/web'

Rails.application.routes.draw do
  # Sidekiq ----------------------------------------------------------
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == 'admin' && password == 'admin'
  end
  mount Sidekiq::Web => '/sidekiq'




  # CRUD Operations -------------------------------------------------
  namespace 'crud' do
    resources :diaries, controller: 'diaries_crud'    
  end

  # get '/diaries/', to: 'crud/diaries_crud#index'
  # get '/diaries/new', to: 'crud/diaries_crud#new'
  # get '/diaries/:id', to: 'crud/diaries_crud#show'
  # get '/diaries/:id/edit', to: 'crud/diaries_crud#edit'

  #post '/diaries/', to: 'crud/diaries_crud#create'
  #delete '/diaries/:id', to: 'crud/diaries_crud#destroy'


  #   $ bin/rails routes
  #       Prefix Verb   URI Pattern                  Controller#Action
  #         root GET    /                            articles#index
  #     articles GET    /articles(.:format)          articles#index
  #  new_article GET    /articles/new(.:format)      articles#new
  #      article GET    /articles/:id(.:format)      articles#show
  #              POST   /articles(.:format)          articles#create
  # edit_article GET    /articles/:id/edit(.:format) articles#edit
  #              PATCH  /articles/:id(.:format)      articles#update
  #              DELETE /articles/:id(.:format)      articles#destroy




  # API --------------------------------------------------------------
  namespace 'api' do
    namespace 'v1' do
      resources :diaries, controller: 'diaries_api'
      resources :notes, controller: 'notes_api'
    end
  end

  root to: 'home#index'
end