Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/v1/user'
  namespace :v1, defaults: { format: :json} do 

    resource :user, only: %i[show create update]

    resource :token, only:  [:create]

  end
  resources :posts do
    resources :comments
  end
end
