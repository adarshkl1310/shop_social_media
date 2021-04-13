Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :homes do
   resources :homecomments
   end

   resources :shops do
   resources :shopcomments
   end
   resources :profiles
   resources :products  
   resources :messages
   get '/user' => 'homes#user'


end

