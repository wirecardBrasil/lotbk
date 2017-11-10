class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.integer  :item_id
      t.integer  :quantity
      t.boolean  :equiped

      t.timestamps
    end
  end
end
