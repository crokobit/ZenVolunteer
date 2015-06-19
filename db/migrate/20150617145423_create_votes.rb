class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :zen_period_id
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
