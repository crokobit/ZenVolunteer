class Volunteer < ActiveRecord::Base
  has_many :zen_period_volunteer_relationships
  has_many :zen_periods, through: :zen_period_volunteer_relationships
  has_many :votes
  has_one :survey

  def voted?(zen_period)
    votes.map(&:zen_period_id).include? zen_period.id
  end

  def vote_zen_period(zen_period_id)
    votes.create(zen_period_id: zen_period_id)
  end
end
