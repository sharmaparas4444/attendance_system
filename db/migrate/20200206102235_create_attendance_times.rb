class CreateAttendanceTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :attendance_times do |t|
      t.string :type, null: false
      t.timestamps
    end
  end
end
