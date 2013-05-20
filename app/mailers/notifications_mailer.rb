class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@keithmiketom.com"
  default :to => "info@keithmiketom.com"

  def new_message(message)
    @message = message
    mail(:subject => "[New Website Query from] #{message.subject}")
  end

end
