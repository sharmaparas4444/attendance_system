module EmployeeHelper
	def get_email_using_id(id)
		Employee.where(:id => id).pluck(:email)
	end
end
