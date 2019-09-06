Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :categories
  resources :sections
  resources :cities
	root to: 'sections#index'
	get 'sections/show_categories'
  get 'sections/:id/show_categories', to: 'sections#show_categories'
	get 'categories/:id/show_posts', to: 'categories#show_posts', as: 'category_show_posts'
	get 'cities/:id/show_posts', to: 'cities#show_posts', as: 'city_show_posts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
