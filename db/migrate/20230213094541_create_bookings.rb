class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :type
      t.string :amount
      t.datetime :check_in_time
      t.datetime :check_out_time
      t.references :hotel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
