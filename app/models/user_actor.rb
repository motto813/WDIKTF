class UserActor < ActiveRecord::Base
  belongs_to :user
  belongs_to :actor
end
