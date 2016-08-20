Rails.application.routes.draw do
  resources :bhaskaras
  root :to => 'bhaskaras#edit'
end
