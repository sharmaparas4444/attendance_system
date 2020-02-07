class AddEmployeeIdToAttendanceTime < ActiveRecord::Migration[6.0]
	def self.up
	    add_column :attendance_times, :employee_id, :integer, :null => false
	end
  	def self.down
  		remove_column :attendance_times, :employee_id
  	end
end