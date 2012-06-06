class Status < ActiveRecord::Base
  attr_accessible :reason, :statusCode, :thing_id, :user_id
  belongs_to :user
  belongs_to :thing
end
