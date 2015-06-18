class ZenPeriodsController < ApplicationController
  def index
    @zen_periods = ZenPeriod.all
  end
  
  def show
    @zen_period = ZenPeriod.find(params[:id])
  end

  def new
    @form = ZenPeriodForm.new(ZenPeriod.new)
  end

  def create
    @form = ZenPeriodForm.new(ZenPeriod.new)
    if @form.validate(params[:zen_period])
      @form.save
      redirect_to zen_periods_path
    else
      render :new
    end
  end

  def edit
    @form = ZenPeriodForm.new(ZenPeriod.find(params[:id]))
  end

  def update
    @form = ZenPeriodForm.new(ZenPeriod.find(params[:id]))
    if @form.validate(params[:zen_period])
      @form.save
      redirect_to zen_periods_path
    else
      render :edit
    end
  end
  
  def destroy
    @zen_period = ZenPeriod.find(params[:id])
    @zen_period.destroy
    redirect_to zen_periods_path
  end

  def vote
    current_user.vote_zen_period(params[:id])

    respond_to do |format|
      format.js
    end
  end

  def cancel_vote
    Vote.find_by(zen_period_id: params[:id]).delete

    respond_to do |format|
      format.js
    end
  end
end
