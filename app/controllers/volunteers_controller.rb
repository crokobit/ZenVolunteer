class VolunteersController < ApplicationController
  before_action :authorize!

  def index
    @volunteers = Volunteer.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def new
    @form = VolunteerForm.new(Volunteer.new)
  end

  def create
    @form = VolunteerForm.new(Volunteer.new)

    if @form.validate(params[:volunteer])
      @form.save
      redirect_to volunteers_path
    else
      render :new
    end
  end

  def edit
    @form = VolunteerForm.new(Volunteer.find(params[:id]))
  end

  def update
    @form = VolunteerForm.new(Volunteer.find(params[:id]))

    if @form.validate(params[:volunteer])
      @form.save
      redirect_to volunteers_path
    else
      render :edit
    end
  end

  def destroy
    @volunteer = Volunteer.find(params[:id])

    @volunteer.destroy

    redirect_to volunteers_path
  end

  def mail
    volunteer = Volunteer.find(params[:id])
    VolunteerMailer.ask_for_voting_mail(volunteer)

    flash[:motice] = 'Sended!'
    redirect_to volunteers_path
  end

  def mail_all
    volunteers = Volunteer.all

    volunteers.each do |volunteer|
      VolunteerMailer.ask_for_voting_mail(volunteer)
    end

    flash[:motice] = 'Sended!'
    redirect_to volunteers_path
  end

  private
  def authorize!
    redirect_to root_path unless can? :manage, Volunteer
  end
end
