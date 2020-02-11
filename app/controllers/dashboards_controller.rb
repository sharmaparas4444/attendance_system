class DashboardsController < ApplicationController
  def index 
  end

  def check_in
    current_employee.check_in!
    current_employee.update_attribute('presence_status', 1)
    redirect_to dashboards_path
  end

  def check_out
    current_employee.check_out!
    current_employee.update_attribute('presence_status', 0)
    redirect_to dashboards_path
  end
end
