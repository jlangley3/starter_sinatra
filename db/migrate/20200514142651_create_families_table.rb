class CreateFamiliesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
    t.string :name
    end
  end
end
