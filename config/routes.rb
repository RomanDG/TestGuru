Rails.application.routes.draw do

  root to: 'tests#index'

  resources :tests do
    resources :questions, except: [:index], shallow: true do
      resources :answers, shallow: true, except: :index
    end

    member do
      post :start
    end
  end

  resources :test_passages, only: [:show, :update] do
    member do
      get :result
    end
  end
end
