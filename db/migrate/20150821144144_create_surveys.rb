class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :volunteer_count
      t.integer :join_zen_period_count
      t.boolean :training

      t.timestamps null: false
    end
  end
end
