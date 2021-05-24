Rails.application.routes.draw do

  devise_for :users 
  resources :posts do 
    resources :likes 
  	resources :comments
  end

end
