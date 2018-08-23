Rails.application.routes.draw do

  resources :page_translations
  root "welcome#index"
  resources :pages

end
