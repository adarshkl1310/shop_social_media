class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.string :shop_type
      t.string :shop_city
      t.string :business_day
      t.string :shop_timeing 
      t.string :delivery
      t.string :min_order
      t.string :description 
      t.timestamps
    end
  end
end
