class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.belongs_to :inventory

      t.string  :name
      t.string  :type
      t.integer :attack
      t.integer :defense
      t.integer :healing
      t.integer :required_level
      t.integer :durability
      t.boolean :consumable

      t.timestamps
    end
  end
end
