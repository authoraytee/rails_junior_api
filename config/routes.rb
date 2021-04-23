# frozen_string_literal: true

require 'sidekiq'
require 'sidekiq/web'

Rails.application.routes.draw do
  # Sidekiq ----------------------------------------------------------
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == 'admin' && password == 'admin'
  end
  mount Sidekiq::Web => '/sidekiq'

  # CRUD Operations -------------------------------------------------
  # namespace 'crud' do
  #resources :diaries, controller: 'diaries_crud'

  # end
  get '/diaries/:id', to: 'crud/diaries_crud#show'
  get '/diaries/', to: 'crud/diaries_crud#index'
  get '/diaries/new', to: 'crud/diaries_crud#new'

  # resources :diaries, controller: 'diaries_crud'
  # resources :notes

  # API --------------------------------------------------------------
  namespace 'api' do
    namespace 'v1' do
      resources :diaries, controller: 'diaries_api'
      resources :notes, controller: 'notes_api'
    end
  end
end
