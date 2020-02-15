module AdminsHelper
	def get_employee_list
		return Employee.except_admins
	end

	def get_latest_admin
		Admin.last
	end
end
