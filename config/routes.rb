Rails.application.routes.draw do
  resources :students, only: [:show, :index, :new, :create, :edit]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
