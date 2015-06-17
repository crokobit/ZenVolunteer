class ReminderMailerPreview < ActionMailer::Preview
  def reminder_mailer_preview
    ReminderMailer.send_notification_letter(Volunteer.first)
  end
end
