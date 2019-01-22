Rails.application.routes.draw do
  resources :tasks do
    resources :task_items
  end
  devise_for :users
  resources :events do
    resources :todos do
      member do
        patch :complete
      end
    end
    resources :comments do
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
