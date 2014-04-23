class AddSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name

      t.timestamps
    end

    add_column :monsters, :species_id, :integer
  end
end
