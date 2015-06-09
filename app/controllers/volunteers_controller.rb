class VolunteersController < ApplicationController
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
end
