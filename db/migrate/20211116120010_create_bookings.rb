class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :arrival_date
      t.date :departure_date
      t.decimal :booking_price
      t.boolean :booking_confirmed
      t.references  :user, foreign_key: true
      t.references  :machine, foreign_key: true

      t.timestamps
    end
  end
end
