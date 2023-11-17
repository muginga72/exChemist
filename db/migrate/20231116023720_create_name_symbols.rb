class CreateNameSymbols < ActiveRecord::Migration[7.1]
  def change
    create_table :name_symbols do |t|
      t.string :name_of_element
      t.string :symbo_of_element

      t.timestamps
    end
  end
end
