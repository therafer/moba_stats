class Game < ActiveRecord::Base
  has_many :heros
  has_many :items
end
