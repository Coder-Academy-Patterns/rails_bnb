class SupportController < ApplicationController
  def new
    @error_messages = []
  end
  
  def create
    from_email = params[:email]
    message = params[:message]
    @error_messages = []
    @error_messages << 'You must enter your email' if from_email.blank?
    @error_messages << 'You must enter a message' if message.blank?
    
    if @error_messages.empty?
      SupportMailer.contact_support(from_email, message).deliver_now
      render :success
    else
      render :new
    end
  end
end
