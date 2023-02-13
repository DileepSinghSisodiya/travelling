class CreateHotelFeaturesMappings < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_features_mappings do |t|
      
      t.references :hotel
      t.references :features
      t.string :features_charges
      t.timestamps
    end
  end
end
