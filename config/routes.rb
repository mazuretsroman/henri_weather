Rails.application.routes.draw do
  root 'locations#index'
  resources :locations do
    member do
      get :refresh
    end
  end
end
