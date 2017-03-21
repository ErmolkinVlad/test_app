Rails.application.routes.draw do
  get 'home/index'

  resources :users do
    resources :game_sessions do
      get 'play', to: 'game_sessions#play'
    end
  end

  root 'users#index'
end
