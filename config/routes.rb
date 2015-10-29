Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }, path_names: { 
    sign_in:      'login',
    sign_out:     'logout',
    registration: 'register'
  }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  root 'home#index'
end
