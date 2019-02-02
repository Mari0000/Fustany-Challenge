Rails.application.routes.draw do
  root to: 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :products do
      member do
        put :add_to_favourite
        put :remove_from_favourite
      end
    end
  end
  resources :favourits
end
