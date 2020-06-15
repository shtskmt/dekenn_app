Rails.application.routes.draw do
  get 'contacts/new',  to: 'contacts#new'
  post 'contacts/create'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#index'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  resources :posts, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
