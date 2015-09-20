require 'reform/form/coercion'
class ZenPeriodForm < Reform::Form
  property :start_date, type: Date
  property :end_date, type: Date
  property :zen_type
  property :name
  property :volunteer_ids
  property :location

  validates :start_date, :end_date, :name, :location, presence: true

  def voted_volunteer_option
    Volunteer.includes(:votes).where(black_list: false, votes: { zen_period_id: id }).collect{ |volunteer| [volunteer.name, volunteer.id] }
  end
end
