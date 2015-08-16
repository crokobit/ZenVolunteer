class VolunteerMailer < ApplicationMailer
  default from: "from@example.com"

  def ask_for_voting_mail(volunteer)
    mg_client = Mailgun::Client.new ENV['api_key']

    message_params = {:from    => 'test@ddm.tw',
                      :to      => volunteer.email,
                      :subject => 'Sample Mail using Mailgun API',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    Rails.logger.debug("#{ap message_params}")

    mg_client.send_message ENV['domain'], message_params
  end
end
