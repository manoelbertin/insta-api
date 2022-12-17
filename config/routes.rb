Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json} do 
    resources :tokens, only: [:create]

    resource :user, only: %i[show create update]
  end
  resources :posts do
    resources :comments
  end
end
