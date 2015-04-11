class AddNewColumnsToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :av_land, :int
    add_column :buildings, :av_bldg, :int
    add_column :buildings, :av_total, :int
    add_column :buildings, :land_sf, :int
    add_column :buildings, :yr_built, :int
    add_column :buildings, :gross_area, :int
    add_column :buildings, :living_area, :int
    add_column :buildings, :num_floors, :int
    add_column :buildings, :structure_class, :string
    add_column :buildings, :location, :string
  end
end
