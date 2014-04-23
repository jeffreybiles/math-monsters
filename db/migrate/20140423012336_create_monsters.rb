class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :level
      t.integer :exp_to_next_level
      t.decimal :power
      t.decimal :max_hp
      t.decimal :defense

      t.timestamps
    end
  end
end
