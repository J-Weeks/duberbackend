Rails.application.routes.draw do
  resources :dogs, except: [:new, :edit]
  resources :walkers, except: [:new, :edit]
  resources :walkers, except: [:new, :edit]
  resources :users, only: [:index, :show]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
end
