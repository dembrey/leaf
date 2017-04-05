Rails.application.routes.draw do

  scope :api do
    resources :employers do
      resources :jobs
    end

    resources :users

    resources :skills do
      resources :users, only: [:index, :show]
      resources :jobs, only: [:index, :show] do
        resources :employers, only: [:show]
        # maybe.
      end
    end

  end

  post 'login' => 'sessions#create'

end
