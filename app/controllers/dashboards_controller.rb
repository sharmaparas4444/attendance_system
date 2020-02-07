class DashboardsController < ApplicationController
	def index 
		@employees = Employee.get_record_with_type('Employee')
	end

	def check_in
		current_employee.check_ins.create
		current_employee.update_attribute('presence_status', 1)
		redirect_to dashboards_path
	end

	def check_out
		current_employee.check_outs.create
		current_employee.update_attribute('presence_status', 0)
		redirect_to dashboards_path
	end
end
