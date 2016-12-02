Rails.application.routes.draw do
  resources :sub_sectors
  resources :sectors
  resources :municipalities
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
