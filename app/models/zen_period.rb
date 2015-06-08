class ZenPeriod < ActiveRecord::Base
  has_many :zen_period_volunteer_relationships
  has_many :volunteers, through: :zen_period_volunteer_relationships
end
