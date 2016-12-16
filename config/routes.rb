Rails.application.routes.draw do



  root 'welcome#index'

  get '/about', to: 'welcome#about'

  get '/contact', to: 'welcome#contact'

  resources :shipments

  get '/search', to: 'shipments#search'

  get '/track', to: 'shipments#track'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
