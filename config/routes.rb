Rails.application.routes.draw do
  namespace :admin do
    root to: "users#index"
    resources :users
    resources :articles
    resources :projects
  end

  devise_for :users
  resources :articles, only: %i[index show], param: :slug
  resources :projects, only: %i[index show], param: :slug
  resource :sitemap, only: :show

  # Pages
  get "/about-us", to: "pages#about_us"

  # Services
  get "/services/digital-discovery-and-seo", to: "services#digital_discovery_and_seo"
  get "/services/web-design-and-development", to: "services#web_design_and_development"
  get "/services/branding-and-design", to: "services#branding_and_design"
  get "/services/video-production", to: "services#video_production"
  get "/services/paid-search", to: "services#paid_search"
  get "/services/conversion-optimization", to: "services#conversion_optimization"
  get "/services/engagement-and-retargeting", to: "services#engagement_and_retargeting"
  get "/services/loyalty-programs", to: "services#loyalty_programs"

  # Public marketing homepage
  root to: "pages#index"
end
