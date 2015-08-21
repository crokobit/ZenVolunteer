class VolunteerMailer < ApplicationMailer
  include ActionView::Helpers::UrlHelper
  default from: "from@example.com"

  def ask_for_voting_mail(volunteer)
    mg_client = Mailgun::Client.new ENV['api_key']
    @volunteer = volunteer

    text = %Q(
      請使用此連結登記能護之禪期
      #{link_to 'Link', new_volunteer_survey_url(@volunteer)}
    )

    message_params = {:from    => 'test@ddm.tw',
                      :to      => volunteer.email,
                      :subject => '請使用此連結登記能護之禪期',
                      :text    => text }

    mg_client.send_message ENV['domain'], message_params
  end
end
