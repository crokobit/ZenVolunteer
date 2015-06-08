class Volunteer < ActiveRecord::Base
  has_many :zen_period_volunteer_relationships
  has_many :zen_periods, through: :zen_period_volunteer_relationships
end
