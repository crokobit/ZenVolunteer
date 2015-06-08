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
    end
  end

  def edit
    
  end

  def update
    
  end
  
  def destroy
    
  end
end
