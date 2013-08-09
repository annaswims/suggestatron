class Game < ActiveRecord::Base
  attr_accessible :duration, :genre_id, :max_players, :min_players, :name, :play_style_id
end
