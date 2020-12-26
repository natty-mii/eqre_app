Rails.application.routes.draw do
  devise_for :users, controller: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    root to: 'users/sessions#new'
  end
  resources :items, only: [:index, :show]
  resources :events, only: [:new, :create]
end
