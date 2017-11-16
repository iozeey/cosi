class RemoveRadiusFromLocation < ActiveRecord::Migration[5.1]
  def change
  	remove_column :locations, :radius
  end
end
