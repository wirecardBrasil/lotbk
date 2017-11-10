class CreateCurrentStats < ActiveRecord::Migration[5.1]
  def change
    create_table :current_stats do |t|
      t.belongs_to :character

      t.integer :health
      t.integer :attack_pwr
      t.integer :defense_pwr
      t.integer :gold

      t.timestamps
    end
  end
end
