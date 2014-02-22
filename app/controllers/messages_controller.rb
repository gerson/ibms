class MessagesController < ApplicationController

  def create
    @message = Message.new(params[:message])
    @error = true
    if @message.valid?
      ContactMailer.contact_email(params[:message]).deliver
      @error = false
      @result = 'Su mensaje ha sido enviado exitosamente.'
    else
      @result = @message.errors.full_messages.to_sentence
    end
  end
end

