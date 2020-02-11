Rails.application.routes.draw do
    devise_for :employees
	root to: "dashboards#index"
	post '/dashboards/check_in', :to => 'dashboards#check_in'
	post '/dashboards/check_out', :to => 'dashboards#check_out'
	resources :admins
	resources :dashboards
	mount ActionCable.server => '/cable'

# devise_scope :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
