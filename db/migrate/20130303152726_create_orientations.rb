class CreateOrientations < ActiveRecord::Migration
  def change
    create_table :orientations do |t|
      t.integer :user_id
      t.integer :meeting_id
      t.integer :state

      t.timestamps
    end
  end
end
