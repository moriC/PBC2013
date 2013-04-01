class Camp < ActiveRecord::Base
  attr_accessible :cource_id, :user_id
  belongs_to :cource
end
