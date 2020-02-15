module MessagesHelper
	def get_conversation_between(sender, recipient)
		# Message.where((:sender_id => sender.id or :sender_id => recipient.id ) and (:recipient_id => sender.id or :recipient_id => recipient_id.id )).reverse
		Message.where("sender_id = ? and recipient_id = ? or sender_id = ? and recipient_id = ?", sender.id, recipient.id, recipient.id, sender.id)
	end
end
