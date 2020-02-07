class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :check_ins
    has_many :check_outs
    has_many :attendance_times
    scope :get_record_with_type, -> (class_type) { where("type = ?", class_type) }
    
    STATUSES = {
      0 => "not_available",
      1 => "available"
    }
    
    def checked_in?
      STATUSES[self.presence_status] == "available"
    end

end
