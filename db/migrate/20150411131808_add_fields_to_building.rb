class AddFieldsToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :facility_name, :string
    add_column :buildings, :building_num, :int
    add_column :buildings, :street_name, :string
    add_column :buildings, :street_type, :string
    add_column :buildings, :city_name, :string
    add_column :buildings, :state_name, :string
    add_column :buildings, :zip_code, :int
    add_column :buildings, :phone_number, :string
  end
end
