class AttendanceTimeChannel < ApplicationCable::Channel
  def subscribed
    stream_from "attendance_time_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
