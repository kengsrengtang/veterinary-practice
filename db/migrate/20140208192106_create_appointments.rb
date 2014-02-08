class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.date :date_visit
      t.string :pet
      t.string :customer
      t.boolean :reminder
      t.boolean :reason_for_visit

      t.timestamps
    end
  end
end
