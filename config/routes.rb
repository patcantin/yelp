Rails.application.routes.draw do
  resources :restaurants do
    # method to create new routes using ressources
    collection do
      get "top", to: "restaurants#top"
    end
    # method for new route including :id(restaurants/:id/chef)
    member do
      get "chef", to: "restaurants#chef"
    end
    # for ressources from reviwes in the url ex:(/reviews/:id/new)
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

end
