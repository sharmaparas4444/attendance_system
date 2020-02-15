class MessagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper
  def index
    @message = current_employee.sent_messages.new
    if current_employee.type != 'Admin'
      @recipient = helpers.get_latest_admin
    end
  end

  def create
    @message = current_employee.sent_messages.new message_params
    if @message.save
      flash[:success] = "Your message has been sent!"
      redirect_to messages_path
    else
      flash[:failure] = "Please try again."
      redirect_to messages_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :recipient_id)
  end
end