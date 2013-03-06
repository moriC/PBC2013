class Meeting < ActiveRecord::Base
  attr_accessible :max_number, :meeting_date, :meeting_place, :meeting_time, :state
  has_many :orientations
end
