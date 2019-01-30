Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do  
    resources :products do 
      member do 
        put :add_to_favourite
      end 
    end
  end
end
