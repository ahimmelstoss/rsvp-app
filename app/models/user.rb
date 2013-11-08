class User < ActiveRecord::Base
  has_many :events, :through => :invites
  has_many :invites
end
