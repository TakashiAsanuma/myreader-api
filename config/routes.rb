Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/swagger'
  resources :feeds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
