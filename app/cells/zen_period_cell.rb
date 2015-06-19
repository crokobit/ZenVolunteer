class ZenPeriodCell < Cell::ViewModel
  include CanCan::ControllerAdditions

  attr_accessor :current_user
  def show
    @current_user = @options[:current_user]
    render
  end
end
