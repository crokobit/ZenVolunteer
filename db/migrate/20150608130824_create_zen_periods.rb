class CreateZenPeriods < ActiveRecord::Migration
  def change
    create_table :zen_periods do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.string :zen_type

      t.timestamps null: false
    end
  end
end
