class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.float :weight
      t.float :height
      t.string :picture_url
      t.boolean :fit
      t.boolean :smoke

      t.timestamps
    end
  end
end
