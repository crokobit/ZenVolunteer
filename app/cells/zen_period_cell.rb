class ZenPeriodCell < Cell::ViewModel
  def show
    @current_user = @options[:current_user]
    render
  end
end
