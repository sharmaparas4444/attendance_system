class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :check_ins
  has_many :check_outs
  has_many :attendance_times

  scope :except_admins, -> { where.not(type: "Admin") }
  
  STATUSES = {
    0 => "Not_Available",
    1 => "Available"
  }
  
  def is_checked_in?
    self.get_presence_status == "Available"
  end

  def is_checked_out?
    self.get_presence_status == "Not_Available"
  end

  def get_presence_status
    return STATUSES[self.presence_status]
  end

  def check_in!
    self.update_column(:presence_status, 1)
  end

  def check_out!
     self.update_column(:presence_status, 0)
  end

end
