class AddVolunteerIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :volunteer_id, :integer
  end
end
