Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :records do
    resources :food_entries, only: [ :new, :create, :destroy ]
  end
end
