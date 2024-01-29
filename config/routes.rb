Rails.application.routes.draw do
  devise_for :users
  get 'blog_post/new', to: 'blog_post#new', as: :new_blog_post
  get 'blog_post/:id', to: 'blog_post#show', as: :blog_post
  get 'blog_post/:id/edit', to: 'blog_post#edit', as: :edit_blog_post
  patch 'blog_post/:id', to: 'blog_post#update'
  delete 'blog_post/:id', to: 'blog_post#destroy'
  get 'blog_posts/index'
  post 'blog_posts', to: 'blog_post#create', as: :blog_posts
  
  # resources :blog_post
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "blog_post#index"
end
