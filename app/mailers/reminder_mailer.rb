class ReminderMailer < ApplicationMailer
  default from: "from@example.com"

  def send_notification_letter(user)
    @user = user

    mail(to: @user.email, subject: 'Sample Email')
  end
end
