class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.belongs_to :inventory, index: true

      t.string  :name
      t.integer :experience
      t.integer :level
      t.integer :health
      t.integer :attack_pwr
      t.integer :defense_pwr
      t.integer :gold

      t.timestamps
    end
  end
end
