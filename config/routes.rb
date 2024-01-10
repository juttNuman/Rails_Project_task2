Rails.application.routes.draw do
  devise_for :users
 root "arthurs#index" 
 resources :arthurs do
  resources :books
end
get "/allbooks" , to: "books#index"
get "/search"   , to: "books#search"



end
