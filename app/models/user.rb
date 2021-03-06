class User < ActiveRecord::Base
  has_many :votes
  belongs_to :volunteer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    email.present?
  end
end
