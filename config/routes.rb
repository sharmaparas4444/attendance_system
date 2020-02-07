Rails.application.routes.draw do
    devise_for :employees
	root to: "employees#show"
	post '/employees/check_in', :to => 'employees#check_in'
	post '/employees/check_out', :to => 'employees#check_out'
	get  'employees/show', :to => 'employees#show'
	resources :admins

# devise_scope :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
