class CreateZenPeriodVolunteerRelationships < ActiveRecord::Migration
  def change
    create_table :zen_period_volunteer_relationships do |t|
      t.integer :zen_period_id
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
