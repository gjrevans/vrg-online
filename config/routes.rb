Rails.application.routes.draw do
  namespace :admin do
    root to: "users#index"
    resources :users
    resources :articles
  end

  devise_for :users
  resources :articles, only: %i[index show], param: :slug
  resource :sitemap, only: :show

  # Public marketing homepage
  root to: "pages#index"
end
