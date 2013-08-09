class PlayStyle < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :games
end
