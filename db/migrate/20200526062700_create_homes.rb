class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :product_name
	  t.string :market_type
	  t.text   :description 
      t.timestamps
    end
  end
end
