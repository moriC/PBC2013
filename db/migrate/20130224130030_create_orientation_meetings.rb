class CreateOrientationMeetings < ActiveRecord::Migration
  def change
    create_table :orientation_meetings do |t|
      t.integer :user_id
      t.datetime :day
      t.integer :state

      t.timestamps
    end
    add_index :orientation_meetings, :user_id
  end
end
