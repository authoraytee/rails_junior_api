require 'sidekiq'
require 'sidekiq/web'

Rails.application.routes.draw do
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == 'admin' && password == 'admin'
  end
  mount Sidekiq::Web => "/sidekiq"

  namespace 'api' do
    namespace 'v1' do
      resources :diaries
      resources :notes
    end
  end
end