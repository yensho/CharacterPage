class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.integer :level
      t.string :job
      t.string :race
      t.string :description
      t.string :spells
      t.timestamps
    end
  end
end
