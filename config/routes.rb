Rails.application.routes.draw do
  

  resources :providers do
  	resources :books
  end
  resources :purchases
  
  resources :plines
  root to: "welcome#index"
end
