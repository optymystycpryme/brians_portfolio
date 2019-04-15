Rails.application.routes.draw do
  resources :topics, only: %i[index show]
  devise_for  :users,
              path: '',
              path_names: {
                sign_in: 'login',
                sign_out: 'logout',
                sign_up:  'register'
              }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  get 'react-items', to: 'portfolios#react'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end
