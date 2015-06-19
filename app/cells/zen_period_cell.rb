class ZenPeriodCell < Cell::ViewModel
  include CanCan::ControllerAdditions
  property :start_date, :end_date, :name, :zen_type

  attr_accessor :current_user
  def show
    @current_user = @options[:current_user]
    @volunteer = @options[:volunteer]
    render
  end

  def duration
    start_date.strftime("%Y%m%d") + ' ~ ' + end_date.strftime("%Y%m%d") 
  end
end
