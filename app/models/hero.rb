class Hero < ActiveRecord::Base
  belongs_to :game
  has_and_belongs_to_many :items
  attr_accessor :item_ids

  def item_ids=(ids)
    items << ids
  end
end
