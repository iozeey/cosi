class AddAreaToLocation < ActiveRecord::Migration[5.1]
  def self.up
  	add_column :locations, :area, :json
  end
  def self.down
  	remove_column :locations, :area, :json
  end
end
