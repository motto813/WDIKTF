require 'bcrypt'

class User < ActiveRecord::Base
  has_many :searches, class_name: "UserActor", foreign_key: :user_id
  has_many :favorite_actors, through: :searches, source: :actor

  validates_presence_of :username, :email, :password_hash
  validates_uniqueness_of :username, :email

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticated?(input_password)
    password == input_password
  end
end
