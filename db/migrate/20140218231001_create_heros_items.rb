class CreateHerosItems < ActiveRecord::Migration
  def change
    create_table :heros_items do |t|
      t.integer :hero_id
      t.integer :item_id
    end
  end
end
