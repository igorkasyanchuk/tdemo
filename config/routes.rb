Translationdemo::Application.routes.draw do
  resource :user_session do 
    get 'logout'
  end
  
  resources :password_resets
  resources :users do
    resources :translations
  end

  root :to => "users#index"
end
