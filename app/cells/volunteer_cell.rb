class VolunteerCell < Cell::ViewModel
  property :name, :age, :note
  def show
    render
  end

  def card_title
    "#{name} (#{age})"
  end
end
