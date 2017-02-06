Rails.application.routes.draw do
  resources :has_ocupations
  resources :workers
  resources :ocupations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
