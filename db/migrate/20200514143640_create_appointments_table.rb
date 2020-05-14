class CreateAppointmentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :doctor_id
      t.integer :family_id
    end
  end
end
