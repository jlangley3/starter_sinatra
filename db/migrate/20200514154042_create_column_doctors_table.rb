class CreateColumnDoctorsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :speciality, :string
    add_column :doctors, :biography, :string
  end
end
