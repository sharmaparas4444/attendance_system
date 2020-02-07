class AdminsController < ApplicationController
	def show
		@employees = Employee.where(:type => 'Employee')
	end
end
