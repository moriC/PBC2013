class CreateOrientationDays < ActiveRecord::Migration
  def change
    create_table :orientation_days do |t|
      t.date :meeting_date
      t.time :meeting_time
      t.string :meeting_place
      t.integer :max_number
      t.integer :state

      t.timestamps
    end
  end
end
