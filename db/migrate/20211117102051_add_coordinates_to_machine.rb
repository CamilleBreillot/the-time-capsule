class AddCoordinatesToMachine < ActiveRecord::Migration[6.0]
  def change
    add_column :machines, :latitude, :float
    add_column :machines, :longitude, :float
  end
end
