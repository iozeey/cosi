class AddDeliverCosttoLocation < ActiveRecord::Migration[5.1]
  def self.up
  	add_column :locations, :inside_zone, :text
  	add_column :locations, :outsite_zone, :text
  end
  def self.down
	remove_column :locations, :inside_zone, :text
  	remove_column :locations, :outsite_zone, :text
  end
end
