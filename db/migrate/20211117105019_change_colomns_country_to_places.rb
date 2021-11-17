class ChangeColomnsCountryToPlaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :machines, :country, :string
    add_column :machines, :place, :string
  end
end
