import consumer from "./consumer"

consumer.subscriptions.create("AttendanceTimeChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
  	return $("tr[data-id='" + data.employee_id + "']").find('.user_attendance_status').text(data.status)
    // Called when there's incoming data on the websocket for this channel
  }
});
