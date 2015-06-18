class User < ActiveRecord::Base
  has_many :votes
  belongs_to :volunteer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def voted?(zen_period)
    votes.map(&:zen_period_id).include? zen_period.id
  end

  def vote_zen_period(zen_period_id)
    votes.create(zen_period_id: zen_period_id)
  end
end
