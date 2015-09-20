require 'reform/form/coercion'

class VolunteerForm < Reform::Form
  include Coercion

  property :name
  property :age, type: Integer
  property :note
  property :email
  property :black_list

  property :survey do
    property :join_zen_period_count
    property :volunteer_count
    property :training
  end

  validates :name, :age, :email, presence: true
end
