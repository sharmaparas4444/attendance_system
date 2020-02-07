class EmployeesController < ApplicationController
	def show

	end

	def check_in
		current_employee.check_ins.create
		current_employee.update_attribute('presence_status', 1)
		redirect_to employees_show_path
	end

	def check_out
		current_employee.check_outs.create
		current_employee.update_attribute('presence_status', 0)
		redirect_to employees_show_path
	end
end
