class CreateZenPeriods < ActiveRecord::Migration
  def change
    create_table :zen_periods do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :name
      t.string :zen_type

      t.timestamps null: false
    end
  end
end
