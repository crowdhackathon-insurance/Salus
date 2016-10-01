class CreateIllnesses < ActiveRecord::Migration[5.0]
  def change
    create_table :illnesses do |t|
      t.text :symptom
      t.boolean :hospital
      t.json :data
      t.integer :appointment_id

      t.timestamps
    end
  end
end
