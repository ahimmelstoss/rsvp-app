class Event < ActiveRecord::Base
  has_many :users, :through => :invites
  has_many :invites
end
