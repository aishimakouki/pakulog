Rails.application.routes.draw do
  devise_for :users
  resources :shops do
    collection do
      get 'top'
    end
    resources :reviews
  end
  root "shops#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
