class CreateElements < ActiveRecord::Migration[7.1]
  def change
    create_table :elements do |t|
      t.string :name
      t.string :symbol
      t.integer :atomic_number
      t.float :atomic_mass

      t.timestamps
    end
  end
end
