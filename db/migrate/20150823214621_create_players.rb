class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :weigth
      t.integer :size
      t.string :position
      t.string :contry

      t.timestamps
    end
  end
end
