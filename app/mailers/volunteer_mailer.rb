class VolunteerMailer < ApplicationMailer
  default from: "from@example.com"

  def ask_for_voting_email(user)
    @volunteer = user
    mail(to: @volunteer.email, subject: 'Sample Email')
  end
end
