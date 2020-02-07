
class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	before_action :authenticate_employee!

	private
	def after_sign_in_path_for(resource)
		if resource.class.name == 'Admin'
			admin_path(:id => current_employee.id)
		else
	  		root_path
		end
	end
end
