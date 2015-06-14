require 'reform/form/coercion'

class VolunteerForm < Reform::Form
  include Coercion

  property :name
  property :age, type: Integer
  property :note
  property :email
end
