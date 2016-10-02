Rails.application.routes.draw do
  resources :users

  post 'api/update_user_data/' => 'users#update_user_data'
  post 'api/insert_feeling/' => 'users#insert_feeling'
  post 'api/make_appointment/' => 'users#make_appointment'
  post 'api/get_hearth_rate/' => 'users#get_hearth_rate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':user_token/' => 'home#index'
  root to: "home#index"
end
