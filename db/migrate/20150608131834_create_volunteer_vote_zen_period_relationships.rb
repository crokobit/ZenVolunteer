class CreateVolunteerVoteZenPeriodRelationships < ActiveRecord::Migration
  def change
    create_table :volunteer_vote_zen_period_relationships do |t|
      t.integer :zen_period_id
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
