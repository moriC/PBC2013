class OrientationMeeting < ActiveRecord::Base
  attr_accessible :day, :state, :user_id
  belongs_to :user
end
