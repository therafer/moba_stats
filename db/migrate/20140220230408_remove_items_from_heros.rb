class RemoveItemsFromHeros < ActiveRecord::Migration
  def change
     remove_column :heros, :items, :text
  end
end
