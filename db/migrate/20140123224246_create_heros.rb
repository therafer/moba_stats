class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.string :stats
      t.string :items
      t.references :game
    end
  end
end
