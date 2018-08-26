Rails.application.routes.draw do
  root to: redirect('/articles')

  resources :articles do
    resources :comments
  end

  resources :comments, only: [:index]
end
