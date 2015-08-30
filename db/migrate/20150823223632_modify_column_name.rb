class ModifyColumnName < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.integer :number
      t.remove  :weigth, :size, :contry
      t.integer :weight
      t.string  :height
      t.string  :picture
    end

  end
end
