class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :check_ins
    has_many :check_outs
    has_many :attendance_times
    
    CHECKED_TYPE_VALUE = {
      0 => "not_available",
      1 => "available"
    }
    
    def checked_in?
      CHECKED_TYPE_VALUE[self.presence_status] == "available"
    end

end
