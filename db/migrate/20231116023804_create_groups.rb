class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.integer :group_number
      t.string :group_name

      t.timestamps
    end
  end
end
