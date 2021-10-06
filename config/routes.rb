Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :users

    namespace :residents do 
      resources :vehicles, :work_orders, :complaints, :pets
    end
end
