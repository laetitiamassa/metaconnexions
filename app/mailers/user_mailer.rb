class UserMailer < ApplicationMailer
  default from: 'MetaConnexions <contact@metaconnexions.com>'
 
  def contact_sender(message, sender)
    @message = message
    @sender = @message.messagor_email
    #@url  = 'http://example.com/login'
    mail(
      to: @sender, 
      subject: 'Votre message à #{@message.messagee.full_name}'
      )
  end

  def contact_receiver(message, user)
    @message = message
    @user = user
    @url  = 'http://localhost:3000/messages'
    mail(
      to: @message.messagee.email, 
      subject: 'Une opportunité pour vous'
      )
  end
end
