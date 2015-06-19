class VolunteerMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    VolunteerMailer.ask_for_voting_email(Volunteer.first)
  end
end
