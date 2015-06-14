class AddLocationToZenPeriods < ActiveRecord::Migration
  def change
    add_column :zen_periods, :location, :string
  end
end
