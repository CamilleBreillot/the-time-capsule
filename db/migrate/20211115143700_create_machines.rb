class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :details
      t.string :country
      t.integer :price
      t.integer :period_century
      t.integer :period_specific
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
