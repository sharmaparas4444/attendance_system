class DashboardsController < ApplicationController
  def index 
  end

  def check_in
    if current_employee.check_ins.new.save
      current_employee.check_in!
      ActionCable.server.broadcast 'attendance_time_channel',
        status: t("generic.#{current_employee.get_presence_status}"),
        employee_id: current_employee.id
      # head :ok
    end
    redirect_to dashboards_path
  end

  def check_out
    if current_employee.check_outs.new.save
      current_employee.check_out!
      ActionCable.server.broadcast 'attendance_time_channel',
        status: t("generic.#{current_employee.get_presence_status}"),
        employee_id: current_employee.id
      # head :ok
    end
    redirect_to dashboards_path
  end
end
