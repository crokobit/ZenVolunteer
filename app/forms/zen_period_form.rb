class ZenPeriodForm < Reform::Form
  property :start_date
  property :end_date
  property :zen_type
  property :name
  property :volunteer_ids
  property :location

  def voted_volunteer_option
    Volunteer.includes(:votes).where(votes: { zen_period_id: id }).collect{ |volunteer| [volunteer.name, volunteer.id] }
  end
end
