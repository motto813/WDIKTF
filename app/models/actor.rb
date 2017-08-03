class Actor < ActiveRecord::Base
  has_many :searches, class_name: "UserActor", foreign_key: :actor_id
  has_many :fans, through: :searches, source: :user

  validates_presence_of :name, :TMDB_id
  validates_uniqueness_of :TMDB_id
end
