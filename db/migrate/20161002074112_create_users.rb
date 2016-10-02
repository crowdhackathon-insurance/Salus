class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :weight
      t.float :height
      t.boolean :smoke
      t.boolean :fit

      t.timestamps
    end
  end
end
