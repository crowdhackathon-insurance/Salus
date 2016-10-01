class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :doctor_name
      t.datetime :date

      t.timestamps
    end
  end
end
