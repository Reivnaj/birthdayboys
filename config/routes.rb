Rails.application.routes.draw do
  get "inscription", to: "inscriptions#new"
  post "inscription", to: "inscriptions#create"

  post "user", to: "user#index"
  
  resources :user do
        patch :toggle_payed_status
  end
  
  root 'inscriptions#new'
end
 