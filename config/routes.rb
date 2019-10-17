Rails.application.routes.draw do
  devise_for :users, path: 'users'
  resources :projects
  devise_for :housings, path: 'housings'
  devise_scope :housings do
    get 'projects/:project_id/sign_in' => 'housing/sessions#new', :as => :project_housing_sign_in
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
