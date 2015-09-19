class SurveysController < ApplicationController
  def new
    @volunteer = Volunteer.find(params[:volunteer_id])
    @survey = @volunteer.survey || Survey.new
  end

  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @survey = @volunteer.survey || Survey.new

    @survey.update(survey_param)
    @survey.volunteer = @volunteer
    @survey.save

    redirect_to zen_periods_url(volunteer_id: @volunteer.id)
  end

  # TODO
  def update
    @volunteer = Volunteer.find(params[:volunteer_id])
    @survey = @volunteer.survey || Survey.new

    @survey.update(survey_param)
    @survey.volunteer = @volunteer
    @survey.save

    redirect_to zen_periods_url(volunteer_id: @volunteer.id)
  end

  private
  def survey_param
    params.require(:survey).permit!
  end
end
