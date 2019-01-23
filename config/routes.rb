Rails.application.routes.draw do
  get 'calendar/show'
  resource :calendar, only: [:show], controller: :calendar
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
