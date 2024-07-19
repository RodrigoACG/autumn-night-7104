Rails.application.routes.draw do
  root 'welcome#index'
  get 'search', to: 'search#index'

  namespace :api do 
    namespace :v1 do 
      get '/', to: 'user#index'
    end
  end
end
