class Orientation < ActiveRecord::Base
  attr_accessible :meeting_id, :state, :user_id
  belongs_to :meeting
end
