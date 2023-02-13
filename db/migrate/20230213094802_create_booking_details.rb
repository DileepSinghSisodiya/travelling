class CreateBookingDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_details do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.string :charges

      t.timestamps
    end
  end
end
