class Message < ApplicationRecord
	belongs_to :recipient, class_name: "Employee", foreign_key: "recipient_id"
   	belongs_to :sender, class_name: "Employee", foreign_key: "sender_id"
   	# scope :unread, -> { where read: false }
end
