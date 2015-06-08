class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.integer :age
      t.string :name
      t.text :note

      t.timestamps null: false
    end
  end
end
