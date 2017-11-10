class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.belongs_to :inventory

      t.string  :name
      t.integer :experience, default: 0
      t.integer :level, default: 1
      t.integer :health, default: 100
      t.integer :attack_pwr, default: 10
      t.integer :defense_pwr, default: 10
      t.integer :gold, default: 0

      t.timestamps
    end
  end
end
