class AddMoreColumnsToEmployee < ActiveRecord::Migration[6.0]
   def self.up
  	add_column :employees, :presence_status, :integer, :default => 0, :null => false
  	# add_column :employees, :employee_type_status, :integer, :default => 0, :null => false
  	add_column :employees, :type, :string, :default => 'Employee'
   end
   def self.down
    remove_column :employees, :presence_status
    remove_column :employees, :is_admin
  end
end
