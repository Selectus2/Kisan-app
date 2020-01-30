Rails.application.routes.draw do
  devise_for :farmers, :controllers => { registrations: 'farmers/registrations' }# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :farmer_instruments
  resources :instruments
  root :to => "farmer_instruments#index"
  #resources :farmers
end
