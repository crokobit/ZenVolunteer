class CreateZenPeriods < ActiveRecord::Migration
  def change
    create_table :zen_periods do |t|
      t.datetime :start
      t.datetime :end
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
