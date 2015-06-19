class ZenPeriod < ActiveRecord::Base
  extend Enumerize

  has_many :votes

  has_many :zen_period_volunteer_relationships
  has_many :volunteers, through: :zen_period_volunteer_relationships

  enumerize :location, in: [:ddm_chan, :tannan, :taitung]
end
