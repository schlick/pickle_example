class Notifier < ActionMailer::Base
  
  def activation_notification(recipient)
    recipients recipient.email
    subject    "Account activated"
    body       :account => recipient
  end
  
end
