Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  get 'books/show'
  get 'books/create'
  get 'books/update'
  get 'books/delete'

  resources :books
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
