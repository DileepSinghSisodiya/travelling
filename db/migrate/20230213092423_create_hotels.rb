class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :phon
      t.string :email
      t.string :city
      t.string :description
      t.string :image
      t.timestamps
    end
  end
end
