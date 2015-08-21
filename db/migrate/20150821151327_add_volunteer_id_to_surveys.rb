class AddVolunteerIdToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :volunteer_id, :integer
  end
end
