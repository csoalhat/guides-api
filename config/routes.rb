Rails.application.routes.draw do
  devise_for :users
  namespace :v1, defaults: { format: :json } do 
    scope ':company_id' do
      resources :guides, only: [:index]

      resources :activities, only: [:create, :update] do 
        resources :guides, only: [:create, :update, :destroy]
      end
    end

    resources :companies, only: [:create, :update] 
    resource :sessions, only: [:create, :destroy]
    resources :users, only: [:create]
  end
end
