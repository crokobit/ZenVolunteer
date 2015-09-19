class AddBlackListToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :black_list, :boolean, default: false
  end
end
