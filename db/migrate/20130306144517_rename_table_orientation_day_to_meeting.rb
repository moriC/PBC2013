class RenameTableOrientationDayToMeeting < ActiveRecord::Migration
  def up
  	rename_table :orientation_days, :meetings
  end

  def down
  	rename_table :meetings, :orientation_days
  end
end
