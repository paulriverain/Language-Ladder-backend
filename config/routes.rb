Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, :languages, :phrases
      post '/phrases/translate', to: 'phrases#translate_message'

      post '/auth', to: 'auth#create'

      get '/current_user', to: 'auth#show'

      # patch '/:current_user/update', to: 'users#update'

    end
  end

end
