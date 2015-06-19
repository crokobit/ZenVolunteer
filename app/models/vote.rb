class Vote < ActiveRecord::Base
  belongs_to :zen_period
  belongs_to :volunteer
end
